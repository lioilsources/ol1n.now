---
tagline: Telegram-bot til manga af klodser, foto-restyle, ny frisure og animerede fotos
---
TsumikiMangaBot (tidligere MangaPrompts) sætter prompts til AI-billedgenerering sammen efter LEGO-princippet — du vælger byggeklodser på omkring femogtyve akser (medie, kunsttradition, hovedstil, mangastil, historisk periode), og ud af dem kommer en komplet prompt. Og det stopper ikke der: prompten sendes direkte til generering, og billedet kommer tilbage til dig.

### Flere kort

Ud over byggeren har Mini App'en en kortskifter:

- **Foto-restyle** — du uploader et foto, vælger en stil og får den samme person i den samme positur i den stil. Med kontakten foto / illustration vælger du mediet, og der er over halvfems stilarter i seks grupper (populære, malere, kunsttraditioner efter region).
- **Prøv en frisure** — tegner kun håret om på et portræt, hvis du vil også med en ny farve. Hver frisure har en forhåndsvisning på det samme ansigt, så du kun sammenligner håret.
- **Giv dit foto liv** — et foto og en valgt scene bliver til en kort video, der lander i chatten.

### Sådan kommer du i gang

Der skal ikke installeres noget, det kører som Telegram Mini App:

1. Åbn [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) i Telegram — eller søg efter den under navnet **Tsumiki**.
2. Skriv `/start`. Botten svarer med knappen **🎨 Open Tsumiki**.
3. Tryk på den, sæt klodserne sammen og lad den generere.

Det færdige billede vises direkte i appen **og lander samtidig i chatten**, så du har det i historikken og kan videresende det med det samme. Springer du `/start` over og åbner appen direkte, virker genereringen også — billedet kommer bare ikke frem i chatten, fordi Telegram ikke lader en bot skrive først.

### Hvad det koster

**Tre gratis genereringer hver 24. time.** Derefter er 1 kredit = 1 billede, og kreditter købes med **Telegram Stars** direkte i appen — 10 kreditter for 25 ⭐, 50 for 100 ⭐, 250 for 400 ⭐. Restyle og frisure koster det samme som et billede, frisuren først når analysen har godkendt fotoet. Animation har sin egen tæller: én om dagen gratis, flere for 10 ⭐. Hvis en generering fejler, får du kreditten tilbage. Ved problemer med betaling hjælper kommandoen `/paysupport`, og refusioner klarer jeg inden for 48 timer.

### Under motorhjelmen

Mini App'en er Flutter web på Cloudflare Pages. Prompten går derfra til en backend (FastAPI + aiogram), der kører på en NAS derhjemme, og videre til **ComfyUI** — afhængigt af den valgte skabelon vælges workflowet (FLUX, Pony, Juggernaut XL Lightning eller WAI Illustrious). Restyle holder ansigtet med PuLID eller InstantID og posituren med depth ControlNet, og animationen kører på Wan 2.2. Kreditter og betalinger ligger i SQLite på backenden.

### Native apps

Byggene nedenfor til macOS, Windows, Linux, Android og iOS er den fulde promptbygger og har desuden tilstanden **Repose**, som Telegram ikke har: du uploader et ansigt, vælger en positur, og appen genererer et billede af personen i den positur med et tro ansigt (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose taler dog direkte med ComfyUI, så den native app skal kunne nå det.

Bygget med Flutter.
