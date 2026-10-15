---
slug: terrareality
name: TerraReality
repo:
tagline: Pronájem bytu od hledání na mapě po zaplacený nájem — pro majitele, nájemníky i provozovatele
order: 25
featured: false
desktop: Web
mobile: android,ios
langs: cs,en
appstore:
playstore:
testflight:
---
TerraReality je platforma pro dlouhodobé pronájmy bytů a pokojů. Začíná v Praze
a okolí, v datech je ale od začátku připravená na další země střední Evropy
(jurisdikce smlouvy, měna, jazyk). Na rozdíl od inzertního portálu nekončí
u kontaktu: provede majitele i nájemníka celým nájmem — hledáním, zprávami,
žádostí, prohlídkou, smlouvou a podpisem až k platbám a jejich hlídání.

Platforma má čtyři tváře. **Hledající** hledá na mapě nebo prostě napíše, co
chce. **Majitel nebo správce** má administraci ve stylu e-shopu: inzeráty,
zájemce, smlouvy, banku, portfolio a fakturaci. **Nájemník** má svůj nájemní
portál se smlouvou, platbami a QR kódy. **Provozovatel** má backoffice na
schvalování, moderaci a nastavení. K tomu mobilní aplikace pro iOS a Android.

Screenshoty jsou z vývojového prostředí s testovacími daty: jména jsou
smyšlená, fotky bytů ilustrační a AI návrhy na nich vznikly v offline režimu
bez jazykového modelu.

### Hledání na mapě a chatem

Mapa jde od kraje přes obec a městskou část až k ulici a v každém měřítku
ukazuje, kolik nabídek kde je. Vedle ní jsou filtry (typ, cena, plocha,
dispozice, vybavení, mazlíčci, doprava) s počty u každé volby. Kdo nechce
klikat, napíše do pole třeba „2+kk do 25 000 v Praze 6 se psem a balkonem“ —
platforma z věty nastaví filtry i výřez mapy a ukáže, jak větě rozuměla.
Hledání se dá uložit a o nových nabídkách přijde upozornění.

### Inzerát s pomocí AI — vždy se souhlasem člověka

Majitel zadá adresu z oficiálního registru adres (RÚIAN), parametry, fotky
a text. AI umí z popisu a fotek navrhnout parametry (výtah, balkon, typ stavby…)
a napsat text inzerátu česky i anglicky. Návrh se ale nikdy neuloží sám: majitel
vidí, co AI navrhuje, zaškrtne, co platí, a teprve pak se to použije. Inzerát
pak před zveřejněním schvaluje člověk v backoffice. Ke každému inzerátu si
majitel může přidat otázky pro zájemce (třeba „Máte domácí zvíře?“).

### Zprávy

Zájemce píše majiteli přímo z inzerátu, zprávy chodí v reálném čase, s potvrzením
přečtení a přílohami. Telefonní čísla a e-maily v textu platforma do podpisu
smlouvy skrývá, aby se domluva i platby nepřesunuly mimo ni — a zájemce vidí
upozornění „nic neplaťte před prohlídkou“. Kdo není online, dostane push nebo
e-mail. Podezřelou konverzaci jde jedním klikem nahlásit.

### Žádosti, spolubydlení a výběr nájemníka

Zájemce podává žádost sám, nebo za skupinu spolubydlících: založí skupinu, pozve
ostatní e-mailem, domluví se ve skupinovém chatu a žádost odejde majiteli až
ve chvíli, kdy s ní souhlasí všichni. Majitel vidí přehled zájemců s odpověďmi
na své otázky, stavem ověření a stručným shrnutím od AI (opět jen návrh).
Chráněné údaje jako věk, pohlaví nebo národnost platforma nesbírá. Když majitel
někoho vybere, ostatní dostanou slušnou automatickou odpověď.

### Prohlídky

Majitel vypíše termíny prohlídek s kapacitou a poznámkou („sraz před vchodem“),
zájemci si je rezervují, přesouvají nebo ruší přímo v žádosti a přijde jim
připomínka.

### Digitální smlouva a podpis

Smlouva vzniká ze šablony (byt na dobu určitou i neurčitou, společný nájem
spolubydlících, pokoj) a vyplní se údaji z nabídky. Z formuláře se vygeneruje
PDF, obě strany ji podepíší online a každá událost — návrh, podpis, platba,
výpověď — se zapíše do auditního řetězce, kde je každý záznam navázaný hashem na
předchozí. Dodatečná úprava historie se tak nedá skrýt; stránka smlouvy ukazuje,
že řetězec je neporušený. Platforma umí i výpověď a vypořádání kauce.

Šablony mají vodoznak NÁVRH, dokud je nezreviduje právník, a podpis je zatím
jednoduchý elektronický podpis s evidencí (čas, IP adresa, otisk dokumentu).
Podpis přes Bank iD je připravený jako další krok, čeká na smlouvu s Bank iD.

### Platby — peníze jdou přímo majiteli

Ze smlouvy vznikne platební kalendář: kauce, nájem a zálohy, u spolubydlících
rozdělené podle podílů. Nájemník platí QR kódem v bankovní aplikaci nebo kartou
přes Revolut Business odkaz, který vede na vlastní obchodnický účet majitele.
Majitel může propojit bankovní účet (jen pro čtení) a příchozí platby se samy
spárují podle variabilního symbolu, specifického symbolu a částky; co nesedí,
zůstane jako návrh k ručnímu spárování. Po splatnosti chodí připomínky
a po sedmi dnech eskalace.

**TerraReality nikdy nedrží ani nepřeposílá peníze nájemníků.** Žádná úschova,
žádné kryptoměny — platby jdou rovnou z účtu nájemníka na účet majitele.

### Portfolio napříč městy a riziko nájmů

