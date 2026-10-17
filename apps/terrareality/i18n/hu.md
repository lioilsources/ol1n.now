---
tagline: Lakásbérlés a térképes kereséstől a kifizetett bérleti díjig — bérbeadóknak, bérlőknek és az üzemeltetőnek
---
A TerraReality lakások és szobák hosszú távú bérbeadására szolgáló platform.
Prágában és környékén indul, adatmodellje azonban az első naptól kész további
közép-európai országokra is (a szerződésre irányadó jog, pénznem, nyelv).
Egy hirdetési portállal ellentétben nem áll meg a kapcsolatfelvételnél: a
bérbeadót és a bérlőt a teljes bérleti folyamaton végigvezeti — keresés,
üzenetek, jelentkezés, megtekintés, szerződés és aláírás, egészen a fizetésekig
és azok nyomon követéséig.

A platformnak négy arca van. **A lakáskeresők** térképen keresnek, vagy
egyszerűen leírják, mit szeretnének. **A bérbeadók és ingatlankezelők** egy
webáruház mintájára felépített adminfelületet kapnak: hirdetések, jelentkezők,
szerződések, bank, portfólió és számlázás. **A bérlők** bérlői portált kapnak a
szerződéssel, a fizetésekkel és a QR-kódokkal. **Az üzemeltető** backofficeot
kap a jóváhagyásokhoz, a moderáláshoz és a beállításokhoz. Mindehhez iOS- és
Android-mobilalkalmazás társul.

A képernyőképek a fejlesztői környezetből, tesztadatokkal készültek: a nevek
kitaláltak, a lakásfotók illusztrációk, az AI-javaslatok pedig offline módban,
nyelvi modell nélkül születtek. Maga az alkalmazás cseh nyelvű, angol nyelven
is elérhető.

### Keresés térképen és chatben

A térkép a régiótól a településen és a városrészen át egészen az utcáig
nagyítható, és minden nagyítási szinten mutatja, hány ajánlat van az adott
helyen. Mellette szűrők találhatók (típus, ár, alapterület, elrendezés,
berendezés, háziállat, közlekedés), minden lehetőség mellett a találatok
számával. Aki nem szeretne kattintgatni, beírhat például ilyesmit: „2+kk
(két szoba + konyhasarok) 25 000-ig Prága 6-ban, kutyával és erkéllyel” — a
platform a mondatból beállítja a szűrőket és a térképkivágást, és megmutatja,
hogyan értelmezte. A keresések elmenthetők, az új, megfelelő ajánlatokról
értesítés érkezik.

### Hirdetések AI-segítséggel — mindig emberi jóváhagyással

A bérbeadó megadja a címet a hivatalos címnyilvántartásból (RÚIAN), a
paramétereket, a fotókat és a szöveget. Az AI a leírás és a fotók alapján
paramétereket javasolhat (lift, erkély, épülettípus…), és megírhatja a
hirdetés szövegét csehül és angolul. Egy javaslat azonban soha nem mentődik el
magától: a bérbeadó látja, mit javasol az AI, bejelöli, ami helytálló, és csak
ezután kerül alkalmazásra. A hirdetést megjelenése előtt egy ember hagyja jóvá
a backofficeban. A bérbeadók szűrőkérdéseket is megadhatnak a jelentkezőknek
(például „Van háziállata?”).

### Üzenetek

A lakáskeresők közvetlenül a hirdetésből írhatnak a bérbeadónak. Az üzenetek
valós időben érkeznek, olvasási visszaigazolással és mellékletekkel. A
szövegben szereplő telefonszámokat és e-mail-címeket a platform a szerződés
aláírásáig elrejti, hogy se a megállapodás, se a pénz ne kerüljön a platformon
kívülre — a lakáskereső pedig figyelmeztetést lát, hogy a megtekintés előtt ne
fizessen semmit. Aki nincs online, push-értesítést vagy e-mailt kap. A gyanús
beszélgetés egyetlen kattintással jelenthető.

### Jelentkezések, lakótársak és a bérlő kiválasztása

A lakáskereső egyedül vagy lakótársak csoportja nevében jelentkezhet: létrehoz
egy csoportot, e-mailben meghívja a többieket, a csoportos chatben megbeszélik
a dolgot, és a jelentkezés csak akkor jut el a bérbeadóhoz, ha mindenki
egyetértett. A bérbeadó látja a jelentkezőket a szűrőkérdésekre adott
válaszaikkal, az ellenőrzésük állapotával és egy rövid AI-összefoglalóval
(ez is csak javaslat). Védett adatokat, például életkort, nemet vagy
állampolgárságot a platform soha nem gyűjt. Amikor a bérbeadó kiválaszt
valakit, a többiek udvarias automatikus választ kapnak.

### Megtekintések

