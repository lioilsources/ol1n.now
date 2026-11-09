---
tagline: Bit-perfect speler voor USB-DAC's — bestand, RAM, ASIO en niets daartussen
---
Elfton Player is een speler voor lokale muziek op Windows 11 met maar één
prioriteit: dat er precies de samples bij je USB-DAC aankomen die in het bestand staan.
Het signaalpad is **bestand → decoder → RAM → ASIO → DAC**. Geen volumeregeling,
geen equalizer, geen resampling, geen streaming. Het volume stel je in op de
converter of de versterker.

### Wat hij kan

- **Bit-perfect uitvoer** via ASIO, of WASAPI in exclusieve modus. Naast het nummer
  zie je de hele keten (`FLAC 24/96k → 32-bit · bit-perfect`), en het groene
  stipje gaat uit zodra er iets aan het signaal verandert.
- **Afspelen vanuit het geheugen.** Het hele nummer wordt in het RAM gedecodeerd, dus de
  schijf doet niets tijdens het afspelen; het volgende nummer wordt vooraf geladen en
  sluit **naadloos** aan.
- **Sample-nauwkeurige A-B-lus** waarvan je de punten per milliseconde verschuift — om een
  passage te oefenen of twee plekken in een opname te vergelijken.
- **Bibliotheek per map**: de mappenstructuur zoals je die op schijf hebt, hoezen,
  zoeken, wachtrij, favorieten, geschiedenis, M3U-afspeellijsten, albums in één bestand
  met CUE, gesynchroniseerde songteksten uit LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg en DSD** (native, DoP of omgezet naar PCM).
- **Mono (L+R)/2** als enige ingreep in het signaal, altijd zichtbaar aangegeven.
- **De knoppen L en R** laten maar één speaker spelen en dempen de andere. Met mono aan
  spelen ze allebei hetzelfde, zodat je vanuit je stoel met je telefoon meteen de linker-
  en rechterkant van je installatie kunt vergelijken (kabels, componenten); zonder mono
  hoor je alleen het linker- of alleen het rechterkanaal van de opname.
- **Een zoekbalk getekend als het volumeverloop van het nummer** over de volle breedte van
  het venster: een stil intro is te zien en sla je met één klik over.
- **Een hartje bij elk nummer** en een filter ‘alleen favorieten’ direct in het album.
- **Drie thema's**: donker, zwart en licht.
- **Afstandsbediening op je telefoon**: Elfton Remote koppel je met een QR-code via je
  thuisnetwerk en die kan alles wat het venster op je computer kan.

### Afspeelmodus

Als je wilt, schakelt hij tijdens het afspelen het energiebeheerschema om, zet hij de
selectieve USB-onderbreking en core parking uit en zet hij daarna alles terug. Eerlijk is
eerlijk: bij een asynchrone USB-DAC bepaalt de converter de klok, dus deze aanpassingen
hebben geen meetbaar effect op het geluid. Ze zijn optioneel, elke aanpassing komt in het
log en geen ervan is nodig.

Hetzelfde geldt voor de ‘rituelen’ uit de speler Bug head, die in de instellingen staan
en standaard uit zijn: de muziek in het RAM vastzetten, een pauze nadat een nummer is
geladen en het starten van je eigen hulpprogramma (bijvoorbeeld MinorityClean) samen met
de speler. MinorityClean wordt niet meegeleverd.

### Status

**Versie 0.2, voorlopige release.** De eerste versie draaide op Windows 11 bij één
luisteraar via ASIO (Behringer UMC204HD en SMSL D200): WAV 24/192 ging naar buiten
als 32-bit ASIO zonder conversie en zonder haperingen, en de bediening via de telefoon
werkt. Dat is wat de speler zelf over het signaalpad meldt; niemand heeft de uitvoer nog
opgenomen en bit voor bit vergeleken. De nieuwe functies in 0.2 zijn gedekt door tests,
maar hebben nog niet op Windows gedraaid. De screenshots zijn van de eerste versie, van
een ontwikkelbuild voor macOS met een voorbeeldbibliotheek — de volumebalk en de
L/R-schakelaar staan er nog niet op.

De Windows-build is een zip: pak hem uit en start `Elfton Player.exe`, of voer het
meegeleverde `install.ps1` uit, dat een snelkoppeling aan het Startmenu toevoegt. Verder
wordt er niets geïnstalleerd. Voor ASIO moet het stuurprogramma van je converter
geïnstalleerd zijn; zonder dat biedt de speler WASAPI aan. De afstandsbediening voor de
telefoon is er voorlopig alleen voor Android (APK); de iOS-versie is klaar in de code,
maar heeft geen openbare build.

De engine is geschreven in Go bovenop FFmpeg (LGPL, dynamisch gelinkt), de interface in
Flutter.
