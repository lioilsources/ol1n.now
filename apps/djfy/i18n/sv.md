---
tagline: Ett DJ-deck med smart spellista och festläge där gästerna väljer musiken från mobilen
---
DJfy är en mobil DJ-app som skapar smarta spellistor. Du skriver in en artist och appen plockar ihop låtar kring den utifrån tempo och rekommendationer. Sedan mixar den dem på decks med pitch, effekter och crossfader.

Den integrerar **Last.fm** (rekommendationer, scrobbling), **GetSongBPM** (BPM-data) och **SoundCloud** (streaming).

### Festläge

På fester är det oftast den som står vid telefonen som spelar musiken, medan alla andra skriker önskemål i örat på hen. Med DJfy blir värdens telefon ett DJ-bord och högtalaren bara spelar. Gästerna skannar en QR-kod och öppnar festen i webbläsaren. De behöver varken app eller konto, det räcker med ett namn.

- **Gästerna föreslår och röstar.** Alla kan söka efter låtar, lägga till dem i kön och ge tummen upp eller ner. För att en enda gäst inte ska ta över hela kön får var och en ha högst tre låtar i den åt gången.
- **Smart kö.** Ordningen avgörs inte bara av röster. Appen tar också hänsyn till hur länge en låt har väntat, om samma artist nyss spelades och om tempot passar till låten som spelas just nu.
- **Mood lock.** Värden ställer in ett BPM-intervall, till exempel 110–130, och låtar utanför det hamnar sist i kön. Kvällen håller tempot även om någon föreslår en ballad.
- **Auto-DJ.** Låtarna glider över i varandra med en mjuk crossfade. När tempona skiljer sig högst 8 % matchar appen BPM under övergången och återgår sedan till ursprunglig hastighet.
- **Festen tar aldrig slut.** När kön tar slut lägger appen själv till en ny låt, lik de senast spelade, och märker den som Auto. Gästernas låtar har alltid företräde och låtar med veto kommer inte tillbaka. Det går att stänga av med reglaget bredvid Auto-DJ.
- **Värden har sista ordet.** Värden kan lägga in veto mot en låt, utse en co-DJ som får styra kön eller kasta ut en gäst.
- **Ljud vart som helst.** Telefonen spelar i hörlurar, i en högtalare via Bluetooth eller via AirPlay, till exempel till en Sonos.

Värdens telefon bär hela festen. En liten server i Go mellan den och gästerna skickar bara vidare meddelanden och sparar ingenting.

Byggd med Flutter. Fungerar på mobil och macOS.
