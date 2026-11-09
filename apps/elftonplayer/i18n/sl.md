---
tagline: Bit-perfect predvajalnik za USB DAC — datoteka, RAM, ASIO in nič vmes
---
Elfton Player je predvajalnik lokalne glasbe za Windows 11 z eno samo
prioriteto: da v USB DAC pridejo natanko tisti vzorci, ki so v datoteki.
Pot signala je **datoteka → dekoder → RAM → ASIO → DAC**. Brez glasnosti,
brez izenačevalnika, brez prevzorčenja, brez pretakanja. Glasnost nastaviš
na pretvorniku ali ojačevalniku.

### Kaj zna

- **Bit-perfect izhod** prek ASIO ali WASAPI v izključnem načinu. Ob skladbi
  je viden celoten niz (`FLAC 24/96k → 32-bit · bit-perfect`), zelena pika pa
  ugasne v trenutku, ko karkoli poseže v signal.
- **Predvajanje iz pomnilnika.** Skladba se v celoti dekodira v RAM, zato disk
  med predvajanjem miruje; naslednja skladba se naloži vnaprej in se nadaljuje
  **brez premora**.
- **Zanka A-B, natančna na vzorec**, s premikanjem točk po milisekundah — za vadbo
  odlomka ali primerjanje dveh mest v posnetku.
- **Knjižnica po mapah**: drevo map, kot ga imaš na disku, ovitki, iskanje,
  čakalna vrsta, priljubljene, zgodovina, seznami predvajanja M3U, albumi v eni
  datoteki s CUE, sinhronizirana besedila iz LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg in DSD** (izvorno, DoP ali pretvorba v PCM).
- **Mono (L+R)/2** kot edini poseg v signal, vedno vidno označen.
- **Gumba L in D** pustita igrati samo en zvočnik, drugega pa utišata. Z vklopljenim
  monom igrata oba isto, zato lahko s telefonom iz naslanjača takoj primerjaš levo
  in desno stran sistema (kabli, komponente); brez mona igra samo levi ali samo
  desni kanal posnetka.
- **Drsnik, narisan kot glasnost skladbe**, čez celo širino okna: tih uvod je viden
  in ga preskočiš z enim klikom.
- **Srček pri skladbi** in filter »samo priljubljene« neposredno v albumu.
- **Tri teme**: temna, črna in svetla.
- **Daljinec v telefonu**: Elfton Remote se seznani s QR kodo prek domačega omrežja
  in zna vse, kar zna okno na računalniku.

### Način predvajanja

Na željo med predvajanjem preklopi načrt porabe energije, izklopi selektivno
začasno zaustavitev USB in parkiranje jeder, po koncu pa vse povrne. Pošteno:
pri asinhronem USB DAC uro drži pretvornik, zato ti posegi na zvok nimajo
merljivega vpliva. So neobvezni, vsak se zapiše v dnevnik in noben ni potreben.

Enako velja za »rituale«, prevzete iz predvajalnika Bug head, ki so v nastavitvah
in privzeto izklopljeni: zaklep glasbe v RAM, premor po nalaganju skladbe in zagon
lastnega pomožnega programa (na primer MinorityClean) skupaj s predvajalnikom.
MinorityClean ni priložen.

### Stanje

**Različica 0.2, predizdaja.** Prva različica je tekla na Windows 11 pri enem
poslušalcu prek ASIO (Behringer UMC204HD in SMSL D200): WAV 24/192 je šel ven
kot 32-bitni ASIO brez pretvorbe in brez izpadov, upravljanje s telefona pa
deluje. To je poročilo samega predvajalnika o poti signala; izhoda še nihče ni
zajel in primerjal bit za bitom. Novosti različice 0.2 so pokrite s testi, na
Windows pa še niso tekle. Posnetki zaslona so iz prve različice, iz razvojne
gradnje za macOS z vzorčno knjižnico — pasu s potekom glasnosti in stikala L/D
na njih še ni.

Različica za Windows je zip: razpakiraj ga in zaženi `Elfton Player.exe` ali
poženi priloženi `install.ps1`, ki doda bližnjico v meni Start. Nič drugega se
ne namesti. Za ASIO mora biti nameščen gonilnik pretvornika; brez njega
predvajalnik ponudi WASAPI. Daljinec za telefon je zaenkrat samo za
Android (APK); različica za iOS je v kodi dokončana, vendar nima javne gradnje.

Pogon je napisan v Go nad FFmpeg (LGPL, dinamično povezan), vmesnik v Flutterju.
