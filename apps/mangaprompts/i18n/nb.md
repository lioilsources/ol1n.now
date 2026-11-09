---
tagline: Telegram-bot for manga av klosser, foto-restyle, ny frisyre og animerte bilder
---
TsumikiMangaBot (tidligere MangaPrompts) setter sammen prompter for AI-bildegenerering etter LEGO-prinsippet — du velger byggeklosser på rundt tjuefem akser (medium, kunsttradisjon, hodestil, mangastil, historisk periode), og ut av dem kommer en komplett prompt. Og det stopper ikke der: prompten sendes rett til generering, og bildet kommer tilbake til deg.

### Flere kort

Ved siden av byggeren har Mini Appen en kortveksler:

- **Foto-restyle** — du laster opp et bilde, velger en stil og får samme person i samme positur i den stilen. Med bryteren foto / illustrasjon velger du medium, og det finnes over nitti stiler i seks grupper (populære, malere, kunsttradisjoner etter region).
- **Prøv en frisyre** — tegner bare håret på nytt i et portrett, om du vil også med ny farge. Hver frisyre har en forhåndsvisning på samme ansikt, så du sammenligner bare håret.
- **Gi bildet liv** — et bilde og en valgt scene blir til en kort video som kommer i chatten.

### Slik kommer du i gang

Ingenting skal installeres, det kjører som Telegram Mini App:

1. Åpne [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) i Telegram — eller søk etter den med navnet **Tsumiki**.
2. Skriv `/start`. Boten svarer med knappen **🎨 Open Tsumiki**.
3. Trykk på den, sett sammen klossene og la den generere.

Det ferdige bildet vises rett i appen **og kommer samtidig i chatten**, så du har det i historikken og kan videresende det med en gang. Hopper du over `/start` og åpner appen direkte, fungerer genereringen også — bildet kommer bare ikke i chatten, fordi Telegram ikke lar en bot skrive først.

### Hva det koster

**Tre gratis genereringer hver 24. time.** Deretter er 1 kreditt = 1 bilde, og kreditter kjøpes med **Telegram Stars** rett i appen — 10 kreditter for 25 ⭐, 50 for 100 ⭐, 250 for 400 ⭐. Restyle og frisyre koster det samme som et bilde, frisyren først når analysen har godtatt bildet. Animasjon har sin egen teller: én om dagen gratis, flere for 10 ⭐. Hvis en generering feiler, får du kreditten tilbake. Ved problemer med betaling hjelper kommandoen `/paysupport`, og refusjoner ordner jeg innen 48 timer.

### Under panseret

Mini Appen er Flutter web på Cloudflare Pages. Prompten går derfra til en backend (FastAPI + aiogram) som kjører på en NAS hjemme, og videre til **ComfyUI** — ut fra valgt mal velges workflowen (FLUX, Pony, Juggernaut XL Lightning eller WAI Illustrious). Restyle holder ansiktet med PuLID eller InstantID og posituren med depth ControlNet, og animasjonen kjører på Wan 2.2. Kreditter og betalinger ligger i SQLite på backenden.

### Native apper

Byggene nedenfor for macOS, Windows, Linux, Android og iOS er den fulle promptbyggeren og har i tillegg modusen **Repose**, som Telegram ikke har: du laster opp et ansikt, velger en positur, og appen genererer et bilde av personen i den posituren med et tro ansikt (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose snakker likevel direkte med ComfyUI, så den native appen må kunne nå det.

Laget med Flutter.
