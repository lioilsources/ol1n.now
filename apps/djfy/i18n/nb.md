---
tagline: Et DJ-deck med smart spilleliste og festmodus der gjestene velger musikken fra mobilen
---
DJfy er en mobil DJ-app som lager smarte spillelister. Du skriver inn en artist, og appen setter sammen låter rundt den ut fra tempo og anbefalinger. Så mikser den dem på decker med pitch, effekter og crossfader.

Den integrerer **Last.fm** (anbefalinger, scrobbling), **GetSongBPM** (BPM-data) og **SoundCloud** (strømming).

### Festmodus

På fest er det som regel den som står ved telefonen som styrer musikken, mens de andre roper ønsker inn i øret på vedkommende. Med DJfy blir vertens telefon til DJ-pult, og høyttaleren bare spiller. Gjestene skanner en QR-kode og åpner festen i nettleseren. De trenger verken app eller konto, et navn holder.

- **Gjestene foreslår og stemmer.** Alle kan søke etter låter, legge dem i køen og gi tommel opp eller ned. For at én gjest ikke skal ta hele køen, kan hver ha maks tre låter i den om gangen.
- **Smart kø.** Rekkefølgen avgjøres ikke bare av stemmer. Appen tar også hensyn til hvor lenge en låt har ventet, om samme artist nettopp ble spilt, og om tempoet passer til låten som spilles nå.
- **Mood lock.** Verten setter et BPM-område, for eksempel 110–130, og låter utenfor havner bakerst i køen. Kvelden holder dermed tempoet, selv om noen foreslår en ballade.
- **Auto-DJ.** Låtene glir over i hverandre med en myk crossfade. Når tempoene skiller seg med høyst 8 %, tilpasser appen BPM under overgangen og går så tilbake til opprinnelig hastighet.
- **Festen tar aldri slutt.** Når køen går tom, legger appen selv til en ny låt som ligner på de sist spilte, og merker den som Auto. Gjestenes låter har alltid forrang, og låter med veto kommer ikke tilbake. Det kan slås av med bryteren ved siden av Auto-DJ.
- **Verten har siste ord.** Verten kan legge ned veto mot en låt, utnevne en co-DJ som får styre køen, eller kaste ut en gjest.
- **Lyd hvor som helst.** Telefonen spiller i hodetelefoner, på en høyttaler via Bluetooth eller via AirPlay, for eksempel til en Sonos.

Vertens telefon bærer hele festen. En liten Go-server mellom den og gjestene videresender bare meldinger og lagrer ingenting.

Laget med Flutter. Kjører på mobil og macOS.
