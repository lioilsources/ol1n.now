---
tagline: Et akustisk kort over dit rum fra telefonens mikrofon
---
Du afspiller et testsignal gennem højttalerne, går rundt i rummet med telefonen,
og spektret bliver målt i hvert punkt. AR-tracking holder imens styr på, hvor du
står. Resultatet er et heatmap over plantegningen: hvor bassen buldrer, hvor den
forsvinder, hvor højttalerne skal stå, og hvor lytteren skal sidde.

**Det er ikke en erstatning for REW med en kalibreret mikrofon.** Det er et
relativt værktøj — forskelle mellem steder i ét rum. Absolut SPL fra en
ukalibreret telefon findes ikke, og appen påstår det ingen steder.

### Måling

SPL-måler og RTA i enogtredive tredjedelsoktavbånd fra 20 Hz til 20 kHz, FFT 8192
med Hann-vindue og energimidling. Testsignaler eksporteres som WAV — lyserød støj
og logaritmisk sweep, venstre og højre kanal hver for sig.

RTA'en har peak hold, maksimum- og minimumskurver og frys; et frosset billede kan
gemmes som et punkt. Du kan indlæse en kalibreringsfil til mikrofonen (UMIK eller
REW) og en SPL-offset, men de ændrer aldrig gemte data.

Du måler et punkt med et tryk, med tre sekunders midling, eller lader appen måle
løbende for hver halve meter. Punkterne bliver til et IDW-heatmap med en skyder
hen over båndene og en anbefaling af den mest lineære siddeplads.

Ud fra log-sweepet beregner Farina-dekonvolution impulsresponsen: direkte lyd,
første refleksion og frekvensrespons med fase, med justerbart gating-vindue
og udglatning fra 1/3 til 1/24 oktav. Dertil efterklang pr. oktav (EDT, T20,
T30), C50 og C80, Schroeder-kurven, en impulsgraf, ETC og et spektrogram. Det
samme sweep giver også HD2- og HD3-forvrængning. Når en refleksion kommer
tættere på, end impulsen ringer, kan den ikke skilles ud — appen returnerer
hellere ingenting end at kalde en sidelap for en væg.

To vilkårlige punkter kan sammenlignes, også på tværs af sessioner. Ud kommer
FRD til REW og VituixCAD, impulser og hele sessionen som JSON.

### Design af anlægget

Med LiDAR henter den rummets geometri via RoomPlan, beregner modi ved modal
summering, kører et softwarebaseret „subwoofer crawl“, finder de første
refleksionspunkter ved spejling og tjekker vinklerne mod Dolby. Ud fra det kan
den generere indstillinger til Integra DRX-8.4, inklusive dens femten EQ-bånd.

På lyttepositionen måles hver kanal med sit eget sweep. EQ'en tager
udgangspunkt i gennemsnittet af punkterne omkring lytteren; et bånd, der varierer
mere end 6 dB mellem dem, får kun halv korrektion. Der skæres frit, løftes knap
og røres intet over Schroeder-frekvensen. Forhåndsvisningen viser før, mål
og forventet efter, og målkurven kan justeres. En ny måling, efter du har tastet
EQ'en ind i receiveren, viser, hvad dens filter faktisk gjorde.

### Hvad appen siger højt

Én mikrofon kan ikke lokalisere en kilde, så kun telefonens position gemmes,
aldrig dens orientering som lydens retning. Når systemet stille og roligt
bearbejder signalet — AGC, støjdæmpning, ekkoannullering — melder det native lag
tilbage, hvad det faktisk har slået til: en måling gennem AGC er ikke en
dårligere måling, det er en måling af AGC'en. En Bluetooth-mikrofon bliver
opdaget, og appen advarer om den.

### Hvad der bevidst mangler

Afspilning af signalet fra telefonen. Telefonens højttaler holder op omkring
500 Hz, altså over enhver mode, der er værd at lede efter — at eksportere en WAV
til et ordentligt anlæg er den eneste vej, der giver mening.

RoomPlan findes ikke på Android. I stedet samles lodrette planer fra ARCore til
en kasse: de ser de vægge, kameraet har kigget på, sjældent hjørnerne, aldrig
bag møblerne. Det er nok til at navngive en mode, ikke til refleksionspunkter —
og geometrien bærer den oplysning om sig selv.

Fasekorrektion, parametrisk EQ og flere subwoofere. Receiveren tager kun afstand
og femten grafiske bånd; til mere skal der en ekstern DSP og en FRD-eksport til
REW.
