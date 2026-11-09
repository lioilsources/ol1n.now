---
tagline: AI-csevegés szerepekkel, Könyvtáros és Jogász, stúdió képhez, videóhoz, meséhez, zenéhez és hanghoz
---
Az Ol1nLLM egyetlen app a saját szervered fölött: beszélget, keres egy könyvtárban és a törvényekben, rajzol, videóvá mozdít egy képet, mesét forgat, zenét szerez, és a válaszokat felvett hangon olvassa fel.
Részletes, képernyőképes útmutató a [Mit tud az app](ol1nllm-features.html) oldalon található.

### Csevegés

A beszélgetés egy **szerep** kiválasztásával indul — tíz jellem az ötéves gyerektől a nagypapáig, és négy asszisztens saját adatokkal. A válasz folyamatosan íródik, a beszélgetés **elágaztatható**, a szerep pedig menet közben is cserélhető.

- **Könyvtáros** filozófiai és szent szövegek eredeti nyelvű korpuszából válaszol, és megmutatja a részleteket, amelyekből merített, cseh fordítással.
- **Jogász** a hatályos cseh törvényekből válaszol, és idézi a paragrafusokat.
- **Jogász – szerződések** sablonból szerződést készít: kártyánként kérdez, és figyel a törvényi korlátokra.
- **Leads** cégeket és intézményeket keres a cseh szerződésnyilvántartásban.

### Image Studio

A kép körökben készül, amelyek fát alkotnak: szöveg → kép, majd a kiválasztott változat szerkesztése. Tizenkilenc modell (FLUX, SDXL, anime vonalak), több mint háromszáz művészi **stílus** (kultúrák és korszakok, művészek, technikák), **póz**-sablonok, **LoRA**-k a szerverről, és csupa nagybetűvel írt negatív prompt.

- **Póz megtartása** és **Arc megtartása** — új figura a minta testtartásában, igény szerint annak arcával is.
- **Stílustérkép** — ugyanannak a témának több száz képe hasonlóság szerint rendezve; az ujjad végigsiklik a mozaikon, a stílus animációként változik, és a kiválasztottat használja.
- **Inpaint** — átfestesz egy területet, és leírod, mi legyen ott.
- **Fodrász** — új frizura vagy hajszín maszk rajzolása nélkül.
- **Megmozdítás** — képből rövid videó: táncok és gesztusok a szerverről, vagy a mozgás saját leírása.
- **3D** — nyomtatható modell (STL), vagy táncoló figura csontvázzal.

### Story Studio

Kiválasztasz egy mesét tíz forgatókönyv közül, saját képekkel kiosztod a szerepeket, a szerver pedig egyperces animációs videót készít belőle narrátorral, zenével és felirattal. A jeleneteket animálás előtt ellenőrizheted, a sikerteleneket pedig újrarajzoltathatod.

### Music Studio

Adj a stúdiónak egy zenei mintát — fájlból vagy mikrofonnal felvéve —, és kiolvassa belőle a műfajt, a tempót és a hangnemet. A **Vibe** új darabot szerez ugyanabban a szellemben, a **Groove** az eredetit hangszereli át más műfajba.

### Voice Studio

Egy rövid felvételből — akár egy videó hangsávjából — saját **hang** születik. Bármelyik hang kipróbálható tetszőleges mondaton, és hozzárendelhető egy szerephez a csevegésben. A válasz alatti hangszóró ezután annak a szerepnek a hangján olvassa fel.

### Előzmények

A beszélgetések, munkamenetek, projektek és mesék a telefonon maradnak. A hosszú feladatok a szerveren futnak: az app bezárható, és visszatéréskor magától újracsatlakozik hozzájuk.

Flutterrel készült, mobilon és asztali gépen is fut. Az app a saját modellszervered kliense; nélküle semmit sem generál.
