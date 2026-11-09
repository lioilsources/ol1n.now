---
tagline: Bit-perfect afspiller til USB-DAC'er — fil, RAM, ASIO og intet derimellem
---
Elfton Player er en afspiller til lokal musik på Windows 11 med én eneste
prioritet: at det er præcis de samples, der ligger i filen, som når frem til din USB-DAC.
Signalvejen er **fil → dekoder → RAM → ASIO → DAC**. Ingen lydstyrke,
ingen equalizer, ingen resampling, ingen streaming. Lydstyrken indstiller du på
konverteren eller forstærkeren.

### Det kan den

- **Bit-perfect output** via ASIO eller WASAPI i eksklusiv tilstand. Ved siden af
  nummeret ser du hele kæden (`FLAC 24/96k → 32-bit · bit-perfect`), og den grønne
  prik slukker, så snart noget som helst griber ind i signalet.
- **Afspilning fra hukommelsen.** Hele nummeret dekodes til RAM, så disken hviler under
  afspilningen; det næste nummer indlæses på forhånd og fortsætter **uden pause**.
- **Sample-præcis A-B-loop**, hvor punkterne kan flyttes millisekund for millisekund — til at
  øve en passage eller sammenligne to steder i en optagelse.
- **Bibliotek efter mapper**: mappetræet, præcis som du har det på disken, covers,
  søgning, kø, favoritter, historik, M3U-playlister, albums i én fil med CUE,
  synkroniserede sangtekster fra LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg og DSD** (native, DoP eller konverteret til PCM).
- **Mono (L+R)/2** som det eneste indgreb i signalet, altid synligt markeret.
- **Knapperne V og H** spiller kun én højttaler og slukker den anden. Med mono slået til
  spiller begge det samme, så du fra lænestolen straks kan sammenligne venstre og højre
  side af dit anlæg med telefonen (kabler, komponenter); uden mono hører du kun den
  venstre eller kun den højre kanal i optagelsen.
- **En søgebjælke tegnet som nummerets lydstyrke** i hele vinduets bredde: en stille
  intro kan ses og springes over med ét klik.
- **Et hjerte ved hvert nummer** og et filter „kun favoritter“ direkte i albummet.
- **Tre temaer**: mørkt, sort og lyst.
- **Fjernbetjening på telefonen**: Elfton Remote parres med en QR-kode via dit
  hjemmenetværk og kan det samme som vinduet på computeren.

### Afspilningstilstand

Hvis du vil, skifter den strømstyringsplan under afspilning, slår selektiv USB-pause og
core parking fra og sætter alt tilbage bagefter. Ærligt talt: med en asynkron USB-DAC er
det konverteren, der styrer clocken, så disse justeringer har ingen målbar effekt på
lyden. De er valgfrie, hver enkelt skrives i loggen, og ingen af dem er nødvendige.

Det samme gælder de „ritualer“, der er lånt fra afspilleren Bug head, og som ligger i
indstillingerne og som standard er slået fra: at låse musikken i RAM, en pause efter et
nummer er indlæst, og at starte dit eget hjælpeprogram (for eksempel MinorityClean)
sammen med afspilleren. MinorityClean følger ikke med.

### Status

**Version 0.2, forhåndsudgivelse.** Den første version kørte på Windows 11 hos én
lytter via ASIO (Behringer UMC204HD og SMSL D200): WAV 24/192 gik ud som 32-bit ASIO
uden konvertering og uden udfald, og betjeningen fra telefonen virker. Det er
afspillerens egen melding om signalvejen; ingen har endnu optaget outputtet og
sammenlignet det bit for bit. Nyhederne i 0.2 er dækket af tests, men har endnu ikke
kørt på Windows. Skærmbillederne er fra den første version, fra et udviklingsbuild til
macOS med et eksempelbibliotek — lydstyrkebjælken og V/H-knappen er endnu ikke med.

Windows-buildet er en zip: pak den ud og start `Elfton Player.exe`, eller kør den
medfølgende `install.ps1`, der lægger en genvej i startmenuen. Ellers installeres der
intet. Til ASIO skal konverterens driver være installeret; uden den tilbyder afspilleren
WASAPI. Fjernbetjeningen til telefonen findes indtil videre kun til Android (APK);
iOS-versionen er færdig i koden, men har intet offentligt build.

Motoren er skrevet i Go oven på FFmpeg (LGPL, dynamisk linket), brugerfladen i Flutter.
