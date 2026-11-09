---
tagline: Evidenca ur po naročilih, ki preveri lokacijo — in je ne shrani
---
Gradbena podjetja in servisne ekipe še danes poročajo o urah na papirju, prek WhatsAppa in v Excelu. Vodja nima kako preveriti, kdo je bil kje, delavec pa nima kako dokazati nadur. PMTracker meri čas na konkretnem naročilu in pri vsakem zapisu ve, ali je bil človek res na mestu.

### Lokacija samo dvakrat, nato se zavrže

Koordinate se pošljejo **samo ob začetku in ustavitvi** merjenja. Strežnik preveri, ali točka leži znotraj geoograje naročila, shrani en sam podatek, »bil / ni bil na mestu«, in koordinate zavrže. Brez zemljevida gibanja, brez sledenja v ozadju. Delo zunaj geoograje je mogoče dovoliti z izjemo, ki se zapiše v revizijski dnevnik.

### Vloge varuje baza podatkov, ne aplikacija

Član ekipe beleži čas na naročilih, na katera je razporejen. Vodja poleg tega upravlja naročila in razpored ljudi ter vidi poročila. Skrbnik upravlja uporabnike. Dovoljenja uveljavljajo pravila neposredno v bazi podatkov, zato jih ne obide niti spremenjen odjemalec.

### Stanje

To je MVP: pripravljeni so podatkovni model, vloge, preverjanje geoograje in zasloni za prijavo, merjenje, naročila, razpored, poročila in upravljanje. Način brez povezave za gradbišča brez signala je pripravljen, a še ni vklopljen, aplikacija pa še ne teče v nobenem podjetju. Za prijavo potrebuješ račun od svojega delodajalca.

### Za beta preizkuševalce

Preizkusna različica je zaenkrat samo za **Android**. Teče na preizkusnem podjetju »Stavby s.r.o.« z izmišljenimi ljudmi in dvema naročiloma: prenova pisarn na Václavovem trgu v Pragi in klimatizacija na Trgu svobode v Brnu. Podatki se lahko kadar koli izbrišejo. Registracije v aplikaciji ni; račun ti pošlje tisti, ki te je povabil k preizkušanju.

**Namestitev**

1. Na telefonu prenesi APK z gumbom v razdelku **Prenosi** zgoraj (ali z [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Odpri preneseno datoteko in dovoli namestitev iz neznanih virov, ko Android vpraša.
3. Google Play Protect lahko opozori, da aplikacije ne pozna. To je zato, ker ni iz Google Playa; vseeno izberi namestitev.
4. Zaženi **PMTracker** in se prijavi z računom, ki si ga dobil v sporočilu.

**Kaj preizkusiti kot član ekipe**

- Na zavihku **Výkaz** (Evidenca) tapni **Zahájit výkaz** (Začni evidenco), izberi naročilo in dovoli dostop do lokacije. Na mestu naročila se pod časom pokaže zeleni »Na místě« (Na mestu).
- Ko nisi na mestu, aplikacija zahteva razlog. To je v redu: napiši na primer »test« in zapis se shrani z opombo, da je nastal zunaj mesta.
- Čez nekaj časa ustavi merjenje z gumbom **Ukončit výkaz** (Končaj evidenco). »Dnes celkem« (Danes skupaj) se poveča.
- Na zavihku **Zakázky** (Naročila) odpri podrobnosti: naslov, velikost geoograje, kdo je razporejen in seznam opravil.

**Kaj preizkusiti kot vodja**

- Poleg tega vidiš **Roster** (svojo ekipo) in **Reporty** (Poročila) z opravljenim časom ljudi po naročilih. V poročilo štejejo samo ustavljena merjenja; obdobje spremeniš zgoraj desno.
- Račun zamenjaš z odjavo (ikona zgoraj desno na zavihku **Výkaz**).

**Česa še ne pričakovati**

- Brez interneta aplikacija ne deluje, način brez povezave pride pozneje.
- Pozabljeno merjenje se ne ustavi samo, ustavi ga ročno.
- Različice za iPhone za preizkuševalce še ni.

Napako ali idejo pošlji tistemu, ki te je povabil: kaj si počel, kaj se je zgodilo in s katerim računom. Posnetek zaslona zelo pomaga.
