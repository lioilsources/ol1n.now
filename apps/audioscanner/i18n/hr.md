---
tagline: Akustička karta tvoje sobe iz mikrofona mobitela
---
Pustiš testni signal kroz zvučnike, prođeš sobom s mobitelom i u svakoj se točki
izmjeri spektar. AR praćenje pritom bilježi gdje stojiš. Rezultat je toplinska
karta na tlocrtu: gdje bas tutnji, gdje nestaje, gdje staviti zvučnike, a gdje
slušatelja.

**Nije zamjena za REW s kalibriranim mikrofonom.** To je relativan alat — razlike
između mjesta u istoj sobi. Apsolutni SPL iz nekalibriranog mobitela ne postoji
i aplikacija ga nigdje ne tvrdi.

### Mjerenje

SPL metar i RTA u trideset i jednom tercnom pojasu od 20 Hz do 20 kHz, FFT 8192
s Hannovim prozorom i energetskim usrednjavanjem. Testni signali izvoze se u WAV —
ružičasti šum i logaritamski sweep, lijevi i desni kanal zasebno.

RTA ima peak hold, krivulje maksimuma i minimuma te zamrzavanje; zamrznuti prikaz
može se spremiti kao točka. Može se učitati kalibracijska datoteka mikrofona
(UMIK ili REW) i SPL pomak, ali oni nikad ne mijenjaju spremljene podatke.

Točku izmjeriš dodirom, uz tri sekunde usrednjavanja, ili pustiš aplikaciju da
mjeri kontinuirano svakih pola metra. Od točaka nastaje IDW toplinska karta
s klizačem kroz pojaseve i preporuka najravnijeg mjesta za sjedenje.

Iz logaritamskog sweepa Farinina dekonvolucija izračuna impulsni odziv: izravni
zvuk, prvu refleksiju i frekvencijski odziv zajedno s fazom, s podesivim
gating prozorom i zaglađivanjem od 1/3 do 1/24 oktave. Uz to opadanje po
oktavama (EDT, T20, T30), C50 i C80, Schroederova krivulja, graf impulsa, ETC
i spektrogram. Iz istog sweepa dobije se i izobličenje HD2 i HD3. Kad refleksija
stigne prije nego što impuls prestane zvoniti, ne može se odvojiti — aplikacija
radije ne vrati ništa nego da bočnu laticu proglasi zidom.

Bilo koje dvije točke mogu se usporediti, i između sesija. Izvozi se FRD za REW
i VituixCAD, impulsi i cijela sesija u JSON-u.

### Projektiranje sustava

S LiDAR-om preko RoomPlana preuzme geometriju sobe, modalnim zbrajanjem izračuna
modove, softverski odradi „subwoofer crawl”, zrcaljenjem pronađe točke prvih
refleksija i provjeri kutove prema Dolbyju. Iz toga može generirati postavke za
Integru DRX-8.4, uključujući njezinih petnaest EQ pojaseva.

Na mjestu slušanja svaki se kanal mjeri zasebnim sweepom. EQ polazi od prosjeka
točaka oko slušatelja; pojas koji se među njima razlikuje za više od 6 dB dobije
samo pola korekcije. Reže se slobodno, podiže jedva, a iznad Schroederove
frekvencije ne dira se ništa. Pregled pokazuje stanje prije, cilj i predviđeno
stanje poslije, a ciljna krivulja može se urediti. Drugo mjerenje nakon unosa EQ-a
u receiver pokaže što je njegov filtar stvarno napravio.

### Što aplikacija govori otvoreno

Jedan mikrofon ne može locirati izvor, pa se sprema samo položaj mobitela, nikad
njegova orijentacija kao smjer zvuka. Kad sustav potiho obradi signal — AGC,
potiskivanje šuma, poništavanje jeke — nativni sloj javlja što je stvarno
uključio: mjerenje kroz AGC nije lošije mjerenje, to je mjerenje AGC-a.
Bluetooth mikrofon se prepoznaje i dobiva upozorenje.

### Što namjerno nedostaje

Reprodukcija signala s mobitela. Zvučnik mobitela završava oko 500 Hz, dakle
iznad svakog moda koji bi vrijedilo tražiti — izvoz WAV-a na pravi sustav jedini
je put koji ima smisla.

RoomPlan na Androidu ne postoji. Umjesto njega vertikalne ravnine iz ARCorea
slažu se u kutiju: vide zidove u koje je kamera gledala, rijetko kutove, nikad
iza namještaja. Za imenovanje moda to je dovoljno, za točke refleksija nije —
i geometrija tu informaciju nosi sa sobom.

Fazna korekcija, parametarski EQ i više subwoofera. Receiver prima samo
udaljenost i petnaest grafičkih pojaseva; za više je potreban vanjski DSP
i FRD izvoz u REW.
