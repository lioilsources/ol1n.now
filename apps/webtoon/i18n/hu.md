---
tagline: Álló képregények internet nélkül is — ingyenes történetek, lapozgatós könyvek, ahol te döntesz, és életre kelő panelek
visuals: {n} kép — panelek öt gyerektörténetből, két stílus összevetése és character sheetek.
---
A Toonfork (munkacímén Webtoon) álló formátumú képregényolvasó, amely internet nélkül is működik. Telepítés után rögtön 15 ingyenes történet van benne, fiók és regisztráció nélkül. A történetek saját GPU-szerveren készülnek: egy nyelvi modell írja a forgatókönyvet, egy képmodell rajzolja a paneleket, a szöveges buborékokat pedig csak az olvasó teszi rá, így a szöveg kijavítható a kép újragenerálása nélkül.

Öt gyerektörténet kész csíkjai a Strips aloldalon vannak, a rész végi választásos játékhurok a Gamebook aloldalon.

### Olvasó

Egy történet egyetlen hosszú panelsáv buborékokkal, gondolatokkal, kiáltásokkal és hanghatásokkal, amelyet hüvelykujjal görgetsz fentről lefelé. Egyes panelek rövid hurkokban kelnek életre: eső az ablakon, fény a víztükrön, szél a hajban. A rész végén látod, mit választottak, és a **Következő rész** gombot. Az utolsó rész után jön a **Vége** és egy javaslat a következő történetre.

### Lapozgatós könyvek

A lapozgatós könyvben te döntesz a cselekményről. Minden rész végén kiválasztod, mi legyen tovább, és a történet elágazik. Az app megjegyzi, hol tartasz, merre jártál és milyen befejezéseket találtál; az útvonaltérkép csak azt mutatja, ahol már jártál. Kezdheted elölről, vagy visszaléphetsz egyet. A lapozgatós könyvek ingyenesek: gyerekeknek a **Sara and the Black Crown**, felnőtteknek például a pszichológusi rendelőben játszódó kamaradráma, a **Learning to Be Silent**, a **Metal Sky Above Us** vagy a **The Blooming Meadow That Turned Grey**. A drámák nehéz témákat feszegetnek, ezért a gyerekprofil elrejti őket.

Bétában van az ágszerkesztő: bármelyik választáshoz hozzáadhatod a saját folytatásodat, összerakod a lapozgatós könyv képeiből, és megírod a buborékokat. Az ágat rögtön végigjátszhatod, és megosztással elküldheted a szerzőnek, szerver nélkül.

### Csomagok

Opcionális csomagok legfeljebb 50 történettel bővítik a kínálatot: **Romantika** (könnyed szerelmes történetek felnőtteknek, explicit jelenetek nélkül), **Gyerekeknek** és **Szuperhősök**. A csomag vásárlás után letöltődik, és offline olvasható. Egyetlen vásárlás mindent felold, a később megjelenő csomagokat is.

### Profil és szülői zár

Első indításkor a **Gyerekek** vagy a **Felnőttek** profilt választod. A gyerekprofil elrejti a romantikát és a drámákat a könyvtárban és a boltban is. Minden vásárlást és a Felnőttek profilra váltást szülői zár védi egy szorzótáblás feladattal.

### 12 nyelv

A történetek, a lapozgatós könyvek és az olvasó szövegei 12 nyelven érhetők el: cseh, angol, német, francia, olasz, lengyel, brazíliai portugál, japán, koreai, vietnámi, orosz és ukrán. A buborékok nyelvét a Beállításokban váltod.

### Adatvédelem

Nincs fiók, nincs reklám, nincs követés. A Toonfork nem gyűjt személyes adatokat; hogy mit vettél meg, azt az eszköz jegyzi meg, a vásárlásokat pedig a Beállításokban állíthatod vissza.

## Studio: így készülnek a történetek

