---
tagline: Kapáslövés egyetlen ujjhúzással — hol találkozik a lábfej a labdával, mennyi csavarással és melyik ezredmásodpercben
---
A Fotball Simulator egyetlen mozdulatot szimulál: a kapáslövést. A labda eléd pattan, minden alkalommal másképp, te pedig egyetlen ujjhúzással kapura rúgod. Nincs csapat, nincs meccs, csak az a kérdés, hol és mikor találkozik a lábfejed a labdával. Minden más, a röppálya, a csavarás, a pattanás és az, hogy gól lesz-e, ebből következik a fizika révén.

### Egy húzás, négy döntés

A képernyő alján egy nagy labda van, és a rajta végighúzott ujj mindent egyszerre elmond:

- **Ahová az ujjadat teszed**, ott találja el a lábfej a labdát. A közép alatt a labda emelkedik, a közép fölött a földbe rúgod, oldalról pörgést kap.
- **A húzás íve** a csavarás. Minél jobban meggörbíted a húzást, annál jobban kanyarodik a labda repülés közben.
- **A húzás sebessége** a lövés ereje.
- **Az a pillanat, amikor elengeded**, az érintkezés pillanata. A kapáslövésnek van egy ablaka: a pattanás után a labda emelkedik, megáll és esik, az ideális pillanat pedig az, amikor lábfejmagasságba ereszkedik. A játék ezt előre tudja, mert a feldobáskor kiszámolja a labda röppályáját.

Az eltérést ezredmásodpercben mérjük. ±30 ms-ig PERFECT, aztán GOOD, LATE és EARLY. Késő az késő: a lábfej felülről találja el az eső labdát, az felső pörgést kap, és a földben köt ki, vagy rövid lesz. Aki egyáltalán nem találja el, a levegőbe rúg.

### Kimerevítés és repülés

Az érintkezés pillanatában a világ egy szempillantásra megáll. A labdán világít a pont, ahol a lábfej eltalálta, egy nyíl pedig mutatja, merre repül. Fent megjelenik a sebesség km/h-ban, a pörgés fordulat/másodpercben és az időzítés értékelése a pontos eltéréssel. Aztán a labda repül, mögötte csík húzódik, így látszik, hogyan kanyarodik. Az eredmény GÓL, MELLÉ vagy RÖVID, és kicsit később már pattan is a következő labda.

Ha több időre van szükséged, kapcsold be a **slow-mo**-t: amint az ujjad megérinti a képernyőt, a játék lelassul, hogy befejezhesd a húzást. Az időzítést viszont játékidőben méri, így a lassítással nem lehet csalni.

### Fizika

A labda röppályája saját számítás, nem egy motor fizikája: gravitáció, légellenállás, Magnus-hatás (ezért kanyarodik a pörgő labda) és a pörgés fokozatos csillapodása. A gyepről pattanás magasságot vesz el, a pörgés közben iránnyá alakul. Az érintkezés figyelembe veszi, milyen sebességgel érkezett a labda, így a gyengén megrúgott labda egyszerűen lepattan, ahelyett hogy a levegőben lógna. Az eredményeket automatikus tesztek őrzik, amelyek ugyanannak a modellnek egy független, Pythonban írt referencia-megvalósításával vetik össze őket.

A játék Godot 4.7-ben készült, a telefonra pedig a Flutterben újraírt változata kerül, ugyanazokkal az állandókkal és ugyanazokkal a tesztekkel. A jelenetet saját perspektivikus vetítés rajzolja, 3D-motor nélkül.

### Állapot

Elkészült az első fázis: játszható kör a feldobástól a lövésen, a kimerevítésen és a repülésen át az eredményig. A pálya és a kapu egyelőre egyszerű; hiányzik még egy láb, amely meglendül, egy háló, amely gólnál kidomborodik, és egy kamera, amely követi a labdát. Utána jön a játékérzet finomhangolása, a kapura lövések hőtérképe és a statisztikák.

Az alábbi APK tesztverzió (alfa). iPhone-ra egyelőre csak TestFlighton keresztül, tesztelőknek.
