---
tagline: Najam stana od pretrage na karti do plaćene najamnine — za najmodavce, najmoprimce i operatera
---
TerraReality je platforma za dugoročni najam stanova i soba. Počinje u Pragu
i okolici, ali je njezin podatkovni model od prvog dana spreman za druge zemlje
srednje Europe (jurisdikcija ugovora o najmu, valuta, jezik). Za razliku od
oglasnog portala ne završava kontaktom: najmodavca i najmoprimca vodi kroz
cijeli najam — pretragu, poruke, prijavu, razgledavanje, ugovor i potpis, sve
do plaćanja i njihova praćenja.

Platforma ima četiri lica. **Tražitelji** pretražuju na karti ili jednostavno
napišu što žele. **Najmodavci i upravitelji nekretnina** dobivaju administraciju
u stilu web-trgovine: oglase, kandidate, ugovore, banku, portfelj
i fakturiranje. **Najmoprimci** dobivaju svoj portal s ugovorom, plaćanjima
i QR kodovima. **Operater** dobiva backoffice za odobravanje, moderiranje
i postavke. Uz to i mobilna aplikacija za iOS i Android.

Snimke zaslona potječu iz razvojnog okruženja s testnim podacima: imena su
izmišljena, fotografije stanova ilustrativne, a prijedlozi AI-ja nastali su
u izvanmrežnom načinu rada bez jezičnog modela. Sama aplikacija je na češkom
jeziku, a dostupna je i na engleskom.

### Pretraga na karti i putem chata

Karta ide od regije preko općine i gradske četvrti sve do ulice i na svakoj
razini zumiranja prikazuje koliko ponuda ima. Uz nju su filtri (vrsta, cijena,
površina, raspored prostorija, opremljenost, kućni ljubimci, prijevoz) s brojem
rezultata za svaku opciju. Tko ne želi klikati, može upisati nešto poput „2+kk
do 25 000 u Pragu 6, sa psom i balkonom“ (2+kk je češka oznaka za dvosoban stan
s kuhinjskim kutom) — platforma iz rečenice postavlja filtre i područje karte
te pokazuje kako ju je razumjela. Pretrage se mogu spremiti, a o novim
odgovarajućim ponudama stiže obavijest.

### Oglasi uz pomoć AI-ja — uvijek uz odobrenje čovjeka

Najmodavac unosi adresu iz službenog registra adresa (RÚIAN), parametre,
fotografije i tekst. AI može iz opisa i fotografija predložiti parametre
(dizalo, balkon, vrsta zgrade…) i napisati tekst oglasa na češkom i engleskom.
Prijedlog se nikada ne sprema sam od sebe: najmodavac vidi što AI predlaže,
označi ono što je točno i tek se tada primjenjuje. Prije objave oglas odobrava
čovjek u backofficeu. Najmodavci mogu dodati pitanja za probir kandidata
(npr. „Imate li kućnog ljubimca?“).

### Poruke

Tražitelji pišu najmodavcu izravno iz oglasa. Poruke stižu u stvarnom vremenu,
s potvrdom čitanja i privicima. Brojevi telefona i e-mail adrese u tekstu
skriveni su do potpisivanja ugovora, kako se ni dogovor ni novac ne bi
preselili izvan platforme — a tražitelj vidi upozorenje da ništa ne plaća prije
razgledavanja. Tko nije na mreži, dobiva push obavijest ili e-mail. Sumnjiv
razgovor može se prijaviti jednim klikom.

### Prijave, cimeri i odabir najmoprimca

Tražitelj se prijavljuje sam ili za skupinu cimera: osniva skupinu, poziva
ostale e-mailom, dogovara se s njima u grupnom chatu, a prijava stiže
najmodavcu tek kada se svi slože. Najmodavac vidi kandidate s njihovim
odgovorima na pitanja za probir, statusom provjere i kratkim sažetkom AI-ja
(opet samo prijedlog). Zaštićeni podaci poput dobi, spola ili nacionalnosti
nikada se ne prikupljaju. Kada najmodavac nekoga odabere, ostali dobivaju
pristojan automatski odgovor.

### Razgledavanja

Najmodavac nudi termine razgledavanja s kapacitetom i napomenom („nalazimo se
ispred ulaza“); kandidati ih rezerviraju, premještaju ili otkazuju izravno
u prijavi i dobivaju podsjetnik.

