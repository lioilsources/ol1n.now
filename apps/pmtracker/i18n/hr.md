---
tagline: Evidencija rada po nalozima koja provjerava mjesto — a lokaciju ne sprema
---
Građevinske tvrtke i servisni timovi i danas prijavljuju sate na papiru, preko WhatsAppa i u Excelu. Voditelj nema kako provjeriti tko je gdje bio, a radnik nema kako dokazati prekovremene. PMTracker mjeri vrijeme na određenom nalogu i za svaki zapis zna je li osoba stvarno bila na mjestu.

### Lokacija samo dvaput, a onda se briše

Koordinate se šalju **samo pri pokretanju i zaustavljanju** mjerenja. Poslužitelj provjeri leži li točka unutar geoograde naloga, spremi jedan jedini podatak „bio / nije bio na mjestu” — i odbaci koordinate. Nema karte kretanja, nema praćenja u pozadini. Rad izvan geoograde može se dopustiti iznimkom koja se upisuje u revizijski zapisnik.

### Uloge čuva baza podataka, a ne aplikacija

Član tima bilježi vrijeme na nalozima na koje je raspoređen. Voditelj uz to upravlja nalozima i rasporedom ljudi te vidi izvještaje. Administrator upravlja korisnicima. Ovlasti provode pravila izravno u bazi podataka, pa ih ne može zaobići ni izmijenjeni klijent.

### Stanje

Ovo je MVP: gotovi su podatkovni model, uloge, provjera geoograde i zasloni za prijavu, mjerenje, naloge, raspored, izvještaje i administraciju. Izvanmrežni način za gradilišta bez signala pripremljen je, ali još nije uključen, a aplikacija još ne radi ni u jednoj tvrtki. Za prijavu ti treba račun od tvog poslodavca.

### Za beta testere

Probna verzija zasad je samo za **Android**. Radi s probnom tvrtkom „Stavby s.r.o.” s izmišljenim ljudima i dva naloga: preuređenje ureda na Vaclavovu trgu u Pragu i klimatizacija na Trgu slobode u Brnu. Podaci se mogu bilo kad izbrisati. U aplikaciji nema registracije; račun će ti poslati osoba koja te pozvala na testiranje.

**Instalacija**

1. Na mobitelu preuzmi APK gumbom u odjeljku **Preuzimanja** gore (ili s [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Otvori preuzetu datoteku i dopusti instalaciju iz nepoznatih izvora kad Android pita.
3. Google Play Protect može upozoriti da ne poznaje aplikaciju. To je zato što ne dolazi s Google Playa; svejedno odaberi instalaciju.
4. Pokreni **PMTracker** i prijavi se računom koji ti je stigao u poruci.

**Što isprobati kao član tima**

- Na kartici **Výkaz** (Evidencija) dodirni **Zahájit výkaz** (Pokreni evidenciju), odaberi nalog i dopusti pristup lokaciji. Na mjestu naloga ispod vremena pojavit će se zeleni „Na místě” (Na mjestu).
- Kad nisi na mjestu, aplikacija traži razlog. To je u redu: upiši na primjer „test” i zapis će se spremiti s napomenom da je nastao izvan mjesta.
- Nakon nekog vremena zaustavi mjerenje gumbom **Ukončit výkaz** (Završi evidenciju). „Dnes celkem” (Danas ukupno) će se povećati.
- Na kartici **Zakázky** (Nalozi) otvori detalje: adresa, veličina geoograde, tko je raspoređen i popis zadataka.

**Što isprobati kao voditelj**

- Uz to vidiš **Roster** (svoj tim) i **Reporty** (Izvještaji) s odrađenim vremenom ljudi po nalozima. U izvještaj se računaju samo zaustavljena mjerenja; razdoblje mijenjaš gore desno.
- Račun mijenjaš odjavom (ikona gore desno na kartici **Výkaz**).

**Što još ne očekivati**

- Bez interneta aplikacija ne radi, izvanmrežni način stiže kasnije.
- Zaboravljeno mjerenje neće se samo zaustaviti, zaustavi ga ručno.
- Verzije za iPhone za testere još nema.

Grešku ili ideju pošalji osobi koja te pozvala: što si radio, što se dogodilo i s kojim računom. Snimka zaslona puno pomaže.
