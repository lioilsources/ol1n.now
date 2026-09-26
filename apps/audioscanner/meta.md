---
slug: audioscanner
name: AudioScanner
repo: lioilsources/AudioScanner
tagline: Akustická mapa místnosti z mikrofonu telefonu
order: 16
featured: false
desktop:
mobile: android,ios
artifacts: android
appstore:
playstore:
testflight:
---
Pustíš z beden testovací signál, projdeš s telefonem místnost a v každém bodě
se změří spektrum. AR tracking přitom sleduje, kde stojíš. Výsledek je
půdorysná heatmapa: kde basy duní, kde mizí, kam dát bedny a kam posluchače.

**Není to náhrada REW s kalibrovaným mikrofonem.** Je to relativní nástroj —
rozdíly mezi místy v jedné místnosti. Absolutní SPL z nekalibrovaného telefonu
neexistuje a appka ho nikde netvrdí.

### Měření

SPL metr a RTA v jedenatřiceti třetinooktávových pásmech od 20 Hz do 20 kHz,
FFT 8192 s Hannovým oknem a energetickým průměrováním. Testovací signály se
exportují do WAV — růžový šum i logaritmický sweep, levý a pravý kanál zvlášť.

Bod změříš buď ťuknutím, se třemi sekundami průměrování, nebo necháš appku
měřit průběžně po každém půlmetru. Z bodů vznikne IDW heatmapa s posuvníkem
přes pásma a doporučení nejrovnějšího místa k sezení.

Z log sweepu se Farinovou dekonvolucí spočítá impulzní odezva: přímý zvuk,
první odraz, gating, RT60 přes T20/T30 a Schroederova křivka. Když je odraz
blíž, než kolik impuls zvoní, oddělit se nedá — appka radši nevrátí nic, než
aby za stěnu označila sidelobe.

### Návrh soustavy

S LiDARem si přes RoomPlan vezme geometrii místnosti, modální sumací spočítá
módy, softwarově projede „subwoofer crawl", zrcadlením najde body prvních
odrazů a zkontroluje úhly proti Dolby. Umí z toho vygenerovat nastavení pro
Integru DRX-8.4 včetně jejích patnácti EQ pásem.

### Co appka říká nahlas

Jeden mikrofon neumí lokalizovat zdroj, takže se ukládá jen pozice telefonu,
nikdy orientace jako směr zvuku. Když si systém signál potichu upraví — AGC,
potlačení šumu, echo cancellation — nativní vrstva hlásí zpátky, co skutečně
povolil: měření přes AGC není horší měření, je to měření AGC. Bluetooth
mikrofon se detekuje a varuje.

### Co vědomě chybí

Přehrávání signálu z telefonu. Reproduktor telefonu končí kolem 500 Hz, tedy
nad každým módem, který by stálo za to hledat — export WAV do pořádné soustavy
je jediná cesta, která dává smysl.

RoomPlan na Androidu neexistuje. Místo něj se boxují vertikální roviny
z ARCore: vidí stěny, na které se kamera koukala, málokdy rohy, nikdy za
nábytkem. Na pojmenování módu to stačí, na body odrazů ne — a geometrie to
o sobě nese.
