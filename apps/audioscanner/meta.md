---
slug: audioscanner
name: AudioScanner
repo: lioilsources/AudioScanner
tagline: Akustická mapa místnosti z mikrofonu telefonu
order: 16
featured: false
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
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

RTA umí peak hold, stopy maxima a minima a zmrazení; zmrazený snímek se dá
uložit jako bod. Kalibrační soubor mikrofonu (UMIK nebo REW) a SPL offset jdou
nahrát, uložená data ale nikdy nemění.

Bod změříš buď ťuknutím, se třemi sekundami průměrování, nebo necháš appku
měřit průběžně po každém půlmetru. Z bodů vznikne IDW heatmapa s posuvníkem
přes pásma a doporučení nejrovnějšího místa k sezení.

Z log sweepu se Farinovou dekonvolucí spočítá impulzní odezva: přímý zvuk,
první odraz a frekvenční odezva i s fází, s nastavitelným oknem gatingu
a vyhlazováním od 1/3 do 1/24 oktávy. K tomu doznívání po oktávách (EDT, T20,
T30), C50 a C80, Schroederova křivka, graf impulzu, ETC a spektrogram. Ze
stejného sweepu vyjde i zkreslení HD2 a HD3. Když je odraz
blíž, než kolik impuls zvoní, oddělit se nedá — appka radši nevrátí nic, než
aby za stěnu označila sidelobe.

Libovolné dva body jde srovnat, i napříč session. Ven jde FRD pro REW
a VituixCAD, impulzy a celá session v JSONu.

### Návrh soustavy

S LiDARem si přes RoomPlan vezme geometrii místnosti, modální sumací spočítá
módy, softwarově projede „subwoofer crawl", zrcadlením najde body prvních
odrazů a zkontroluje úhly proti Dolby. Umí z toho vygenerovat nastavení pro
Integru DRX-8.4 včetně jejích patnácti EQ pásem.

Na místě posluchače se každý kanál změří sweepem zvlášť. EQ vychází z průměru
bodů kolem posluchače; pásmo, které se mezi nimi liší o víc než 6 dB, dostane
jen poloviční korekci. Řeže se volně, zvedá sotva a nad Schroederovu frekvenci
se nesahá. Náhled ukáže stav před, cíl a předpověď po, cílová křivka jde
upravit. Druhé měření po zadání EQ do přijímače ukáže, co jeho filtr skutečně
udělal.

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

Fázová korekce, parametrický EQ a víc subwooferů. Přijímač bere jen vzdálenost
a patnáct grafických pásem; na víc je potřeba externí DSP a FRD export do REW.
