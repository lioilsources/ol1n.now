---
tagline: Bit-perfect spelare för USB-DAC:ar — fil, RAM, ASIO och inget däremellan
---
Elfton Player är en spelare för lokal musik på Windows 11 med en enda
prioritet: att det är exakt de samplingar som finns i filen som når fram till din USB-DAC.
Signalvägen är **fil → avkodare → RAM → ASIO → DAC**. Ingen volymkontroll,
ingen equalizer, ingen omsampling, ingen streaming. Volymen ställer du in på
omvandlaren eller förstärkaren.

### Vad den kan

- **Bit-perfect utgång** via ASIO, eller WASAPI i exklusivt läge. Bredvid låten
  syns hela kedjan (`FLAC 24/96k → 32-bit · bit-perfect`), och den gröna
  pricken slocknar i samma stund som något påverkar signalen.
- **Uppspelning från minnet.** Hela låten avkodas till RAM, så disken vilar under
  uppspelningen; nästa låt läses in i förväg och följer **utan glapp**.
- **Samplingsexakt A-B-slinga** där punkterna kan flyttas millisekund för millisekund —
  för att öva på en passage eller jämföra två ställen i en inspelning.
- **Bibliotek efter mappar**: katalogträdet precis som du har det på disken, omslag,
  sökning, kö, favoriter, historik, M3U-spellistor, album i en enda fil med CUE,
  synkroniserade låttexter från LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg och DSD** (native, DoP eller konverterat till PCM).
- **Mono (L+R)/2** som det enda ingreppet i signalen, alltid synligt markerat.
- **Knapparna V och H** spelar bara i en högtalare och tystar den andra. Med mono på
  spelar båda samma sak, så du kan direkt från fåtöljen jämföra vänster och höger sida
  av din anläggning med mobilen (kablar, komponenter); utan mono hör du bara den vänstra
  eller bara den högra kanalen i inspelningen.
- **Ett reglage ritat som låtens ljudstyrka** över hela fönstrets bredd: ett tyst
  intro syns och kan hoppas över med ett klick.
- **Ett hjärta vid varje låt** och ett filter ”bara favoriter” direkt i albumet.
- **Tre teman**: mörkt, svart och ljust.
- **Fjärrkontroll i mobilen**: Elfton Remote paras ihop med en QR-kod via ditt
  hemnätverk och kan allt som fönstret på datorn kan.

### Uppspelningsläge

Om du vill byter den energischema under uppspelningen, stänger av selektivt USB-viloläge
och core parking och återställer allt efteråt. Ärligt talat: med en asynkron USB-DAC är
det omvandlaren som styr klockan, så de här justeringarna har ingen mätbar effekt på
ljudet. De är valfria, var och en skrivs till loggen och ingen av dem behövs.

Samma sak gäller de ”ritualer” som lånats från spelaren Bug head, som finns i
inställningarna och är avstängda som standard: att låsa musiken i RAM, en paus efter att
en låt har lästs in och att starta ett eget hjälpprogram (till exempel MinorityClean)
tillsammans med spelaren. MinorityClean ingår inte.

### Status

**Version 0.2, förhandsversion.** Den första versionen kördes på Windows 11 hos en
lyssnare via ASIO (Behringer UMC204HD och SMSL D200): WAV 24/192 gick ut som 32-bitars
ASIO utan konvertering och utan avbrott, och styrningen från mobilen fungerar. Det är
spelarens egen rapport om signalvägen; ingen har ännu spelat in utgången och jämfört den
bit för bit. Nyheterna i 0.2 täcks av tester men har ännu inte körts på Windows.
Skärmbilderna är från den första versionen, från ett utvecklingsbygge för macOS med ett
exempelbibliotek — ljudstyrkefältet och V/H-väljaren finns inte med på dem än.

Windows-bygget är en zip: packa upp den och starta `Elfton Player.exe`, eller kör den
medföljande `install.ps1`, som lägger till en genväg i Start-menyn. Inget annat
installeras. För ASIO måste omvandlarens drivrutin vara installerad; utan den erbjuder
spelaren WASAPI. Fjärrkontrollen för mobilen finns tills vidare bara för Android (APK);
iOS-versionen är klar i koden men har inget offentligt bygge.

Motorn är skriven i Go ovanpå FFmpeg (LGPL, dynamiskt länkat), gränssnittet i Flutter.
