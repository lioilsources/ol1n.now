---
slug: automatka
name: Automatka
repo: lioilsources/Automatka
tagline: Dítě na kroužku zmáčkne „Jsem tu“ a rodič to ví. Bez sledování polohy
order: 35
featured: false
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
desktop:
mobile: android,ios
artifacts:
appstore:
playstore:
testflight:
---
Automatka je pro rodiče, jejichž děti už jezdí na kroužky samy. Dítě na místě
zmáčkne jedno velké tlačítko **Jsem tu**, server ověří, že opravdu stojí u haly
nebo u DDM, a rodič dostane upozornění. Když se dítě do začátku kroužku
nepřihlásí, upozornění přijde taky. Nic víc: žádná mapa a žádné sledování na
pozadí.

### Poloha jen na stisk tlačítka

Souřadnice odejdou z telefonu jen ve chvíli, kdy dítě tlačítko zmáčkne. Server
je porovná s místem kroužku, uloží jen „byl / nebyl na místě" a souřadnice
zahodí. Rodič tak nevidí, kudy dítě šlo, jen že dorazilo, odešlo a je doma.

### Pro dítě

- **Jsem tu**, pak **Odcházím** a **Jsem doma**. Velká tlačítka, žádné menu.
- **SOS** se drží dvě sekundy, aby se nespustilo v kapse.
- Bez signálu se stisk uloží a odešle, jakmile se telefon připojí.
- Když telefon nezjistí polohu, jde se přihlásit i tak. Rodič pak vidí, že
  příchod nebyl ověřený polohou.
- Žádný účet ani heslo. Dítě se spáruje šestimístným kódem nebo QR kódem od
  rodiče a rodič zařízení kdykoli odpáruje.

### Pro rodiče

Přehled dne ukáže každé dítě a jeho kroužky: čeká se, na místě, odešlo.
Upozornění „bez přihlášení“ zmizí, jakmile se dítě přihlásí, nebo ho rodič
vezme na vědomí. Druhý rodič nebo babička vidí totéž. Server umí rodinu
exportovat i celou smazat včetně účtů, tlačítko pro to v appce zatím není.

### Stav

Automatka je ve Fázi 0: ověřuje se, že párování, push, offline režim a GPS
v halách fungují na skutečných telefonech a hodinkách. Backend a obrazovky
pro dítě i rodiče stojí a prošly testy na lokálním serveru. Správa míst
a kroužků v appce, pozvánky pro druhého rodiče a appka pro hodinky přijdou až
potom. Ke stažení zatím nic není.
