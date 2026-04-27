#!/usr/bin/env bash
# Simple graphical front-end for install.sh, using zenity (GTK) or kdialog (KDE).
# Falls back to the terminal menu in install.sh if neither is present.

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
INSTALLER="${SCRIPT_DIR}/install.sh"
FONTS_JSON="${SCRIPT_DIR}/fonts.json"

command -v jq >/dev/null || { echo "jq is required" >&2; exit 1; }
[[ -x "$INSTALLER" ]] || chmod +x "$INSTALLER"

run_in_terminal() {
    # Run a command in a new terminal window so the user sees progress.
    local cmd="$1"
    for term in konsole gnome-terminal xfce4-terminal kitty alacritty xterm; do
        if command -v "$term" >/dev/null; then
            case "$term" in
                konsole)        konsole -e bash -c "$cmd; echo; read -rp 'Done. Press enter to close...'"; return ;;
                gnome-terminal) gnome-terminal -- bash -c "$cmd; echo; read -rp 'Done. Press enter to close...'"; return ;;
                xfce4-terminal) xfce4-terminal -e "bash -c \"$cmd; echo; read -rp 'Done. Press enter to close...'\""; return ;;
                kitty)          kitty bash -c "$cmd; echo; read -rp 'Done. Press enter to close...'"; return ;;
                alacritty)      alacritty -e bash -c "$cmd; echo; read -rp 'Done. Press enter to close...'"; return ;;
                xterm)          xterm -e bash -c "$cmd; echo; read -rp 'Done. Press enter to close...'"; return ;;
            esac
        fi
    done
    bash -c "$cmd"
}

# ---------- zenity backend ----------

gui_zenity() {
    local choice
    choice=$(zenity --list --title="Awesome Hebrew Fonts" \
        --text="What would you like to install?" \
        --column="Mode" --column="Description" \
        all-hebrew  "All Hebrew fonts on Google Fonts (large)" \
        curated     "All curated fonts in this repo" \
        category    "Pick categories" \
        font        "Pick individual fonts" \
        --width=520 --height=320) || exit 0

    case "$choice" in
        all-hebrew) run_in_terminal "'$INSTALLER' --all-hebrew" ;;
        curated)    run_in_terminal "'$INSTALLER' --all" ;;
        category)
            local args=()
            while IFS=$'\t' read -r key label; do args+=(FALSE "$key" "$label"); done < <(jq -r '.categories | to_entries[] | "\(.key)\t\(.value.label)"' "$FONTS_JSON")
            local picked
            picked=$(zenity --list --checklist --title="Pick categories" \
                --column="" --column="Key" --column="Category" \
                "${args[@]}" --separator=' ' --width=520 --height=480) || exit 0
            [[ -z "$picked" ]] && exit 0
            run_in_terminal "'$INSTALLER' --category $picked"
            ;;
        font)
            local args=()
            while IFS=$'\t' read -r id label; do args+=(FALSE "$id" "$label"); done < <(jq -r '.fonts[] | "\(.gwfh_id)\t[\(.category)] \(.name)"' "$FONTS_JSON")
            local picked
            picked=$(zenity --list --checklist --title="Pick fonts" \
                --column="" --column="Id" --column="Font" \
                "${args[@]}" --separator=' ' --width=560 --height=600) || exit 0
            [[ -z "$picked" ]] && exit 0
            run_in_terminal "'$INSTALLER' --font $picked"
            ;;
    esac
}

# ---------- kdialog backend ----------

gui_kdialog() {
    local choice
    choice=$(kdialog --title "Awesome Hebrew Fonts" --menu "What would you like to install?" \
        all-hebrew "All Hebrew fonts on Google Fonts (large)" \
        curated    "All curated fonts in this repo" \
        category   "Pick categories" \
        font       "Pick individual fonts") || exit 0

    case "$choice" in
        all-hebrew) run_in_terminal "'$INSTALLER' --all-hebrew" ;;
        curated)    run_in_terminal "'$INSTALLER' --all" ;;
        category)
            local args=()
            while IFS=$'\t' read -r key label; do args+=("$key" "$label" off); done < <(jq -r '.categories | to_entries[] | "\(.key)\t\(.value.label)"' "$FONTS_JSON")
            local picked
            picked=$(kdialog --title "Pick categories" --separate-output --checklist "Categories:" "${args[@]}") || exit 0
            [[ -z "$picked" ]] && exit 0
            run_in_terminal "'$INSTALLER' --category $(echo "$picked" | tr '\n' ' ')"
            ;;
        font)
            local args=()
            while IFS=$'\t' read -r id label; do args+=("$id" "$label" off); done < <(jq -r '.fonts[] | "\(.gwfh_id)\t[\(.category)] \(.name)"' "$FONTS_JSON")
            local picked
            picked=$(kdialog --title "Pick fonts" --separate-output --checklist "Fonts:" "${args[@]}") || exit 0
            [[ -z "$picked" ]] && exit 0
            run_in_terminal "'$INSTALLER' --font $(echo "$picked" | tr '\n' ' ')"
            ;;
    esac
}

if command -v kdialog >/dev/null && [[ "${XDG_CURRENT_DESKTOP:-}" == *KDE* ]]; then
    gui_kdialog
elif command -v zenity >/dev/null; then
    gui_zenity
elif command -v kdialog >/dev/null; then
    gui_kdialog
else
    echo "Neither zenity nor kdialog found — falling back to terminal menu."
    exec "$INSTALLER"
fi