Pro majitele a správce s více byty: přehled všech nájmů po obcích, měsíční
předpis a co skutečně přišlo, trend za dvanáct měsíců, seznam toho, co vyžaduje
pozornost (dluh, eskalace, výpověď, volná jednotka), koncentrace příjmů a rent
roll s exportem do CSV a Excelu. Každý nájem má skóre rizika spočítané
z pravidel (dluh, staré nezaplacené platby, krytí kaucí, blížící se konec
smlouvy…). Skóre je jen informace, nikdy o nikom nerozhoduje; nájemník vidí,
z čeho se počítá. Pravidla (připomínky, eskalace, kauce, výpovědní doba) jdou
nastavit po obcích a investor může dostat přístup jen pro čtení, kde nájemníky
vidí pouze jako iniciály.

### Propagace a fakturace

Majitel si může inzerát topovat nebo zvýraznit. Platí kartou přes Stripe, faktura
s DPH se vystaví sama, přijde e-mailem a je ke stažení v administraci.
Topované inzeráty jsou ve výsledcích označené „Topováno“.

### Backoffice, moderace a DSA

Provozovatel má přehled metrik, frontu inzerátů ke schválení, moderaci
nahlášených konverzací a inzerátů, frontu AI návrhů nových parametrů, ceník
propagace, šablony smluv, přepínače funkcí a auditní log. Nahlásit inzerát může
kdokoli i bez účtu (podle evropského nařízení o digitálních službách, DSA);
o každém případu rozhoduje člověk a odůvodnění jde e-mailem oznamovateli
i inzerentovi. Přihlášení „za uživatele“ při podpoře vyžaduje uvedení důvodu
a zapíše se do auditu.

### Mobilní aplikace

Flutter aplikace pro iOS a Android pokrývá to, co nájemník potřebuje v telefonu:
hledání se seznamem a mapou, detail inzerátu se zprávou, žádostí a rezervací
prohlídky, moje prohlídky, nájem s QR platbou a Revolut odkazem a proklik
z push notifikací. Je to první verze; buildy pro testery (TestFlight a interní
track Google Play) vzniknou v přípravě testování.

### Provoz

Produkční prostředí je připravené pro Hetzner v EU: oddělený aplikační
a databázový server v privátní síti, automatické HTTPS, zálohy databáze
s obnovou k libovolnému okamžiku (ztráta nejvýš hodina dat) a ověřenou zkouškou
obnovy, monitoring s upozorněními (dostupnost 99,9 %, odezva hledání do 300 ms,
stav záloh) a hlášení chyb. AI běží na vlastním GPU serveru; když AI není
k dispozici, všechno funguje i bez ní.

### Stav a testování

**Hotové je MVP celé platformy.** Všechny moduly výše jsou naprogramované
a pokryté automatickými testy — jednotkovými, integračními a end-to-end testy,
které v prohlížeči proklikají celé scénáře (inzerát, zprávy, skupinová žádost,
smlouva s podpisem a spárovanou platbou, portfolio, propagace s fakturou,
nahlášení podle DSA, backoffice). Ověřená je i obnova databáze ze zálohy.

**Teď probíhá dotažení před pilotem**: bezpečnostní a provozní úpravy doporučené
při revizi kódu, notifikace pro žádosti, smlouvy a platby a příprava
testovacího prostředí. Na skutečném serveru zatím nic neběží — nasazení čeká na
účty a přístupy (viz níže).

Testování se živými lidmi jde v pěti fázích. Každá končí bránou, kde se společně
rozhodne, jestli se jde dál:

1. **T0 — příprava (2 týdny).** Testovací prostředí na Hetzneru s pruhem
   „Testovací prostředí“, partneři v sandboxu (Stripe, Revolut, Bank iD),
   produktová analytika bez osobních údajů, tlačítko „Nahlásit problém / nápad“
   ve webu i v aplikaci, registrace jen na pozvánku, testovací data a buildy
   aplikace pro testery.
2. **T1 — interní testování (1 týden).** 5–8 lidí z týmu a okolí projde všechny
   scénáře v roli majitele i hledajícího, na více zařízeních, včetně nácviku
   incidentu a obnovy ze zálohy.
3. **T2 — moderované testy použitelnosti (2 týdny).** 12 účastníků: soukromí
   majitelé, správce s byty ve více městech, hledající Češi i cizinci a dvojice
   spolubydlících. Měří se úspěšnost úkolů a spokojenost (SUS ≥ 70).
4. **T3 — uzavřený pilot v Praze (6 týdnů).** 20 pilotních majitelů
   s osobním onboardingem a 50–100 hledajících, jen na pozvánku. Sleduje se, jestli
   inzeráty dostávají žádosti, jak rychle majitelé odpovídají, kolik smluv se
   dotáhne digitálně a jak spolehlivě vše běží; release jednou týdně.
5. **T4 — otevřená beta v Praze (4 týdny).** Registrace pro všechny se štítkem
   beta, bez placené kampaně — a na konci rozhodnutí o veřejném spuštění.

Celé je to zhruba 15 týdnů od začátku přípravy.

**Co je potřeba od vás:**

- účty a přístupy pro provoz: Hetzner, doména a DNS, Apple a Google vývojářské
  účty, Stripe, Revolut Business, Bank iD a poskytovatel napojení na banku;
- nábor testerů, 20 pilotních majitelů a hledajících, odměny pro účastníky;
- právní revizi obchodních podmínek, ochrany osobních údajů a šablon smluv,
  souhlasy testerů a rozhodnutí, jestli se v pilotu podepisují skutečné smlouvy
  přímo na platformě;
- penetrační test před pilotem, vedení rozhovorů v T2 a první linii podpory
  během pilotu;
- rozhodnutí na každé bráně mezi fázemi.
