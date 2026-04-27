# Awesome Hebrew Fonts

![banner](banner.webp)

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

---

## Daily Drivers

Solid, neutral workhorses for body copy, UI, and documents.

### Open Sans

![Open Sans sample](samples/open-sans.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Open+Sans?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Open+Sans)

### Google Sans

![Google Sans sample](samples/google-sans.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Google+Sans?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Google+Sans)

### Arimo

![Arimo sample](samples/arimo.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Arimo?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Arimo)

---

## Stylistic

A bit more personality — for headlines, marketing, friendly UIs.

### Heebo

![Heebo sample](samples/heebo.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Heebo?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Heebo)

### M PLUS Rounded 1c

![M PLUS Rounded 1c sample](samples/mplus-rounded.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/M+PLUS+Rounded+1c?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=M+PLUS+Rounded+1c)

### Fredoka

![Fredoka sample](samples/fredoka.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Fredoka?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Fredoka)

### Suez One

![Suez One sample](samples/suez-one.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Suez+One?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Suez+One)

---

## Formal / Liturgical

Serifs and classical faces suitable for prayer books, formal documents, long-form Hebrew/English bilingual text.

### Frank Ruhl Libre

![Frank Ruhl Libre sample](samples/frank-ruhl.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Frank+Ruhl+Libre?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Frank+Ruhl+Libre)

### Tinos

![Tinos sample](samples/tinos.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Tinos?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Tinos)

### Cardo

![Cardo sample](samples/cardo.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Cardo?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Cardo)

---

## Cursive / Handwriting

### Gveret Levin

![Gveret Levin sample](samples/gveret-levin.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Gveret+Levin?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Gveret+Levin)

### Solitreo

![Solitreo sample](samples/solitreo.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Solitreo?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Solitreo)

### Playpen Sans Hebrew

![Playpen Sans Hebrew sample](samples/playpen-sans.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Playpen+Sans+Hebrew?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Playpen+Sans+Hebrew)

---

## Easy to Read

High legibility, generous proportions — good for accessibility-conscious work.

### Alef

![Alef sample](samples/alef.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Alef?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Alef)

### Secular One

![Secular One sample](samples/secular-one.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Secular+One?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Secular+One)

### Bellefair

![Bellefair sample](samples/bellefair.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Bellefair?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Bellefair)

---

## Creative & Effects

Display-only — posters, social, branding moments.

### Rubik Gemstones

![Rubik Gemstones sample](samples/rubik-gemstones.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Rubik+Gemstones?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Rubik+Gemstones)

### Rubik Wet Paint

![Rubik Wet Paint sample](samples/rubik-wet-paint.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Rubik+Wet+Paint?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Rubik+Wet+Paint)

### Rubik Dirt

![Rubik Dirt sample](samples/rubik-dirt.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Rubik+Dirt?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Rubik+Dirt)

### Rubik Glitch

![Rubik Glitch sample](samples/rubik-glitch.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Rubik+Glitch?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Rubik+Glitch)

### Handjet

![Handjet sample](samples/handjet.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Handjet?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Handjet)

### Rubik Iso

![Rubik Iso sample](samples/rubik-iso.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Rubik+Iso?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Rubik+Iso)

### Rubik Moonrocks

![Rubik Moonrocks sample](samples/rubik-moonrocks.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Rubik+Moonrocks?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Rubik+Moonrocks)

---

## Stencil

### Rubik Doodle Shadow

![Rubik Doodle Shadow sample](samples/rubik-doodle-shadow.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Rubik+Doodle+Shadow?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Rubik+Doodle+Shadow)

---

## Serif

### Noto Serif Hebrew

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Noto+Serif+Hebrew?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Noto+Serif+Hebrew)

### Libertinus Serif

![Libertinus Serif sample](samples/libertinus-serif.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Libertinus+Serif?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Libertinus+Serif)

---

## Nice (general purpose, slightly characterful)

### Miriam Libre

![Miriam Libre sample](samples/miriam-libre.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Miriam+Libre?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Miriam+Libre)

### David Libre

![David Libre sample](samples/david-libre.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/David+Libre?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=David+Libre)

---

## Code / Monospace

### Cascadia Code

![Cascadia Code sample](samples/cascadia-code.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Cascadia+Code?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Cascadia+Code)

---

## Rashi Script

### Noto Rashi Hebrew

![Noto Rashi Hebrew sample](samples/noto-rashi.webp)

[![View in Google Fonts](https://img.shields.io/badge/View_in-Google_Fonts-4285F4?style=for-the-badge&logo=googlefonts&logoColor=white)](https://fonts.google.com/specimen/Noto+Rashi+Hebrew?script=Hebr)
[![Download](https://img.shields.io/badge/Download-ZIP-success?style=for-the-badge&logo=download&logoColor=white)](https://fonts.google.com/download?family=Noto+Rashi+Hebrew)

---

## Live Samples

For an in-browser preview rendered via the Google Fonts CDN (no install required), open `samples.html`.

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
