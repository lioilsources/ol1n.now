---
tagline: Een DJ-deck met slimme playlist en feestmodus waarin gasten de muziek kiezen vanaf hun telefoon
---
DJfy is een mobiele DJ-app die slim playlists samenstelt. Je voert een artiest in en de app zoekt er nummers bij op basis van tempo en aanbevelingen. Daarna mixt hij ze op decks met pitch, effecten en een crossfader.

Hij werkt samen met **Last.fm** (aanbevelingen, scrobbling), **GetSongBPM** (BPM-gegevens) en **SoundCloud** (streaming).

### Feestmodus

Op een feestje draait meestal degene die toevallig bij de telefoon staat, terwijl de rest verzoekjes in zijn oor schreeuwt. Met DJfy wordt de telefoon van de gastheer het DJ-meubel en speelt de speaker alleen nog af. Gasten scannen een QR-code en openen het feest in hun browser. Geen app of account nodig, alleen een naam.

- **Gasten stellen voor en stemmen.** Iedereen kan nummers zoeken, ze aan de wachtrij toevoegen en een duim omhoog of omlaag geven. Zodat één gast niet de hele wachtrij inpikt, mag ieder er maximaal drie nummers tegelijk in hebben.
- **Slimme wachtrij.** De volgorde hangt niet alleen af van stemmen. De app kijkt ook hoe lang een nummer al wacht, of dezelfde artiest net nog speelde en of het tempo past bij het nummer dat nu speelt.
- **Mood lock.** De gastheer stelt een BPM-bereik in, bijvoorbeeld 110–130, en nummers daarbuiten gaan naar het eind van de wachtrij. Zo houdt de avond het tempo vast, ook als iemand een ballad voorstelt.
- **Auto-DJ.** Nummers gaan met een vloeiende crossfade in elkaar over. Verschillen de tempo's hooguit 8 %, dan stemt de app tijdens de overgang de BPM af en keert daarna terug naar de oorspronkelijke snelheid.
- **Het feest gaat door.** Raakt de wachtrij leeg, dan voegt de app zelf een nieuw nummer toe dat lijkt op de laatst gespeelde en markeert het als Auto. Nummers van gasten gaan altijd voor en nummers met een veto komen niet terug. Je zet het uit met de schakelaar naast Auto-DJ.
- **De gastheer heeft het laatste woord.** Hij kan een nummer met een veto schrappen, een co-DJ aanwijzen die in de wachtrij mag ingrijpen, of een gast eruit gooien.
- **Geluid overal.** De telefoon speelt af via een koptelefoon, via Bluetooth op een speaker of via AirPlay, bijvoorbeeld op een Sonos.

De telefoon van de gastheer draagt het hele feest. Een kleine Go-server tussen hem en de gasten stuurt alleen berichten door en slaat niets op.

Gebouwd met Flutter. Werkt op mobiel en macOS.
