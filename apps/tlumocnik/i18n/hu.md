---
tagline: Egy telefon az asztalon két ember között – mindenki a saját nyelvén beszél, az app pedig hangosan elmondja a fordítást a másiknak
---
A Tlumočník egy asztal körüli beszélgetéshez való: a hivatalban, a szervizben, az orvosnál, egy új kollégával. Leteszed a telefont középre, te csehül beszélsz, a másik mondjuk ukránul. Az app magától felismeri, ki beszél éppen, lefordítja, és hangosan elmondja a másiknak. Senki nem nyomkod semmit, és nem adjátok egymásnak a telefont.

### Kettéosztott képernyő

Az alsó fele a tiéd, a felső fejjel lefelé fordul a szemben ülőnek. Így mindenki a saját nyelvén olvas, és senkinek sem kell fejjel lefelé olvasnia. Nagy betűvel mindig az áll, amit az adott ember megért: a te mondataidnál az, amit mondtál, a másikéinál a fordításuk. Fölötte kisebb betűvel a másik változat, így látod, mi hangzott el pontosan. A szélén egy színes sáv mutatja, melyik oldal beszél éppen.

A fordítás szövege előbb jelenik meg, mint ahogy az app felolvassa. Ha nem akarod, hogy a telefon beszéljen, kapcsolj **Csak szöveg** módra, és a beszélgetés feliratként megy tovább.

### Ki beszél

Az app a hang és a nyelv alapján dönt. Pár mondat után megjegyzi, kinek milyen a hangja, addig pedig segít neki, hogy mindenki más nyelven beszél. Ha nem biztos, nem találgat: a mondatot fordítás nélkül mutatja mindkét felén, egy **Én voltam** gombbal. Aki mondta, rákoppint, és az app a jó irányba fordítja. A saját feled hosszan nyomva a beszélőt magad is kijelölheted.

Amíg a telefon beszél, a mikrofon nem figyel, hogy az app ne fordítsa saját magát.

### Három mód

- **Auto:** egyszerre egy ember beszél, és az app magától felismeri, ki mikor kezdte és fejezte be.
- **Nyomva tartva beszélj:** amíg beszélsz, a saját feleden tartod az ujjad. Zajban jön jól, ahol az automatika nem elég.
- **Élő:** beszéd közben folyamatos átirat jelenik meg.

### 13 nyelv

Cseh, angol, német, ukrán, vietnami, lengyel, szlovák, spanyol, francia, olasz, portugál, japán és kínai. A nyelvpárt indulás előtt választod ki, a legutóbb használtak a lista tetején vannak.

### Előzmények a telefonon

Minden beszélgetés bekerül az előzményekbe, minden mondat mellett az időponttal. Újra elolvashatod, kijelölheted a szöveget, és az egészet megoszthatod, például e-mailben megbeszélés jegyzőkönyveként. Az előzmények csak a telefonon vannak.

### Saját hang (kísérleti)

A fordítás a te hangodon is szólhat. Felveszel harminc másodperc folyamatos felolvasást, és az app ezután a mondataidat idegen nyelven a tiédhez hasonló hangon mondja el. A hang biometrikus adat, ezért felvenni csak bepipált hozzájárulással lehet, csak saját magadat veheted fel, és egy hang törlésekor a felvétel fizikailag is lekerül a szerverről. Legfeljebb öt hang lehet. A saját hang egyelőre csak meghívókóddal rendelkező tesztelőknek érhető el.

### Hozzáférés

Az appnak nincs fiókja: első indításkor a telefon magától regisztrálja magát eszközként. Kód nélkül alap hozzáférése van, napi korlátozott fordítási idővel. Az app szerzőjétől kapott meghívókód tesztelői hozzáférést nyit meg hosszabb fordítással és saját hanggal. Ha elfogynak a mai percek, az app szól, és holnap ismét fordít.

### Adatvédelem

A beszédfelismerés, a fordítás és a hang is a saját GPU-s szerverünkön fut, nem idegen felhőben. A szerver nem tárolja sem a hangot, sem a beszélgetések szövegét, és nem írja őket naplóba. Az appnak nincs fiókja, reklámja vagy harmadik féltől származó analitikája; a fejlesztő saját szerverére csak névtelen, azonosítók nélküli használati statisztikák mennek, és ezeket a Beállításokban kikapcsolhatod. A szerver miatt internetkapcsolat kell hozzá.

A Tlumočník egyelőre zárt tesztelésben van: iPhone-on TestFlighton, Androidon Firebase-en keresztül.
