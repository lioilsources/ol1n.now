---
tagline: Munkaidő-nyilvántartás munkánként, ami ellenőrzi a helyszínt — és nem menti a helyzeted
---
Az építőipari cégek és a szervizcsapatok ma is papíron, WhatsAppon és Excelben jelentik az óráikat. A vezető nem tudja ellenőrizni, ki hol volt, a dolgozó pedig nem tudja igazolni a túlórát. A PMTracker egy adott munkán méri az időt, és minden bejegyzésnél tudja, hogy az illető tényleg a helyszínen volt-e.

### Helyadat csak kétszer, aztán törlődik

A koordináták **csak a mérés indításakor és leállításakor** mennek el. A szerver ellenőrzi, hogy a pont a munka geokerítésén belül van-e, egyetlen adatot ment el – „a helyszínen volt / nem volt” –, a koordinátákat pedig eldobja. Nincs mozgástérkép, nincs háttérkövetés. A geokerítésen kívüli munka kivétellel engedélyezhető, ami bekerül az auditnaplóba.

### A szerepköröket az adatbázis őrzi, nem az app

A csapattag azokon a munkákon méri az idejét, amelyekhez be van osztva. A vezető ezenfelül kezeli a munkákat és a beosztást, és látja a riportokat. Az adminisztrátor a felhasználókat kezeli. A jogosultságokat szabályok érvényesítik közvetlenül az adatbázisban, így még egy módosított kliens sem tudja megkerülni őket.

### Állapot

Ez egy MVP: kész az adatmodell, a szerepkörök, a geokerítés-ellenőrzés, valamint a bejelentkezés, mérés, munkák, beosztás, riportok és adminisztráció képernyői. A térerő nélküli építkezésekhez szánt offline mód elő van készítve, de még nincs bekapcsolva, és az app még egyetlen cégnél sem fut. A bejelentkezéshez a munkáltatódtól kapott fiók kell.

### Bétatesztelőknek

A tesztverzió egyelőre csak **Androidra** érhető el. Egy tesztcéggel, a „Stavby s.r.o.”-val fut, kitalált emberekkel és két munkával: irodafelújítás a prágai Vencel téren és klímaszerelés a brnói Szabadság téren. Az adatok bármikor törlődhetnek. Az appban nincs regisztráció; a fiókot az küldi el neked, aki meghívott tesztelni.

**Telepítés**

1. A telefonon töltsd le az APK-t a fenti **Letöltések** rész gombjával (vagy a [GitHub Releases](https://github.com/lioilsources/PMTracker/releases) oldalról).
2. Nyisd meg a letöltött fájlt, és engedélyezd az ismeretlen forrásból való telepítést, amikor az Android rákérdez.
3. A Google Play Protect figyelmeztethet, hogy nem ismeri az appot. Ez azért van, mert nem a Google Playről jön; válaszd a telepítést így is.
4. Indítsd el a **PMTracker**t, és jelentkezz be az üzenetben kapott fiókkal.

**Mit próbálj ki csapattagként**

- A **Výkaz** (Munkaidőlap) fülön nyomd meg a **Zahájit výkaz** (Munkaidőlap indítása) gombot, válassz munkát, és engedélyezd a helyhozzáférést. A munka helyszínén az idő alatt megjelenik a zöld „Na místě” (A helyszínen).
- Ha nem vagy a helyszínen, az app indoklást kér. Ez rendben van: írd be például, hogy „test”, és a bejegyzés azzal a megjegyzéssel mentődik, hogy a helyszínen kívül készült.
- Egy idő után állítsd le a mérést az **Ukončit výkaz** (Munkaidőlap lezárása) gombbal. A „Dnes celkem” (Ma összesen) megnő.
- A **Zakázky** (Munkák) fülön nyisd meg a részleteket: cím, a geokerítés mérete, ki van beosztva és a feladatlista.

**Mit próbálj ki vezetőként**

- Ezenfelül látod a **Roster** (a csapatod) és a **Reporty** (Riportok) fület az emberek ledolgozott idejével munkánként. A riportba csak a leállított mérések számítanak bele; az időszakot jobb felül változtathatod.
- Fiókot kijelentkezéssel válthatsz (ikon jobb felül a **Výkaz** fülön).

**Mire még ne számíts**

- Internet nélkül az app nem működik, az offline mód később jön.
- Az elfelejtett mérés nem áll le magától, állítsd le kézzel.
- iPhone-verzió a tesztelőknek még nincs.

A hibát vagy ötletet küldd el annak, aki meghívott: mit csináltál, mi történt és melyik fiókkal. Egy képernyőkép sokat segít.
