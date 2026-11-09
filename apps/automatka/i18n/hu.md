---
tagline: A gyerek a különórán megnyomja: „Itt vagyok”, és te tudod. Helykövetés nélkül
---
Az Automatka azoknak a szülőknek szól, akiknek a gyereke már egyedül jár
különórára, edzésre. A helyszínen a gyerek megnyom egyetlen nagy gombot, **Itt
vagyok**, a szerver ellenőrzi, hogy tényleg a csarnoknál vagy az ifjúsági
háznál áll, a szülő pedig értesítést kap. Ha a gyerek a foglalkozás kezdetéig
nem jelentkezik be, arról is jön értesítés. Ennyi: se térkép, se háttérben
futó követés.

### Helyadat csak gombnyomásra

A koordináták csak abban a pillanatban hagyják el a telefont, amikor a gyerek
megnyomja a gombot. A szerver összeveti őket a foglalkozás helyével, csak annyit
tárol, hogy „ott volt / nem volt ott”, a koordinátákat pedig eldobja. A szülő
így nem látja, merre ment a gyerek, csak azt, hogy megérkezett, elindult és
otthon van.

### A gyereknek

- **Itt vagyok**, aztán **Indulok** és **Otthon vagyok**. Nagy gombok, nincs
  menü.
- Az **SOS**-t két másodpercig kell nyomva tartani, hogy ne induljon el a
  zsebben.
- Térerő nélkül a gombnyomás elmentődik, és elküldődik, amint a telefon újra
  kapcsolódik.
- Ha a telefon nem tudja meghatározni a helyet, a bejelentkezés akkor is
  működik. A szülő ilyenkor látja, hogy az érkezést nem igazolta helyadat.
- Nincs fiók és jelszó. A gyerek a szülőtől kapott hatjegyű kóddal vagy
  QR-kóddal párosít, a szülő pedig bármikor megszüntetheti a párosítást.

### A szülőknek

A napi áttekintés minden gyereket és a foglalkozásait mutatja: várakozás, ott
van, elment. A „nem jelentkezett be” figyelmeztetés eltűnik, amint a gyerek
bejelentkezik, vagy a szülő tudomásul veszi. A másik szülő vagy a nagymama
ugyanezt látja. A szerver ki tudja exportálni a családot, vagy fiókokkal együtt
teljesen törölni; erre még nincs gomb az appban.

### Állapot

Az Automatka a 0. fázisban tart: azt ellenőrizzük, hogy a párosítás, a push, az
offline mód és a GPS a csarnokokban működik-e valódi telefonokon és órákon. A
backend és a gyerek- meg szülőképernyők készen állnak, és átmentek a teszteken
egy helyi szerveren. A helyek és foglalkozások kezelése az appban, a meghívók a
másik szülőnek és az órás app csak ezután jönnek. Egyelőre nincs mit letölteni.
