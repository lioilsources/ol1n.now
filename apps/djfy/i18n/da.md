---
tagline: Et DJ-deck med smart playliste og festtilstand, hvor gæsterne vælger musikken fra mobilen
---
DJfy er en mobil DJ-app med smart generering af playlister. Du skriver en kunstner, og appen sætter numre sammen omkring vedkommende ud fra tempo og anbefalinger. Derefter mixer den dem på decks med pitch, effekter og crossfader.

Den integrerer **Last.fm** (anbefalinger, scrobbling), **GetSongBPM** (BPM-data) og **SoundCloud** (streaming).

### Festtilstand

Til fester er det som regel den, der står ved telefonen, der styrer musikken, mens de andre råber ønsker ind i øret på vedkommende. Med DJfy bliver værtens telefon til DJ-pult, og højttaleren spiller bare. Gæsterne scanner en QR-kode og åbner festen i browseren. De behøver hverken app eller konto, et navn er nok.

- **Gæsterne foreslår og stemmer.** Alle kan søge efter numre, føje dem til køen og give tommel op eller ned. For at én gæst ikke skal tage hele køen, kan hver have højst tre numre i den ad gangen.
- **Smart kø.** Rækkefølgen afgøres ikke kun af stemmer. Appen tager også højde for, hvor længe et nummer har ventet, om samme kunstner lige har spillet, og om tempoet passer til det nummer, der spiller nu.
- **Mood lock.** Værten sætter et BPM-interval, fx 110–130, og numre uden for det ryger bagerst i køen. Så holder aftenen tempoet, selv om nogen foreslår en ballade.
- **Auto-DJ.** Numrene glider over i hinanden med et blødt crossfade. Når tempoerne afviger højst 8 %, afstemmer appen BPM under overgangen og vender så tilbage til den oprindelige hastighed.
- **Festen slutter aldrig.** Når køen løber tør, tilføjer appen selv et nyt nummer, der ligner de sidst spillede, og markerer det som Auto. Gæsternes numre har altid forrang, og numre med veto kommer ikke tilbage. Det kan slås fra med kontakten ved siden af Auto-DJ.
- **Værten har det sidste ord.** Værten kan nedlægge veto mod et nummer, udnævne en co-DJ, der må styre køen, eller smide en gæst ud.
- **Lyd overalt.** Telefonen spiller i høretelefoner, på en højttaler via Bluetooth eller via AirPlay, fx til en Sonos.

Værtens telefon bærer hele festen. En lille Go-server mellem den og gæsterne videresender kun beskeder og gemmer ingenting.

Bygget med Flutter. Kører på mobil og macOS.
