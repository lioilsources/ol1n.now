---
tagline: Bit-perfect spiller for USB-DAC-er — fil, RAM, ASIO og ingenting imellom
---
Elfton Player er en spiller for lokal musikk på Windows 11 med én eneste
prioritet: at det er nøyaktig de samplene som ligger i filen, som kommer fram til USB-DAC-en din.
Signalveien er **fil → dekoder → RAM → ASIO → DAC**. Ingen volumkontroll,
ingen equalizer, ingen resampling, ingen strømming. Volumet stiller du inn på
konverteren eller forsterkeren.

### Dette kan den

- **Bit-perfect utgang** via ASIO, eller WASAPI i eksklusiv modus. Ved siden av
  sporet ser du hele kjeden (`FLAC 24/96k → 32-bit · bit-perfect`), og den grønne
  prikken slukker i det øyeblikket noe som helst griper inn i signalet.
- **Avspilling fra minnet.** Hele sporet dekodes til RAM, så disken hviler under
  avspillingen; neste spor lastes inn på forhånd og følger **uten opphold**.
- **Sample-nøyaktig A-B-sløyfe** der punktene kan flyttes millisekund for millisekund — for
  å øve på en passasje eller sammenligne to steder i et opptak.
- **Bibliotek etter mapper**: katalogtreet akkurat slik du har det på disken, omslag,
  søk, kø, favoritter, historikk, M3U-spillelister, album i én fil med CUE,
  synkroniserte sangtekster fra LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg og DSD** (native, DoP eller konvertert til PCM).
- **Mono (L+R)/2** som det eneste inngrepet i signalet, alltid synlig merket.
- **Knappene V og H** spiller bare i én høyttaler og demper den andre. Med mono på
  spiller begge det samme, så du kan fra godstolen straks sammenligne venstre og høyre
  side av anlegget ditt med telefonen (kabler, komponenter); uten mono hører du bare den
  venstre eller bare den høyre kanalen i opptaket.
- **En spolelinje tegnet som sporets lydstyrke** over hele vinduets bredde: en stille
  intro er synlig og kan hoppes over med ett klikk.
- **Et hjerte ved hvert spor** og et filter «bare favoritter» rett i albumet.
- **Tre temaer**: mørkt, svart og lyst.
- **Fjernkontroll på telefonen**: Elfton Remote pares med en QR-kode via
  hjemmenettverket og kan alt det vinduet på datamaskinen kan.

### Avspillingsmodus

Hvis du vil, bytter den strømplan under avspilling, slår av selektiv USB-hvilemodus og
core parking og setter alt tilbake etterpå. Ærlig talt: med en asynkron USB-DAC er det
konverteren som styrer klokken, så disse justeringene har ingen målbar effekt på lyden.
De er valgfrie, hver av dem skrives til loggen, og ingen av dem er nødvendige.

Det samme gjelder «ritualene» som er lånt fra spilleren Bug head, som ligger i
innstillingene og er slått av som standard: å låse musikken i RAM, en pause etter at et
spor er lastet inn, og å starte ditt eget hjelpeprogram (for eksempel MinorityClean)
sammen med spilleren. MinorityClean følger ikke med.

### Status

**Versjon 0.2, forhåndsutgivelse.** Den første versjonen kjørte på Windows 11 hos én
lytter via ASIO (Behringer UMC204HD og SMSL D200): WAV 24/192 gikk ut som 32-biters
ASIO uten konvertering og uten utfall, og styringen fra telefonen fungerer. Det er
spillerens egen rapport om signalveien; ingen har ennå tatt opp utgangen og sammenlignet
den bit for bit. Nyhetene i 0.2 er dekket av tester, men har ennå ikke kjørt på Windows.
Skjermbildene er fra den første versjonen, fra et utviklingsbygg for macOS med et
eksempelbibliotek — lydstyrkelinjen og V/H-bryteren er ikke med på dem ennå.

Windows-bygget er en zip: pakk den ut og start `Elfton Player.exe`, eller kjør den
medfølgende `install.ps1`, som legger til en snarvei i Start-menyen. Ingenting annet
installeres. For ASIO må driveren til konverteren være installert; uten den tilbyr
spilleren WASAPI. Fjernkontrollen for telefonen finnes foreløpig bare for Android (APK);
iOS-versjonen er ferdig i koden, men har ikke noe offentlig bygg.

Motoren er skrevet i Go oppå FFmpeg (LGPL, dynamisk lenket), grensesnittet i Flutter.
