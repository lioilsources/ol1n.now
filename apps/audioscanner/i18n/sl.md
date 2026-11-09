---
tagline: Akustični zemljevid sobe iz mikrofona telefona
---
Iz zvočnikov predvajaš testni signal, s telefonom prehodiš sobo in v vsaki točki
se izmeri spekter. AR sledenje medtem beleži, kje stojiš. Rezultat je toplotni
zemljevid na tlorisu: kje bas bobni, kje izgine, kam postaviti zvočnike in kam
poslušalca.

**To ni nadomestek za REW s kalibriranim mikrofonom.** Je relativno orodje —
razlike med mesti v isti sobi. Absolutni SPL iz nekalibriranega telefona ne
obstaja in aplikacija ga nikjer ne trdi.

### Merjenje

Merilnik SPL in RTA v enaintridesetih tretjinskooktavnih pasovih od 20 Hz do
20 kHz, FFT 8192 s Hannovim oknom in energijskim povprečenjem. Testni signali se
izvozijo v WAV — rožnati šum in logaritemski sweep, levi in desni kanal ločeno.

RTA ima peak hold, sledi maksimuma in minimuma ter zamrznitev; zamrznjen posnetek
lahko shraniš kot točko. Naložiš lahko kalibracijsko datoteko mikrofona (UMIK ali
REW) in odmik SPL, a shranjenih podatkov nikoli ne spremenita.

Točko izmeriš s tapom, s tremi sekundami povprečenja, ali pa pustiš aplikaciji,
da meri sproti na vsakega pol metra. Iz točk nastane toplotni zemljevid IDW
z drsnikom čez pasove in priporočilo najbolj ravnega mesta za sedenje.

Iz logaritemskega sweepa Farinina dekonvolucija izračuna impulzni odziv: direktni
zvok, prvi odboj in frekvenčni odziv skupaj s fazo, z nastavljivim oknom gatinga
in glajenjem od 1/3 do 1/24 oktave. Poleg tega odzvenevanje po oktavah (EDT,
T20, T30), C50 in C80, Schroederjeva krivulja, graf impulza, ETC in spektrogram.
Iz istega sweepa dobiš tudi popačenje HD2 in HD3. Ko odboj prispe prej, kot
impulz neha zveneti, ga ni mogoče ločiti — aplikacija raje ne vrne ničesar, kot
da bi stranski snop razglasila za steno.

Primerjaš lahko kateri koli dve točki, tudi med sejami. Izvoz: FRD za REW
in VituixCAD, impulzi in cela seja v JSON.

### Načrtovanje sistema

Z LiDAR-jem prek RoomPlana zajame geometrijo sobe, z modalnim seštevanjem izračuna
mode, programsko izvede „subwoofer crawl“, z zrcaljenjem najde točke prvih odbojev
in preveri kote glede na Dolby. Iz tega zna ustvariti nastavitve za Integro
DRX-8.4, vključno z njenimi petnajstimi pasovi EQ.

Na mestu poslušanja se vsak kanal izmeri z lastnim sweepom. EQ izhaja iz
povprečja točk okoli poslušalca; pas, ki se med njimi razlikuje za več kot 6 dB,
dobi le polovični popravek. Reže se sproščeno, dviguje komaj, nad Schroederjevo
frekvenco pa se ničesar ne dotika. Predogled pokaže stanje pred, cilj
in napoved po, ciljno krivuljo lahko prilagodiš. Druga meritev po vnosu EQ
v sprejemnik pokaže, kaj je njegov filter dejansko naredil.

### Kaj aplikacija pove na glas

En mikrofon ne zna locirati vira, zato se shrani le položaj telefona, nikoli
njegova usmerjenost kot smer zvoka. Ko sistem signal potiho obdela — AGC,
dušenje šuma, odpravljanje odmeva — nativni sloj sporoči, kaj je dejansko
omogočil: meritev skozi AGC ni slabša meritev, je meritev AGC. Bluetooth
mikrofon se zazna in aplikacija nanj opozori.

### Kaj namerno manjka

Predvajanje signala iz telefona. Zvočnik telefona se konča okoli 500 Hz, torej
nad vsakim modom, ki bi ga bilo vredno iskati — izvoz WAV na pravi sistem je
edina pot, ki ima smisel.

RoomPlan na Androidu ne obstaja. Namesto njega se navpične ravnine iz ARCore
sestavijo v škatlo: vidijo stene, v katere je gledala kamera, redko kote, nikoli
za pohištvom. Za poimenovanje moda to zadošča, za točke odbojev ne — in geometrija
to informacijo nosi s seboj.

Fazna korekcija, parametrični EQ in več subwooferjev. Sprejemnik sprejme le
razdaljo in petnajst grafičnih pasov; za več potrebuješ zunanji DSP in izvoz
FRD v REW.