### Digitalni ugovor i potpis

Ugovor nastaje iz predloška (stan na određeno ili neodređeno vrijeme, zajednički
najam cimera, soba) i popunjava se podacima iz ponude. Iz obrasca nastaje PDF,
obje strane potpisuju online, a svaki događaj — nacrt, potpis, plaćanje,
otkaz — upisuje se u revizijski lanac u kojem je svaki zapis hashom povezan
s prethodnim. Naknadna izmjena povijesti ne može se prikriti; stranica ugovora
pokazuje da je lanac netaknut. Obuhvaćeni su i otkaz te obračun jamčevine.

Dok ih ne pregleda pravnik, predlošci nose vodeni žig NACRT, a potpis je zasad
jednostavan elektronički potpis s dokazima (vrijeme, IP adresa, otisak
dokumenta). Potpisivanje putem Bank iD pripremljeno je kao sljedeći korak i čeka
ugovor s Bank iD.

### Plaćanja — novac ide izravno najmodavcu

Iz ugovora nastaje raspored plaćanja: jamčevina, najamnina i režijski troškovi,
kod cimera raspodijeljeni prema udjelima. Najmoprimci plaćaju QR kodom u svojoj
bankovnoj aplikaciji ili karticom putem poveznice Revolut Business koja vodi na
vlastiti trgovački račun najmodavca. Najmodavac može povezati bankovni račun
(samo za čitanje), a dolazna plaćanja automatski se sparuju prema varijabilnom
simbolu, specifičnom simbolu i iznosu; ono što se ne podudara ostaje kao
prijedlog za ručno sparivanje. Nakon dospijeća šalju se podsjetnici, a nakon
sedam dana slijedi eskalacija.

**TerraReality nikada ne drži niti prosljeđuje novac najmoprimaca.** Bez
posredničkog (escrow) računa, bez kriptovaluta — plaćanja idu izravno s računa
najmoprimca na račun najmodavca.

### Portfelj u više gradova i rizik najma

Za najmodavce i upravitelje s više stanova: svi najmovi po općinama, mjesečno
zaduženje i ono što je stvarno uplaćeno, trend za dvanaest mjeseci, popis onoga
što traži pozornost (dug, eskalacija, otkaz, prazna jedinica), koncentracija
prihoda i popis najmova (rent roll) s izvozom u CSV i Excel. Svaki najam ima
ocjenu rizika izračunatu prema pravilima (dug, stare neplaćene stavke,
pokrivenost jamčevinom, približavanje isteka ugovora…). Ocjena je samo
informativna i nikada ni o kome ne odlučuje; najmoprimci vide od čega se
sastoji. Pravila (podsjetnici, eskalacija, jamčevina, otkazni rok) mogu se
postaviti po općinama, a investitor može dobiti pristup samo za čitanje u kojem
se najmoprimci prikazuju samo inicijalima.

### Promocija i fakturiranje

Najmodavci mogu oglas podići na vrh ili ga istaknuti. Plaćaju karticom putem
Stripea, a račun s PDV-om izdaje se automatski, šalje e-mailom i dostupan je
u administraciji. Promovirani oglasi u rezultatima su označeni.

### Backoffice, moderiranje i DSA

Operater dobiva pregled metrika, red oglasa za odobrenje, moderiranje
prijavljenih razgovora i oglasa, red prijedloga AI-ja za nove parametre, cjenik
promocije, predloške ugovora, prekidače funkcija i revizijski zapisnik. Oglas
može prijaviti svatko, čak i bez korisničkog računa (kako to zahtijeva Akt
o digitalnim uslugama EU-a, DSA); o svakom slučaju odlučuje čovjek,
a obrazloženje se e-mailom šalje i podnositelju prijave i oglašivaču. Prijava
„kao korisnik“ radi podrške zahtijeva navođenje razloga i upisuje se
u revizijski zapisnik.

### Mobilna aplikacija

Flutter aplikacija za iOS i Android pokriva ono što najmoprimcu treba na
mobitelu: pretragu s popisom i kartom, detalje oglasa s porukom, prijavom
i rezervacijom razgledavanja, moja razgledavanja, najam s QR plaćanjem
i poveznicom Revolut te duboke poveznice iz push obavijesti. Riječ je o prvoj
verziji; inačice za testere (TestFlight i interni kanal Google Play) dio su
pripreme testiranja.

