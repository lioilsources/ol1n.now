---
tagline: AI-chat met rollen, Bibliothecaris en Jurist, een studio voor beeld, video, sprookjes, muziek en stem
---
Ol1nLLM is één app bovenop je eigen server: hij kletst, zoekt in een bibliotheek en in wetten, tekent, maakt van een plaatje een video, verfilmt een sprookje, componeert muziek en leest antwoorden voor met een opgenomen stem.
Een uitgebreide gids met screenshots staat op de pagina [Wat de app kan](ol1nllm-features.html).

### Chat

Een gesprek begint met het kiezen van een **rol** — tien karakters, van een kind van vijf tot een opa, en vier assistenten met eigen data. Het antwoord verschijnt terwijl het geschreven wordt, een gesprek kan **vertakken** en je kunt halverwege van rol wisselen.

- **Bibliothecaris** antwoordt uit een corpus van filosofie en heilige teksten in de oorspronkelijke talen en toont de passages waaruit hij putte, met Tsjechische vertaling.
- **Jurist** antwoordt uit de geldende Tsjechische wetten en citeert de artikelen.
- **Jurist – contracten** stelt een contract op uit een sjabloon: vraagt kaart voor kaart door en bewaakt de wettelijke grenzen.
- **Leads** zoekt bedrijven en instellingen in het Tsjechische contractenregister.

### Image Studio

Een beeld ontstaat in rondes die samen een boom vormen: tekst → beeld, daarna bewerkingen van de gekozen variant. Negentien modellen (FLUX, SDXL, anime-lijnen), meer dan driehonderd artistieke **stijlen** (culturen en tijdperken, kunstenaars, media), **pose**-sjablonen, **LoRA's** van de server en een negatieve prompt in hoofdletters.

- **Pose behouden** en **Gezicht behouden** — een nieuw personage in de houding van het voorbeeld, desgewenst ook met diens gezicht.
- **Stijlkaart** — honderden beelden van hetzelfde onderwerp, gerangschikt op gelijkenis; je vinger glijdt over het mozaïek, de stijl verandert als een animatie, en de gekozen stijl wordt gebruikt.
- **Inpaint** — je schildert een gebied over en beschrijft wat er moet komen.
- **Kapper** — een nieuw kapsel of nieuwe haarkleur zonder een masker te tekenen.
- **Laten bewegen** — van een beeld een korte video: dansjes en gebaren van de server, of je eigen beschrijving van de beweging.
- **3D** — een model om te printen (STL), of een dansend figuurtje met skelet.

### Story Studio

Je kiest een sprookje uit tien scenario's, cast de rollen met je eigen plaatjes en de server maakt er een animatievideo van een minuut van, met verteller, muziek en ondertitels. De shots kun je vóór de animatie controleren en mislukte opnieuw laten tekenen.

### Music Studio

Geef de studio een muziekfragment — uit een bestand of opgenomen met de microfoon — en hij haalt er genre, tempo en toonsoort uit. **Vibe** componeert een nieuw nummer in dezelfde geest, **Groove** arrangeert het origineel om naar een ander genre.

### Voice Studio

Uit een korte opname — zelfs uit de geluidsspoor van een video — ontstaat een eigen **stem**. Elke stem kun je uitproberen op elke zin en aan een rol in de chat koppelen. De luidspreker onder een antwoord leest het dan voor met de stem van die rol.

### Geschiedenis

Gesprekken, sessies, projecten en sprookjes blijven op je telefoon. Lange taken draaien op de server: je kunt de app sluiten en bij terugkomst maakt hij vanzelf weer verbinding.

Gebouwd met Flutter, draait op mobiel en desktop. De app is een client voor je eigen modelserver; zonder die server genereert hij niets.
