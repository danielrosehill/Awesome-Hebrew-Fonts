#!/usr/bin/env bash
# Awesome-Hebrew-Fonts installer
# Reads fonts.json and installs TTFs (Hebrew + Latin subsets) from the
# google-webfonts-helper API into ~/.local/share/fonts/google/<family>/.
#
# Usage:
#   ./install.sh                 # interactive menu
#   ./install.sh --all           # all fonts in fonts.json
#   ./install.sh --all-hebrew    # every Google Font with a Hebrew subset
#   ./install.sh --category <c>...   # one or more categories
#   ./install.sh --font <id>...      # one or more gwfh ids
#   ./install.sh --list          # print fonts.json contents
#   ./install.sh --dry-run       # combine with any of the above
#
# Requires: bash, curl, unzip, jq.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FONTS_JSON="${SCRIPT_DIR}/fonts.json"
DEST_ROOT="${HOME}/.local/share/fonts/google"
GWFH_API="https://gwfh.mranftl.com/api/fonts"
SUBSETS="hebrew,latin"
FORMATS="ttf"
VARIANTS="regular"

dry_run=0
mode=""
declare -a sel_categories=()
declare -a sel_fonts=()

usage() {
    sed -n '2,16p' "$0" | sed 's/^# \{0,1\}//'
}

require() { command -v "$1" >/dev/null || { echo "Missing dependency: $1" >&2; exit 1; }; }
require curl; require unzip; require jq

[[ -f "$FONTS_JSON" ]] || { echo "fonts.json not found at $FONTS_JSON" >&2; exit 1; }

while [[ $# -gt 0 ]]; do
    case "$1" in
        --all)         mode="all"; shift ;;
        --all-hebrew)  mode="all-hebrew"; shift ;;
        --list)        mode="list"; shift ;;
        --dry-run)     dry_run=1; shift ;;
        --category)
            mode="category"; shift
            while [[ $# -gt 0 && "$1" != --* ]]; do sel_categories+=("$1"); shift; done
            ;;
        --font)
            mode="font"; shift
            while [[ $# -gt 0 && "$1" != --* ]]; do sel_fonts+=("$1"); shift; done
            ;;
        -h|--help)     usage; exit 0 ;;
        *) echo "Unknown arg: $1" >&2; usage; exit 1 ;;
    esac
done

# ---------- helpers ----------

list_categories() {
    jq -r '.categories | to_entries[] | "\(.key)\t\(.value.label)"' "$FONTS_JSON"
}

list_fonts() {
    jq -r '.fonts[] | "\(.gwfh_id)\t\(.category)\t\(.name)"' "$FONTS_JSON"
}

ids_all_curated() {
    jq -r '.fonts[].gwfh_id' "$FONTS_JSON"
}

ids_by_category() {
    local cat="$1"
    jq -r --arg c "$cat" '.fonts[] | select(.category==$c) | .gwfh_id' "$FONTS_JSON"
}

ids_all_hebrew() {
    # Pull the full gwfh font catalog and filter to families with a Hebrew subset.
    curl -fsSL "${GWFH_API}?subsets=hebrew" | jq -r '.[].id'
}

name_for_id() {
    jq -r --arg id "$1" '.fonts[] | select(.gwfh_id==$id) | .name' "$FONTS_JSON"
}

install_one() {
    local id="$1"
    local display
    display="$(name_for_id "$id")"
    [[ -z "$display" ]] && display="$id"

    local dest="${DEST_ROOT}/${id}"
    if [[ -d "$dest" ]] && compgen -G "${dest}/*.ttf" >/dev/null; then
        echo "✓ ${display}  (already installed)"
        return 2
    fi

    local url="${GWFH_API}/${id}?download=zip&subsets=${SUBSETS}&formats=${FORMATS}&variants=${VARIANTS}"
    echo "↓ ${display}  (${id})"
    [[ $dry_run -eq 1 ]] && return 0

    local zip="${tmpdir}/${id}.zip"
    if ! curl -fsSL "$url" -o "$zip"; then
        echo "  ✗ download failed (font may be unavailable via gwfh)"
        return 1
    fi
    mkdir -p "$dest"
    if ! unzip -qo "$zip" -d "$dest"; then
        echo "  ✗ unzip failed"; rm -rf "$dest"; return 1
    fi
    return 0
}

run_install() {
    local -a ids=("$@")
    [[ ${#ids[@]} -eq 0 ]] && { echo "Nothing to install."; return; }

    tmpdir="$(mktemp -d)"
    trap 'rm -rf "$tmpdir"' EXIT
    mkdir -p "$DEST_ROOT"

    local installed=0 skipped=0 failed=0
    declare -a failed_names=()
    for id in "${ids[@]}"; do
        if install_one "$id"; then
            ((installed++)) || true
        elif [[ $? -eq 2 ]]; then
            ((skipped++)) || true
        else
            ((failed++)) || true
            failed_names+=("$(name_for_id "$id" || echo "$id")")
        fi
    done

    if [[ $dry_run -eq 0 && $installed -gt 0 ]] && command -v fc-cache >/dev/null; then
        echo "Refreshing font cache..."
        fc-cache -f "$DEST_ROOT"
    fi

    echo ""
    echo "Installed: $installed   Already present: $skipped   Failed: $failed"
    if [[ ${#failed_names[@]} -gt 0 ]]; then
        echo "Failed (try installing manually from fonts.google.com):"
        printf '  - %s\n' "${failed_names[@]}"
    fi
}

# ---------- interactive menu ----------

interactive_menu() {
    echo "Awesome Hebrew Fonts — installer"
    echo
    echo "  1) Install ALL Hebrew fonts on Google Fonts (large)"
    echo "  2) Install all curated fonts from this repo"
    echo "  3) Pick categories"
    echo "  4) Pick individual fonts"
    echo "  5) List curated fonts and exit"
    echo "  q) Quit"
    echo
    read -rp "Choice [1-5,q]: " choice
    case "$choice" in
        1) mapfile -t IDS < <(ids_all_hebrew); run_install "${IDS[@]}" ;;
        2) mapfile -t IDS < <(ids_all_curated); run_install "${IDS[@]}" ;;
        3) menu_categories ;;
        4) menu_fonts ;;
        5) list_fonts | column -t -s $'\t' ;;
        q|Q) exit 0 ;;
        *) echo "Unknown choice"; exit 1 ;;
    esac
}