A bérbeadó megtekintési időpontokat hirdet meg férőhellyel és megjegyzéssel
(„találkozó a bejáratnál”); a jelentkezők közvetlenül a jelentkezésben
foglalhatják le, helyezhetik át vagy mondhatják le őket, és emlékeztetőt kapnak.

### Digitális szerződés és aláírás

A szerződés sablonból készül (határozott vagy határozatlan idejű lakásbérlet,
lakótársak közös bérlete, szoba), és az ajánlat adataival töltődik ki. Az
űrlapból PDF készül, mindkét fél online írja alá, és minden esemény — tervezet,
aláírás, fizetés, felmondás — egy auditláncba kerül, amelyben minden bejegyzés
hash-sel kapcsolódik az előzőhöz. Az előzmények utólagos módosítása így nem
leplezhető; a szerződés oldala mutatja, hogy a lánc sértetlen. A felmondást és
a kaució elszámolását is kezeli a platform.

Amíg jogász nem vizsgálta át őket, a sablonok TERVEZET vízjelet viselnek, az
aláírás pedig egyelőre egyszerű elektronikus aláírás bizonyítékokkal
(időpont, IP-cím, a dokumentum ujjlenyomata). A Bank iD-s aláírás következő
lépésként elő van készítve, és a Bank iD-vel kötendő szerződésre vár.

### Fizetések — a pénz közvetlenül a bérbeadóhoz kerül

A szerződésből fizetési ütemterv készül: kaució, bérleti díj és rezsielőleg,
lakótársak esetén részesedés szerint felosztva. A bérlők QR-kóddal fizetnek a
banki alkalmazásukban, vagy kártyával egy Revolut Business linken keresztül,
amely a bérbeadó saját kereskedői számlájára vezet. A bérbeadó (csak olvasási
joggal) összekapcsolhatja bankszámláját, a beérkező fizetések pedig
automatikusan párosulnak a variabilis szimbólum, a specifikus szimbólum és az
összeg alapján; ami nem illeszkedik, kézi párosítási javaslatként marad meg. A
határidő lejárta után emlékeztetők mennek ki, hét nap elteltével pedig
eszkaláció következik.

**A TerraReality soha nem tartja magánál és nem továbbítja a bérlők pénzét.**
Nincs letéti számla, nincs kriptovaluta — a fizetések közvetlenül a bérlő
számlájáról a bérbeadó számlájára érkeznek.

### Portfólió városokon átívelően és a bérletek kockázata

Több lakással rendelkező bérbeadóknak és kezelőknek: az összes bérlet
településenként, a havi előírás és a ténylegesen befolyt összeg, tizenkét
hónapos trend, a figyelmet igénylő tételek listája (tartozás, eszkaláció,
felmondás, üres egység), a bevételek koncentrációja és bérleti jegyzék (rent
roll) CSV- és Excel-exporttal. Minden bérletnek szabályokból számított
kockázati pontszáma van (tartozás, régi kifizetetlen tételek, kaucióval való
fedezettség, a szerződés közelgő lejárta…). A pontszám csak tájékoztató
jellegű, és soha nem dönt senkiről; a bérlők láthatják, miből tevődik össze. A
szabályok (emlékeztetők, eszkaláció, kaució, felmondási idő) településenként
állíthatók be, egy befektető pedig csak olvasási hozzáférést kaphat, amelyben
a bérlők csak monogrammal jelennek meg.

### Kiemelés és számlázás

A bérbeadók előresorolhatják vagy kiemelhetik hirdetésüket. Kártyával fizetnek
a Stripe-on keresztül, az áfás számla automatikusan kiállításra kerül, e-mailben
megérkezik, és az adminfelületen is elérhető. A kiemelt hirdetések jelölve
vannak a találatok között.

### Backoffice, moderálás és a DSA

Az üzemeltető mutatószám-áttekintést, jóváhagyásra váró hirdetések sorát, a
jelentett beszélgetések és hirdetések moderálását, új paraméterekre vonatkozó
AI-javaslatok sorát, a kiemelések árlistáját, szerződéssablonokat,
funkciókapcsolókat és auditnaplót kap. Hirdetést bárki jelenthet, akár fiók
nélkül is (ahogy azt a digitális szolgáltatásokról szóló uniós rendelet, a DSA
előírja); minden esetben ember dönt, és az indoklást e-mailben megkapja a
bejelentő és a hirdető is. A támogatás céljából történő, „felhasználóként”
való bejelentkezéshez indoklás szükséges, és az auditnaplóba kerül.

### Mobilalkalmazás

