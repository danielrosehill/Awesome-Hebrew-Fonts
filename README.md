# Awesome Hebrew Fonts

A curated, point-in-time (April 2026) list of great Hebrew fonts available via [Google Fonts](https://fonts.google.com/?subset=hebrew).

Maintained by [Daniel Rosehill](https://danielrosehill.com). Opinions are my own — these are fonts I actually use or appreciate.

## Quick Start

```bash
# Interactive terminal menu
./install.sh

# Or non-interactively:
./install.sh --all                       # all curated fonts in this repo
./install.sh --all-hebrew                # every Google Font with a Hebrew subset
./install.sh --category daily stylistic  # one or more categories
./install.sh --font heebo alef           # one or more font ids
./install.sh --list                      # show the curated list
./install.sh --dry-run --all             # preview without downloading

# Graphical front-end (uses zenity or kdialog)
./gui.sh

# Live preview of every font in your browser
xdg-open samples.html
```

The data lives in `fonts.json`. The installer reads from there, downloads TTFs (Hebrew + Latin subsets) from the [google-webfonts-helper](https://gwfh.mranftl.com) API into `~/.local/share/fonts/google/<family>/`, and refreshes the font cache.

Dependencies: `bash`, `curl`, `unzip`, `jq`. The GUI additionally uses `zenity` or `kdialog`.

## The List

### Daily Drivers

Solid, neutral workhorses for body copy, UI, and documents.

| Font | Google Fonts | Notes |
|---|---|---|
| Open Sans | [link](https://fonts.google.com/specimen/Open+Sans?script=Hebr) | Ubiquitous humanist sans; great Hebrew coverage |
| Google Sans | [link](https://fonts.google.com/specimen/Google+Sans?script=Hebr) | Google's brand sans |
| Arimo | [link](https://fonts.google.com/specimen/Arimo?script=Hebr) | Metric-compatible with Arial |

### Stylistic

A bit more personality — for headlines, marketing, friendly UIs.

| Font | Google Fonts |
|---|---|
| Heebo | [link](https://fonts.google.com/specimen/Heebo?script=Hebr) |
| M PLUS Rounded 1c | [link](https://fonts.google.com/specimen/M+PLUS+Rounded+1c?script=Hebr) |
| Fredoka | [link](https://fonts.google.com/specimen/Fredoka?script=Hebr) |
| Suez One | [link](https://fonts.google.com/specimen/Suez+One?script=Hebr) |

### Formal / Liturgical

Serifs and classical faces suitable for prayer books, formal documents, long-form Hebrew/English bilingual text.

| Font | Google Fonts |
|---|---|
| Frank Ruhl Libre | [link](https://fonts.google.com/specimen/Frank+Ruhl+Libre?script=Hebr) |
| Tinos | [link](https://fonts.google.com/specimen/Tinos?script=Hebr) |
| Cardo | [link](https://fonts.google.com/specimen/Cardo?script=Hebr) |

### Cursive / Handwriting

| Font | Google Fonts |
|---|---|
| Gveret Levin | [link](https://fonts.google.com/specimen/Gveret+Levin?script=Hebr) |
| Solitreo | [link](https://fonts.google.com/specimen/Solitreo?script=Hebr) |
| Playpen Sans Hebrew | [link](https://fonts.google.com/specimen/Playpen+Sans+Hebrew?script=Hebr) |

### Easy to Read

High legibility, generous proportions — good for accessibility-conscious work.

| Font | Google Fonts |
|---|---|
| Alef | [link](https://fonts.google.com/specimen/Alef?script=Hebr) |
| Secular One | [link](https://fonts.google.com/specimen/Secular+One?script=Hebr) |
| Bellefair | [link](https://fonts.google.com/specimen/Bellefair?script=Hebr) |

### Creative & Effects

Display-only — posters, social, branding moments.

| Font | Google Fonts |
|---|---|
| Rubik Gemstones | [link](https://fonts.google.com/specimen/Rubik+Gemstones?script=Hebr) |
| Rubik Wet Paint | [link](https://fonts.google.com/specimen/Rubik+Wet+Paint?script=Hebr) |
| Rubik Dirt | [link](https://fonts.google.com/specimen/Rubik+Dirt?script=Hebr) |
| Rubik Glitch | [link](https://fonts.google.com/specimen/Rubik+Glitch?script=Hebr) |
| Handjet | [link](https://fonts.google.com/specimen/Handjet?script=Hebr) |
| Rubik Iso | [link](https://fonts.google.com/specimen/Rubik+Iso?script=Hebr) |
| Rubik Moonrocks | [link](https://fonts.google.com/specimen/Rubik+Moonrocks?script=Hebr) |

### Stencil

| Font | Google Fonts |
|---|---|
| Rubik Doodle Shadow | [link](https://fonts.google.com/specimen/Rubik+Doodle+Shadow?script=Hebr) |

### Serif

| Font | Google Fonts |
|---|---|
| Noto Serif Hebrew | [link](https://fonts.google.com/specimen/Noto+Serif+Hebrew?script=Hebr) |
| Libertinus Serif | [link](https://fonts.google.com/specimen/Libertinus+Serif?script=Hebr) |

### Nice (general purpose, slightly characterful)

| Font | Google Fonts |
|---|---|
| Miriam Libre | [link](https://fonts.google.com/specimen/Miriam+Libre?script=Hebr) |
| David Libre | [link](https://fonts.google.com/specimen/David+Libre?script=Hebr) |

### Code / Monospace

| Font | Google Fonts |
|---|---|
| Cascadia Code | [link](https://fonts.google.com/specimen/Cascadia+Code?script=Hebr) |

### Rashi Script

| Font | Google Fonts |
|---|---|
| Noto Rashi Hebrew | [link](https://fonts.google.com/specimen/Noto+Rashi+Hebrew?script=Hebr) |

## Samples

Open `samples.html` in any browser for a live preview of every font with Hebrew sample text (rendered via the Google Fonts CDN — no install required).

## Installer

`install.sh` downloads TTFs to `~/.local/share/fonts/google/<family>/` and runs `fc-cache`. Linux/macOS only. Requires `curl` and `unzip`.

Flags:
- `--list` — print the font list and exit
- `--category <name>...` — install only specific categories (`daily`, `stylistic`, `formal`, `cursive`, `easy`, `creative`, `stencil`, `serif`, `nice`, `code`, `rashi`)
- `--dry-run` — show what would be downloaded

## Beyond Google Fonts — Other Resources

### Free Hebrew font collections

- [FreeFonts.co.il](https://freefonts.co.il/)
- [HebrewFont.net](https://www.hebrewfont.net/)
- [Alef Alef Alef](https://alefalefalef.co.il)
- [HebrewFonts.net](https://hebrewfonts.net/)
- [Open Siddur — Fonts](https://opensiddur.org/help/fonts/) — liturgical-grade open-licensed Hebrew fonts
- [FontMeme — Hebrew Fonts Collection](https://fontmeme.com/fonts/hebrew-fonts-collection/)
- [Adobe Hebrew (Adobe Fonts)](https://fonts.adobe.com/fonts/adobe-hebrew) — included with Creative Cloud
- [Otzar Fonts](https://fonts.otzar.io/) — fonts curated for Jewish/Torah typesetting

### Paid collections / foundries

- [FontBit](https://fontbit.co.il/)
- [Fontsim](https://www.fontsim.com/)
- [Fonts Addict — Hebrew](https://www.fontsaddict.com/font/search/hebrew)
- [Lia Fonts](https://liafonts.com/)

### Paleo Hebrew

- [BiblePlaces — Paleo Hebrew Fonts](https://www.bibleplaces.com/paleo_hebrew_fonts/) — ancient/biblical script

## Open Source Hebrew Fonts on GitHub

Individual font sources and Hebrew-typography projects worth knowing about. These aren't (all) on Google Fonts, so the installer doesn't fetch them automatically — clone and install manually if you need them.

### Fonts

- [OdedEzer/heebo](https://github.com/OdedEzer/heebo) — upstream source for Heebo
- [opensiddur/fonts](https://github.com/opensiddur/fonts) — liturgical/Open Siddur font collection
- [AlefAlefAlef/gveret-levin](https://github.com/AlefAlefAlef/gveret-levin) — Gveret Levin handwriting
- [googlefonts/mekorot](https://github.com/googlefonts/mekorot) — Mekorot, designed for layered Hebrew texts
- [gsshab/OpenSansHebrew](https://github.com/gsshab/OpenSansHebrew) — Open Sans Hebrew variant
- [hafontia-zz/Amatica-sc](https://github.com/hafontia-zz/Amatica-sc) — Amatica SC
- [ibleaman/Keter-YG](https://github.com/ibleaman/Keter-YG) — Keter-YG (Yiddish/Hebrew)
- [arielagor/jetbrains-mono-hebrew](https://github.com/arielagor/jetbrains-mono-hebrew) — JetBrains Mono with Hebrew glyphs

### Biblical

- [bdenckla/Taamey_D](https://github.com/bdenckla/Taamey_D) — Taamey D, Tanakh-cantillation typesetting

### Paleo Hebrew

- [edenberger/Robo-PaleoHeb](https://github.com/edenberger/Robo-PaleoHeb) — Robo Paleo-Hebrew

### Resources / collections

- [Culmus/hebrew-fonts](https://github.com/Culmus/hebrew-fonts) — Culmus project, classic free Hebrew fonts

### Utilities

- [UberStorm/Image-To-Hebrew-Font-Generator](https://github.com/UberStorm/Image-To-Hebrew-Font-Generator)
- [RafaelKipershlak/hebrew-letters-gen](https://github.com/RafaelKipershlak/hebrew-letters-gen)

### RTL utilities

- [voidksa/RTL-Flow](https://github.com/voidksa/RTL-Flow)
- [noambrand/kivun-terminal-wsl](https://github.com/noambrand/kivun-terminal-wsl) — RTL terminal helper for WSL

## License

The font list, README, and installer are released under CC0. The fonts themselves are licensed by their respective authors (mostly OFL or Apache 2.0) — see each font's Google Fonts page.
