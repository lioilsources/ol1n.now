---
tagline: Telegram-bot voor manga uit blokken, foto-restyle, een nieuw kapsel en foto-animatie
---
TsumikiMangaBot (voorheen MangaPrompts) stelt prompts voor AI-beeldgeneratie samen in LEGO-stijl — je kiest bouwblokken op zo'n vijfentwintig assen (medium, kunsttraditie, hoofdstijl, mangastijl, historische periode) en daaruit ontstaat een complete prompt. Daar blijft het niet bij: de prompt gaat meteen naar de generatie en de afbeelding komt naar je terug.

### Meer kaarten

Naast de bouwer heeft de Mini App een kaartwisselaar:

- **Foto-restyle** — je uploadt een foto, kiest een stijl en krijgt dezelfde persoon in dezelfde pose in die stijl. Met de schakelaar foto / illustratie kies je het medium; er zijn meer dan negentig stijlen in zes groepen (populair, schilders, kunsttradities per regio).
- **Probeer een kapsel** — tekent op een portret alleen het haar opnieuw, desgewenst ook met een nieuwe kleur. Elk kapsel heeft een voorbeeld op hetzelfde gezicht, zodat je alleen het haar vergelijkt.
- **Breng je foto tot leven** — van een foto en een gekozen scène wordt een korte video gemaakt die in de chat binnenkomt.

### Zo begin je

Er hoeft niets geïnstalleerd te worden, het draait als Telegram Mini App:

1. Open in Telegram [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — of zoek hem op de naam **Tsumiki**.
2. Typ `/start`. De bot antwoordt met de knop **🎨 Open Tsumiki**.
3. Tik erop, zet je blokken in elkaar en laat genereren.

De afbeelding verschijnt direct in de app **en komt tegelijk in de chat**, zodat je hem in je geschiedenis hebt en meteen kunt doorsturen. Sla je `/start` over en open je de app direct, dan werkt genereren ook — alleen komt de afbeelding niet in de chat, omdat Telegram een bot niet als eerste laat schrijven.

### Wat het kost

**Drie generaties gratis per 24 uur.** Daarna is 1 credit = 1 afbeelding, en credits koop je met **Telegram Stars** direct in de app — 10 credits voor 25 ⭐, 50 voor 100 ⭐, 250 voor 400 ⭐. Restyle en kapsel kosten hetzelfde als een afbeelding, het kapsel pas nadat de analyse de foto heeft geaccepteerd. Animatie heeft een eigen teller: één per dag gratis, daarna 10 ⭐ per stuk. Mislukt een generatie, dan krijg je de credit terug. Bij betaalproblemen helpt het commando `/paysupport`; terugbetalingen regel ik binnen 48 uur.

### Onder de motorkap

De Mini App is Flutter web op Cloudflare Pages. De prompt gaat van daaruit naar een backend (FastAPI + aiogram) op een NAS thuis en vandaar naar **ComfyUI** — afhankelijk van het gekozen sjabloon wordt de workflow gekozen (FLUX, Pony, Juggernaut XL Lightning of WAI Illustrious). Restyle houdt het gezicht vast met PuLID of InstantID en de pose met depth ControlNet, animatie draait op Wan 2.2. Credits en betalingen staan in SQLite op de backend.

### Native apps

De builds hieronder voor macOS, Windows, Linux, Android en iOS zijn de volledige promptbouwer en hebben daarnaast de modus **Repose**, die Telegram niet heeft: je uploadt een gezicht, kiest een pose en de app genereert een afbeelding van die persoon in die pose met een getrouw gezicht (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose praat wel rechtstreeks met ComfyUI, dus de native app moet het kunnen bereiken.

Gebouwd met Flutter.
