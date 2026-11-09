---
tagline: Akustická mapa miestnosti z mikrofónu telefónu
---
Pustíš z reproduktorov testovací signál, prejdeš s telefónom miestnosť a v každom
bode sa zmeria spektrum. AR tracking pritom sleduje, kde stojíš. Výsledkom je
pôdorysná heatmapa: kde basy dunia, kde miznú, kam dať reproduktory a kam
poslucháča.

**Nie je to náhrada REW s kalibrovaným mikrofónom.** Je to relatívny nástroj —
rozdiely medzi miestami v jednej miestnosti. Absolútne SPL z nekalibrovaného
telefónu neexistuje a appka ho nikde netvrdí.

### Meranie

SPL meter a RTA v jednotridsiatich tretinooktávových pásmach od 20 Hz do 20 kHz,
FFT 8192 s Hannovým oknom a energetickým priemerovaním. Testovacie signály sa
exportujú do WAV — ružový šum aj logaritmický sweep, ľavý a pravý kanál zvlášť.

RTA vie peak hold, stopy maxima a minima a zmrazenie; zmrazený snímok sa dá
uložiť ako bod. Kalibračný súbor mikrofónu (UMIK alebo REW) a SPL offset sa dajú
nahrať, uložené dáta však nikdy nemenia.

Bod zmeriaš buď ťuknutím, s trojsekundovým priemerovaním, alebo necháš appku
merať priebežne po každom polmetri. Z bodov vznikne IDW heatmapa s posuvníkom
cez pásma a odporúčanie najrovnejšieho miesta na sedenie.

Z log sweepu sa Farinovou dekonvolúciou vypočíta impulzná odozva: priamy zvuk,
prvý odraz a frekvenčná odozva aj s fázou, s nastaviteľným oknom gatingu
a vyhladzovaním od 1/3 do 1/24 oktávy. K tomu dozvuk po oktávach (EDT, T20,
T30), C50 a C80, Schroederova krivka, graf impulzu, ETC a spektrogram. Z toho
istého sweepu vyjde aj skreslenie HD2 a HD3. Keď je odraz bližšie, než ako dlho
impulz zvoní, oddeliť sa nedá — appka radšej nevráti nič, než by za stenu
označila bočný lalok.

Ľubovoľné dva body sa dajú porovnať, aj naprieč session. Von ide FRD pre REW
a VituixCAD, impulzy a celá session v JSON.

### Návrh sústavy

S LiDARom si cez RoomPlan vezme geometriu miestnosti, modálnou sumáciou vypočíta
módy, softvérovo prejde „subwoofer crawl“, zrkadlením nájde body prvých odrazov
a skontroluje uhly voči Dolby. Vie z toho vygenerovať nastavenie pre Integru
DRX-8.4 vrátane jej pätnástich EQ pásiem.

Na mieste poslucháča sa každý kanál zmeria sweepom zvlášť. EQ vychádza z priemeru
bodov okolo poslucháča; pásmo, ktoré sa medzi nimi líši o viac než 6 dB, dostane
len polovičnú korekciu. Reže sa voľne, zdvíha sotva a nad Schroederovu frekvenciu
sa nesiaha. Náhľad ukáže stav pred, cieľ a predpoveď po, cieľová krivka sa dá
upraviť. Druhé meranie po zadaní EQ do prijímača ukáže, čo jeho filter naozaj
urobil.

### Čo appka hovorí nahlas

Jeden mikrofón nevie lokalizovať zdroj, takže sa ukladá len pozícia telefónu,
nikdy orientácia ako smer zvuku. Keď si systém signál potichu upraví — AGC,
potlačenie šumu, echo cancellation — natívna vrstva hlási späť, čo naozaj
povolil: meranie cez AGC nie je horšie meranie, je to meranie AGC. Bluetooth
mikrofón sa deteguje a appka naň upozorní.

### Čo vedome chýba

Prehrávanie signálu z telefónu. Reproduktor telefónu končí okolo 500 Hz, teda
nad každým módom, ktorý by stálo za to hľadať — export WAV do poriadnej sústavy
je jediná cesta, ktorá dáva zmysel.

RoomPlan na Androide neexistuje. Namiesto neho sa boxujú vertikálne roviny
z ARCore: vidia steny, na ktoré sa kamera pozerala, málokedy rohy, nikdy za
nábytkom. Na pomenovanie módu to stačí, na body odrazov nie — a geometria to
o sebe nesie.

Fázová korekcia, parametrický EQ a viac subwooferov. Prijímač berie len
vzdialenosť a pätnásť grafických pásiem; na viac je potrebný externý DSP a FRD
export do REW.