multiselect() {
    # Multi-select prompt. Args: each arg is "key\tlabel" line.
    # Reads space-separated indices (or "all") and echoes selected keys.
    local -a lines=("$@")
    local i=1
    for line in "${lines[@]}"; do
        printf "  %2d) %s\n" "$i" "$(echo -e "$line" | cut -f2)"
        ((i++))
    done
    echo
    read -rp "Numbers (space-separated, or 'all'): " picks
    if [[ "$picks" == "all" ]]; then
        for line in "${lines[@]}"; do echo -e "$line" | cut -f1; done
        return
    fi
    for n in $picks; do
        [[ "$n" =~ ^[0-9]+$ ]] || continue
        local idx=$((n-1))
        [[ $idx -ge 0 && $idx -lt ${#lines[@]} ]] || continue
        echo -e "${lines[$idx]}" | cut -f1
    done
}

menu_categories() {
    echo "Categories:"
    mapfile -t cat_lines < <(list_categories)
    mapfile -t picked < <(multiselect "${cat_lines[@]}")
    [[ ${#picked[@]} -eq 0 ]] && { echo "Nothing selected."; exit 0; }
    declare -a IDS=()
    for c in "${picked[@]}"; do
        while IFS= read -r id; do IDS+=("$id"); done < <(ids_by_category "$c")
    done
    run_install "${IDS[@]}"
}

menu_fonts() {
    echo "Curated fonts:"
    mapfile -t font_lines < <(jq -r '.fonts[] | "\(.gwfh_id)\t[\(.category)] \(.name)"' "$FONTS_JSON")
    mapfile -t picked < <(multiselect "${font_lines[@]}")
    [[ ${#picked[@]} -eq 0 ]] && { echo "Nothing selected."; exit 0; }
    run_install "${picked[@]}"
}

# ---------- dispatch ----------

case "$mode" in
    list) list_fonts | column -t -s $'\t' ;;
    all)
        mapfile -t IDS < <(ids_all_curated); run_install "${IDS[@]}" ;;
    all-hebrew)
        mapfile -t IDS < <(ids_all_hebrew); run_install "${IDS[@]}" ;;
    category)
        declare -a IDS=()
        for c in "${sel_categories[@]}"; do
            while IFS= read -r id; do IDS+=("$id"); done < <(ids_by_category "$c")
        done
        run_install "${IDS[@]}" ;;
    font)
        run_install "${sel_fonts[@]}" ;;
    "")
        interactive_menu ;;
esac
