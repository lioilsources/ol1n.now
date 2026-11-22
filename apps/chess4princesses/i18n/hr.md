---
name: Chess Kingdom
tagline: Šah za petogodišnjake — bajkovite lekcije, glas koji sve pročita, bitke četrnaest vojski i slavne partije majstora
---
Chess Kingdom uči šah dijete koje još ne zna čitati. Svaka figura je lik s
vlastitim imenom i naravi: Daisy Tower ima kotačiće i vozi samo ravno, Glimmer
Butterfly leti ukoso, konjić skače u kuku, a King Rainbeard hoda polako jer ima
najljepšu bradu u kraljevstvu. Dijete ne igra odmah cijelu partiju. Putuje
kartom otoka i na svakom nauči jednu figuru.

### Karta kraljevstva

Otoci se nižu jedan za drugim uz vijugavi put: **Kraljevstvo** (ploča kao grad
s ulicama i kućama), **Male djeveruše** (pješaci), **Kulica na kotačićima**,
**Leptirić** (lovac), **Kraljica** (dama), **Konjić** i **Kralj tata**. Svaki
otok ima tri do šest lekcija, a svaka lekcija nekoliko kratkih zadataka.
Sljedeći otok otvara se kad je prethodni gotov. Zvjezdice iz lekcija zbrajaju
se na karti, pa dijete vidi koliko je već svladalo.

Zasad je gotovo sedam otoka i 31 lekcija, od „dodirni sobu e4” do „spasi
kralja”. Još šest (Bitke i jabučice, Mat, Čarobni potezi, Početak bitke,
Lukavštine i Velika partija) zaključano je na karti i čeka da bude napisano.

### Lekcije kao igra

Lekcija počinje kratkom pričom, a zatim daje zadatak: odvezi kulu do zvijezde,
skupi sve zvjezdice, izbjegni lavu, uzmi sve protivnikove pješake, dodirni sva
polja na koja konjić može skočiti, izvuci kralja iz šaha. Kad dijete dodirne
figuru, zasvijetle polja na koja smije ići. Lekcije bez kralja igraju se samo
potezima figura, bez šaha i rokade. Prava pravila dolaze postupno.

Nitko dijete ne zaustavlja. Broj poteza odlučuje samo o tome hoće li dobiti tri
zvjezdice ili dvije. Kad ne ide, aplikacija nakon prve pogreške pokaže kamo
figura smije, a nakon treće predloži prvi potez. Svaka lekcija provjerena je
automatski: rješavač prođe sve poteze i potvrdi da se zadatak može riješiti u
zadanom broju poteza.

### Sve se čita naglas

Aplikacija radi i bez čitanja. Priču, zadatak, odgovore „bravo” i „pokušaj
ponovno” te rečenice likova čita pripovjedačica naglas. Dodirom na oblačić
zadatak se pročita ponovno. Glasovi su unaprijed generirani iz teksta (na
češkom Piper, na engleskom Kokoro), pa zvuče jednako na svakom mobitelu i rade
bez interneta.

### Bitke

Kad figura uzima, ploča na trenutak nestane i preko cijelog zaslona odigra se
dvoboj. Likovi stanu jedan nasuprot drugome u areni protivnika, razmijene par
riječi („Tu-tuuu!” – „Idem u bajeru…”) i jedan od njih ode se odmoriti. Nitko
ne umire, poražena figura ide „u remizu” ili odleti „na livadu”. Bitka traje
kraće od tri sekunde i može se preskočiti dodirom.

### Četrnaest vojski

Počelo je s dvije vojske: **Vile** (King Rainbeard, Princess Sparkle, Daisy
Tower, jednorog umjesto konjića) i **Vještice** (King Grumble, koji gunđa, ali
voli kolačiće, Queen Thunder, čije čarolije rade bum, ali nikoga ne bole, Batty
Tower i žabice u šeširima umjesto pješaka).

Sada ih je četrnaest. Pridružilo im se dvanaest vojski vinilnih igračaka:
**Kraljevstvo** (Kralj Zlatojabuka sa svojom zlatnom jabukom), **Vražići**
(Vražji kralj Mrgud s velikom knjigom i još većim rogovima), **Mačkice**,
**Psići**, **Pčelice**, **Stršljeni**, **Dinosauri** (Kralj Reksi, velik, ali
dobar), **Ledeno doba**, **Voće**, **Povrće** te igračke **Šumske vile** i
**Vještice**. Svaka vojska ima šest likova s imenima, vlastitu arenu, pozdrave i
rečenice za bitku. Kralj je najviši, a pješak najmanji, pa se figure na ploči
razlikuju po visini.

Dijete bira za koga igra i protiv koga. Likovi su izvorni, bez brendova i
poznatih bajkovitih licenci. Vile i vještice nastale su u modelu FLUX.1-schnell,
a vojske igračaka u Qwen-Image. Sve je zatim ručno birano i dotjerivano.

### Dvorana slavnih

Ispod pehara na karti nalazi se dvorana slavnih sa slavnim partijama majstora:
Morphyjeva partija u pariškoj operi iz 1858., „partija stoljeća”
trinaestogodišnjeg Bobbyja Fischera protiv Donalda Byrnea (1956.) te Vera
Menchik protiv Sonje Graf na Svjetskom prvenstvu za žene 1937.

Partija se može ponovno pogledati na dva načina. **Bajka** je za dijete: figure
njegove vojske same se pomiču, kod šaha, rokade ili hrabre žrtve iskoči oblačić,
a iz cijele partije odabiru se najviše četiri velike bitke. Svako drugo uzimanje
samo napravi „puf”. Na kraju dolazi mat s peharom, predaja (kralj se nakloni)
ili remi (rukovanje). **Kronika** je za roditelje: popis poteza, korak naprijed
i natrag, bez bitaka.

### Turniri uživo

Tko želi, može u dvorani slavnih uključiti „Partije s interneta”. Tada se ondje
pojavi veliki turnir koji se upravo igra, prije svega meč za svjetsko prvenstvo
2026. u Ženevi. Odigrana kola mogu se pogledati kao i slavne partije, čak i bez
interneta. Prekidač je prema zadanim postavkama isključen. Dok je isključen,
aplikacija se nikamo ne spaja, a partije preuzima samo s vlastitog malog
poslužitelja, bez računa, kolačića i praćenja.

### Igra protiv robotića

Rat pješaka na kraju otoka djeveruša igra se protiv računala, protiv robotića
Baby. Robotić ima četiri razine snage, od potpuno smetenog do onog koji već
vidi uzimanja. Zasebna igra protiv robotića ili protiv roditelja na jednom
mobitelu tek dolazi.

### Stanje

Prva probna verzija (1.0.3) je vani: APK za Android može se preuzeti ispod, a
iPhone i iPad dobivaju je putem TestFlighta. Slijede preostali otoci,
roditeljska zona (postavke, isključivanje bitaka, pregled onoga što dijete zna),
knjižnica s još slavnih partija i test s pravom petogodišnjom šahisticom: hoće
li na maloj ploči razlikovati vile?

Bez oglasa, bez računa, radi offline. Aplikacija je na 45 jezika, a glas zasad
govori češki i engleski.
