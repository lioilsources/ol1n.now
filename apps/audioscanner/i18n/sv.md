---
tagline: En akustisk karta över ditt rum från telefonens mikrofon
---
Du spelar en testsignal genom högtalarna, går runt i rummet med telefonen och i
varje punkt mäts spektrumet. AR-spårningen håller samtidigt koll på var du står.
Resultatet är en värmekarta över planlösningen: var basen mullrar, var den
försvinner, var högtalarna ska stå och var lyssnaren ska sitta.

**Det är ingen ersättning för REW med kalibrerad mikrofon.** Det är ett relativt
verktyg — skillnader mellan platser i ett och samma rum. Absolut SPL från en
okalibrerad telefon finns inte, och appen påstår det ingenstans.

### Mätning

SPL-mätare och RTA i trettioett tersband från 20 Hz till 20 kHz, FFT 8192 med
Hann-fönster och energimedelvärde. Testsignalerna exporteras som WAV — rosa brus
och logaritmiskt svep, vänster och höger kanal var för sig.

RTA:n har peak hold, max- och minkurvor och frysning; en fryst bild kan sparas
som en punkt. Du kan läsa in en kalibreringsfil för mikrofonen (UMIK eller REW)
och en SPL-offset, men de ändrar aldrig sparade data.

Du mäter en punkt med ett tryck, med tre sekunders medelvärdesbildning, eller
låter appen mäta löpande varje halvmeter. Punkterna blir en IDW-värmekarta med
ett reglage över banden och en rekommendation av den jämnaste sittplatsen.

Ur det logaritmiska svepet räknar Farina-dekonvolution fram impulssvaret: direkt
ljud, första reflexen och frekvensgång med fas, med justerbart gating-fönster
och utjämning från 1/3 till 1/24 oktav. Dessutom efterklang per oktav (EDT, T20,
T30), C50 och C80, Schroeder-kurvan, en impulsgraf, ETC och ett spektrogram. Ur
samma svep får du också distorsionen HD2 och HD3. När en reflex kommer närmare
än impulsen ringer går den inte att separera — appen returnerar hellre ingenting
än kallar en sidlob för en vägg.

Två valfria punkter går att jämföra, även mellan sessioner. Ut går FRD för REW
och VituixCAD, impulser och hela sessionen som JSON.

### Utforma anläggningen

Med LiDAR hämtar den rummets geometri via RoomPlan, beräknar moderna med modal
summering, kör en ”subwoofer crawl” i mjukvara, hittar de första reflexpunkterna
genom spegling och kontrollerar vinklarna mot Dolby. Utifrån det kan den
generera inställningar för Integra DRX-8.4, inklusive dess femton EQ-band.

Vid lyssningsplatsen mäts varje kanal med ett eget svep. EQ:n utgår från
medelvärdet av punkterna runt lyssnaren; ett band som skiljer sig mer än 6 dB
mellan dem får bara halv korrigering. Det skärs frikostigt, lyfts knappt och
ovanför Schroeder-frekvensen rörs ingenting. Förhandsvisningen visar före, mål
och förväntat efter, och målkurvan går att justera. En andra mätning efter att
du har matat in EQ:n i receivern visar vad dess filter faktiskt gjorde.

### Vad appen säger rakt ut

En enda mikrofon kan inte lokalisera en källa, så bara telefonens position
sparas, aldrig dess riktning som ljudets riktning. När systemet tyst bearbetar
signalen — AGC, brusreducering, ekoeliminering — rapporterar det nativa lagret
vad det faktiskt har slagit på: en mätning genom AGC är ingen sämre mätning, det
är en mätning av AGC:n. En Bluetooth-mikrofon upptäcks och appen varnar för den.

### Vad som medvetet saknas

Uppspelning av signalen från telefonen. Telefonens högtalare tar slut runt
500 Hz, alltså ovanför varje mod som är värd att leta efter — att exportera en
WAV till en riktig anläggning är det enda sättet som är vettigt.

RoomPlan finns inte på Android. I stället sätts vertikala plan från ARCore ihop
till en låda: de ser väggarna som kameran tittat på, sällan hörnen, aldrig
bakom möblerna. Det räcker för att namnge en mod, inte för reflexpunkter — och
geometrin bär den informationen om sig själv.

Faskorrigering, parametrisk EQ och flera subwoofrar. Receivern tar bara avstånd
och femton grafiska band; för mer behövs en extern DSP och FRD-export till REW.