Az iOS-re és Androidra készült Flutter-alkalmazás lefedi mindazt, amire egy
bérlőnek a telefonján szüksége van: keresés listával és térképpel, a hirdetés
részletei üzenetküldéssel, jelentkezéssel és megtekintés foglalásával, saját
megtekintések, a bérlet QR-fizetéssel és Revolut-linkkel, valamint mélylinkek a
push-értesítésekből. Ez az első verzió; a tesztelőknek szánt buildek
(TestFlight és Google Play belső tesztelési sáv) a tesztelés előkészítésének
részét képezik.

### Üzemeltetés

Az éles környezet az EU-ban működő Hetznerre van előkészítve: külön alkalmazás-
és adatbázisszerver privát hálózatban, automatikus HTTPS, adatbázis-mentések
tetszőleges időpontra történő visszaállítással (legfeljebb egy órányi
adatvesztés) és ellenőrzött visszaállítási gyakorlattal, riasztásokkal ellátott
monitorozás (99,9 %-os rendelkezésre állás, 300 ms alatti keresési válaszidő,
a mentések állapota) és hibajelentés. Az AI saját GPU-szerveren fut; ha az AI
nem érhető el, minden működik nélküle is.

### Állapot és tesztelés

**A teljes platform MVP-je elkészült.** A fenti modulok mindegyike meg van
valósítva és automatizált tesztekkel lefedve — egység-, integrációs és
end-to-end tesztekkel, amelyek böngészőben kattintják végig a teljes
forgatókönyveket (hirdetés, üzenetek, csoportos jelentkezés, szerződés
aláírással és párosított fizetéssel, portfólió, kiemelés számlával,
DSA-bejelentés, backoffice). Az adatbázis mentésből való visszaállítását is
ellenőriztük.

**Folyamatban van a pilot előtti megerősítés**: a kódellenőrzés során javasolt
biztonsági és üzemeltetési fejlesztések, értesítések a jelentkezésekhez,
szerződésekhez és fizetésekhez, valamint a tesztkörnyezet. Valódi szerveren
még semmi sem fut — a telepítés fiókokra és hozzáférésekre vár (lásd alább).

A valódi emberekkel végzett tesztelés öt szakaszban zajlik. Mindegyik egy
kapuval zárul, ahol közösen döntünk arról, hogy továbblépünk-e:

1. **T0 — előkészítés (2 hét).** Tesztkörnyezet a Hetzneren „Tesztkörnyezet”
   sávval, partnerek sandbox módban (Stripe, Revolut, Bank iD), személyes adatok
   nélküli termékanalitika, „Probléma / ötlet jelentése” gomb a weben és az
   alkalmazásban, csak meghívóval történő regisztráció, tesztadatok és
   alkalmazásbuildek a tesztelőknek.
2. **T1 — belső tesztelés (1 hét).** 5–8 fő a csapatból és annak köréből
   végigmegy minden forgatókönyvön bérbeadóként és lakáskeresőként is, több
   eszközön, beleértve egy incidensgyakorlatot és egy mentésből való
   visszaállítást.
3. **T2 — moderált használhatósági tesztek (2 hét).** 12 résztvevő:
   magánbérbeadók, egy több városban lakásokkal rendelkező ingatlankezelő, cseh
   és külföldi lakáskeresők, valamint egy lakótárspár. A feladatok sikerességét
   és az elégedettséget (SUS ≥ 70) mérjük.
4. **T3 — zárt pilot Prágában (6 hét).** 20 pilot bérbeadó személyes
   bevezetéssel és 50–100 lakáskereső, kizárólag meghívóval. Figyeljük, hogy a
   hirdetések kapnak-e jelentkezéseket, milyen gyorsan válaszolnak a
   bérbeadók, hány szerződés jön létre digitálisan, és mennyire megbízhatóan
   működik minden; hetente egy kiadás.
5. **T4 — nyílt béta Prágában (4 hét).** Mindenki számára nyitott regisztráció
   béta címkével, fizetett kampány nélkül — a végén döntés a nyilvános
   indulásról.

Összesen mintegy 15 hét az előkészítés kezdetétől.

**Amire Önöktől szükségünk van:**

- fiókok és hozzáférések az üzemeltetéshez: Hetzner, a domain és a DNS, Apple
  és Google fejlesztői fiókok, Stripe, Revolut Business, Bank iD és a banki
  adatszolgáltató;
- tesztelők, 20 pilot bérbeadó és lakáskeresők toborzása, a résztvevők
  jutalmazása;
- a felhasználási feltételek, az adatvédelmi tájékoztató és a
  szerződéssablonok jogi felülvizsgálata, a tesztelők hozzájárulásai, valamint
  döntés arról, hogy a pilot során valódi szerződéseket írnak-e alá a
  platformon;
- penetrációs teszt a pilot előtt, az interjúk vezetése a T2-ben és első
  szintű ügyfélszolgálat a pilot idején;
- döntés minden kapunál a szakaszok között.