Ugyanennek az appnak a másik arca a szerzőknek szóló Studio. A szerző világot épít: lore-t, szereplőket, helyszíneket és egy kánont, amelyen minden történetnek át kell haladnia. A Studióban interaktívan is lehet játszani: a rész végén az olvasó kiválasztja, mit tegyen tovább a szereplő, vagy saját szavaival írja meg, és a választásból születik a következő rész. A saját szöveg előbb moderáláson megy át; gyerekvilágban ez szigorúbb, és kétség esetén inkább elutasít. Az oldalon látható képernyőképek a Studióból valók.

### Világszerkesztő

A szerzőnek az appban ott van az **Alkotás** lap:

- **Alapok:** cím, szinopszis, hangvétel, nyelv, közönség (Gyerekeknek, 13 éves kortól, Felnőtteknek), láthatóság és egy képi stílus, amely az egész világra érvényes.
- **Lore és kánon:** a világ szabályai, frakciók, rögzített sorrendű kánoni csomópontok és korlátok, vagyis ami nem történhet meg.
- **Szereplők és helyszínek:** leírás saját szavakkal. Ebből egy LLM rögzített booru-tageket javasol a képmodellnek. Azokat a tageket, amelyeket a modell nem ismer, a WD14 szókincse alapján kiszűri, a többit a szerző finomítja.
- **Character sheet:** a szereplő négy változata fehér háttéren. Amelyik a legjobban illik a tagekhez, az lesz a referenciakép.
- **Áttekintés:** kampányok, hol hagyták abba az olvasók, mit választottak, és meddig jutottak a kánonban.

### Modellek

- **Forgatókönyv és moderálás:** Qwen3.6-35B-A3B vLLM-en át. Szereplőkhöz és helyszínekhez tageket javasol, a részekhez storyboardot ír (6–8 panel, 2–3 választás és egy mező saját szövegnek). Utána egy validátor ellenőrzi a szereplőket, a helyszíneket és a világ szabályait.
- **Panelek:** SDXL ComfyUI-on át. Alapértelmezés a NoobAI-XL eps 1.1, a második stílus a Hassaku XL (Illustrious) 3.4. Emberi szereplőket csak ezek a modellek rajzolnak.
- **Élő panelek:** a Wan 2.2 egy kész panelből 1–3 mp-es hurkot készít, részenként legfeljebb két mozgó panellel.
- **Tartalomellenőrzés:** a WD14 tagger (SmilingWolf/wd-swinv2-tagger-v3). Minden panelt átnéz, és a közönségtől függően eldobja, majd új seeddel újrarajzolja. Gyerekeknél ráadásul elutasítja a testhezálló és kihívó ruhát. Ugyanez a tagger méri, hogy a panelen lévő szereplő megfelel-e a saját tervének.

A szereplő identitását kizárólag a tagek tartják. Az IP-Adapter elő van készítve, de az első mérésben inkább rontotta a képet. A modell nem tud két emberi szereplőt egy beállításban tartani, felcseréli a hajukat és a ruhájukat. Ezért a gyerektörténetekben minden szereplő saját panelt kap.

### Stílusok

A stílus egy elnevezett preset: checkpoint, sampler, lépésszám, CFG és esztétikai tagek. A szerző egyszer választja ki az egész világra. A **clean_webtoon_noartist** sík színeket és tiszta vonalat ad, a **hassaku_soft** lágy árnyékolást és pasztellszíneket. A vizuálokban ugyanaz a rész mindkét stílusban egymás mellett látható.

### Állapot

A Toonfork alfa állapotban van: az Android-verzió a Google Playen van, a macOS-build letölthető a GitHubról, az App Store előkészítés alatt áll. A Studio csak a saját backendjével fut (Go, Postgresben tárolt feladatsorral), nyilvánosan nem érhető el. A képek és a szövegek saját GPU-szerveren készülnek.

A képernyőképek a Studio webes változatából valók, telefonszélességben, helyi backenddel. A 2. részeknek ezeken még csak forgatókönyvük van, a panelek rajzolásra várnak. A forráskód itt található: [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