### Rad sustava

Produkcijsko okruženje pripremljeno je za Hetzner u EU-u: odvojeni poslužitelji
za aplikaciju i bazu podataka u privatnoj mreži, automatski HTTPS, sigurnosne
kopije baze podataka s oporavkom na bilo koji trenutak (gubitak najviše jednog
sata podataka) i provjerenom vježbom vraćanja, nadzor s upozorenjima
(dostupnost 99,9 %, odziv pretrage ispod 300 ms, stanje sigurnosnih kopija)
i prijavljivanje pogrešaka. AI radi na našem vlastitom GPU poslužitelju; kada
AI nije dostupan, sve i dalje radi bez njega.

### Stanje i testiranje

**MVP cijele platforme je gotov.** Svi gore navedeni moduli implementirani su
i pokriveni automatiziranim testovima — jediničnim, integracijskim
i end-to-end testovima koji u pregledniku prolaze kroz cjelovite scenarije
(oglas, poruke, grupna prijava, ugovor s potpisom i sparenim plaćanjem,
portfelj, promocija s računom, prijava prema DSA-u, backoffice). Provjereno je
i vraćanje baze podataka iz sigurnosne kopije.

**U tijeku je završno učvršćivanje prije pilota**: sigurnosna i operativna
poboljšanja preporučena u pregledu koda, obavijesti za prijave, ugovore
i plaćanja te testno okruženje. Zasad ništa ne radi na stvarnom poslužitelju —
postavljanje čeka korisničke račune i pristupe (vidi dolje).

Testiranje sa stvarnim ljudima odvija se u pet faza. Svaka završava kontrolnom
točkom na kojoj zajedno odlučujemo hoćemo li krenuti dalje:

1. **T0 — priprema (2 tjedna).** Testno okruženje na Hetzneru s natpisom
   „Testno okruženje“, partneri u sandbox načinu rada (Stripe, Revolut,
   Bank iD), analitika proizvoda bez osobnih podataka, gumb „Prijavi problem /
   ideju“ na webu i u aplikaciji, registracija samo uz pozivnicu, testni podaci
   i inačice aplikacije za testere.
2. **T1 — interno testiranje (1 tjedan).** 5–8 osoba iz tima i njegove okoline
   prolazi sve scenarije u ulozi najmodavca i tražitelja, na više uređaja,
   uključujući vježbu incidenta i vraćanje iz sigurnosne kopije.
3. **T2 — moderirani testovi upotrebljivosti (2 tjedna).** 12 sudionika:
   privatni najmodavci, upravitelj sa stanovima u više gradova, češki i strani
   tražitelji te par cimera. Mjere se uspješnost izvršenja zadataka
   i zadovoljstvo (SUS ≥ 70).
4. **T3 — zatvoreni pilot u Pragu (6 tjedana).** 20 pilot-najmodavaca
   s osobnim uvođenjem i 50–100 tražitelja, samo uz pozivnicu. Pratimo
   dobivaju li oglasi prijave, koliko brzo najmodavci odgovaraju, koliko se
   ugovora sklopi digitalno i koliko pouzdano sve radi; jedno izdanje tjedno.
5. **T4 — otvorena beta u Pragu (4 tjedna).** Registracija otvorena svima uz
   oznaku beta, bez plaćene kampanje — a na kraju odluka o javnom pokretanju.

Ukupno oko 15 tjedana od početka pripreme.

**Što trebamo od Vas:**

- korisničke račune i pristupe za rad sustava: Hetzner, domenu i DNS, Apple
  i Google razvojne račune, Stripe, Revolut Business, Bank iD i pružatelja
  bankovnih podataka;
- regrutiranje testera, 20 pilot-najmodavaca i tražitelja, nagrade za
  sudionike;
- pravni pregled uvjeta korištenja, pravila o privatnosti i predložaka
  ugovora, privole testera te odluku hoće li se tijekom pilota na platformi
  potpisivati stvarni ugovori;
- penetracijski test prije pilota, vođenje intervjua u fazi T2 i prvu liniju
  podrške tijekom pilota;
- odluku na svakoj kontrolnoj točki između faza.
