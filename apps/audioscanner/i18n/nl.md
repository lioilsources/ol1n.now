---
tagline: Een akoestische kaart van je kamer via de microfoon van je telefoon
---
Je speelt een testsignaal af via je speakers, loopt met je telefoon door de
kamer en op elk punt wordt het spectrum gemeten. AR-tracking houdt intussen bij
waar je staat. Het resultaat is een heatmap op de plattegrond: waar de bas dreunt,
waar hij wegvalt, waar de speakers moeten staan en waar de luisteraar.

**Het is geen vervanging voor REW met een gekalibreerde microfoon.** Het is een
relatief hulpmiddel — verschillen tussen plekken in één kamer. Absolute SPL uit
een ongekalibreerde telefoon bestaat niet, en de app beweert dat ook nergens.

### Meten

SPL-meter en RTA in eenendertig tertsbanden van 20 Hz tot 20 kHz, FFT 8192 met
Hann-venster en energetische middeling. Testsignalen exporteer je als WAV —
roze ruis en een logaritmische sweep, linker- en rechterkanaal apart.

De RTA heeft peak hold, maximum- en minimumlijnen en bevriezen; een bevroren
momentopname kun je als punt opslaan. Je kunt een kalibratiebestand voor de
microfoon (UMIK of REW) en een SPL-offset laden, maar die veranderen opgeslagen
data nooit.

Je meet een punt met een tik, met drie seconden middeling, of laat de app elke
halve meter doorlopend meten. Uit de punten ontstaat een IDW-heatmap met een
schuifregelaar over de banden en een aanbeveling voor de vlakste zitplek.

Uit de log-sweep berekent Farina-deconvolutie de impulsrespons: direct geluid,
eerste reflectie en frequentierespons inclusief fase, met een instelbaar
gating-venster en smoothing van 1/3 tot 1/24 octaaf. Daarbij nagalm per octaaf
(EDT, T20, T30), C50 en C80, de Schroeder-curve, een impulsgrafiek, ETC en een
spectrogram. Uit dezelfde sweep komt ook de HD2- en HD3-vervorming. Als een
reflectie dichterbij ligt dan de impuls naklinkt, is die niet te scheiden — de
app geeft dan liever niets terug dan een zijlob voor een muur aan te zien.

Twee willekeurige punten kun je vergelijken, ook tussen sessies. Exporteren kan
als FRD voor REW en VituixCAD, impulsen en de hele sessie als JSON.

### Het systeem ontwerpen

Met LiDAR haalt ze via RoomPlan de geometrie van de kamer op, berekent de modi
met modale sommatie, doet softwarematig een ‘subwoofer crawl’, vindt via
spiegeling de punten van eerste reflecties en controleert de hoeken tegen Dolby.
Daaruit kan ze instellingen genereren voor de Integra DRX-8.4, inclusief diens
vijftien EQ-banden.

Op de luisterplek wordt elk kanaal apart met een sweep gemeten. De EQ gaat uit
van het gemiddelde van de punten rond de luisteraar; een band die daartussen
meer dan 6 dB verschilt, krijgt maar de helft van de correctie. Er wordt royaal
gesneden, nauwelijks opgehaald en boven de Schroeder-frequentie blijft alles
ongemoeid. De preview toont voor, doel en verwacht na, en de doelcurve is aan
te passen. Een tweede meting nadat je de EQ in de receiver hebt ingevoerd, laat
zien wat zijn filter echt heeft gedaan.

### Wat de app hardop zegt

Eén microfoon kan geen bron lokaliseren, dus wordt alleen de positie van de
telefoon opgeslagen, nooit de oriëntatie als richting van het geluid. Als het
systeem het signaal stilletjes bewerkt — AGC, ruisonderdrukking,
echo-onderdrukking — meldt de native laag terug wat er echt is ingeschakeld:
een meting door AGC is geen slechtere meting, het is een meting van de AGC.
Een Bluetooth-microfoon wordt herkend en gemeld.

### Wat er bewust ontbreekt

Het signaal afspelen vanaf de telefoon. Een telefoonspeaker houdt op rond
500 Hz, dus boven elke modus die het zoeken waard is — een WAV exporteren naar
een fatsoenlijk systeem is de enige zinnige weg.

RoomPlan bestaat niet op Android. In plaats daarvan worden verticale vlakken uit
ARCore tot een doos samengevoegd: ze zien de muren waar de camera naar keek,
zelden de hoeken, nooit achter meubels. Genoeg om een modus te benoemen, niet
voor reflectiepunten — en de geometrie draagt die informatie over zichzelf mee.

Fasecorrectie, parametrische EQ en meerdere subwoofers. De receiver accepteert
alleen afstand en vijftien grafische banden; voor meer heb je een externe DSP
en de FRD-export naar REW nodig.
