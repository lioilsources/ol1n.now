---
tagline: Prenájom bytu od hľadania na mape po zaplatené nájomné — pre prenajímateľov, nájomníkov aj prevádzkovateľa
---
TerraReality je platforma na dlhodobé prenájmy bytov a izieb. Začína v Prahe a okolí, v dátach je však od začiatku pripravená na ďalšie krajiny strednej Európy (jurisdikcia zmluvy, mena, jazyk). Na rozdiel od inzertného portálu sa nekončí pri kontakte: prevedie prenajímateľa aj nájomníka celým nájmom — hľadaním, správami, žiadosťou, obhliadkou, zmluvou a podpisom až po platby a ich stráženie.

Platforma má štyri tváre. **Hľadajúci** hľadá na mape alebo jednoducho napíše, čo chce. **Prenajímateľ alebo správca** má administráciu v štýle e-shopu: inzeráty, záujemcov, zmluvy, banku, portfólio a fakturáciu. **Nájomník** má svoj nájomný portál so zmluvou, platbami a QR kódmi. **Prevádzkovateľ** má backoffice na schvaľovanie, moderovanie a nastavenia. K tomu mobilná aplikácia pre iOS a Android.

Screenshoty sú z vývojového prostredia s testovacími dátami: mená sú vymyslené, fotky bytov ilustračné a návrhy AI na nich vznikli v offline režime bez jazykového modelu.

### Hľadanie na mape a cez chat

Mapa ide od kraja cez obec a mestskú časť až k ulici a v každej mierke ukazuje, koľko ponúk kde je. Vedľa nej sú filtre (typ, cena, plocha, dispozícia, vybavenie, domáce zvieratá, doprava) s počtami pri každej voľbe. Kto nechce klikať, napíše do poľa napríklad „2+kk do 25 000 v Prahe 6 so psom a balkónom“ — platforma z vety nastaví filtre aj výrez mapy a ukáže, ako vete porozumela. Hľadanie sa dá uložiť a o nových ponukách príde upozornenie.

### Inzerát s pomocou AI — vždy so súhlasom človeka

Prenajímateľ zadá adresu z oficiálneho registra adries (RÚIAN), parametre, fotky a text. AI vie z popisu a fotiek navrhnúť parametre (výťah, balkón, typ stavby…) a napísať text inzerátu po česky aj po anglicky. Návrh sa však nikdy neuloží sám: prenajímateľ vidí, čo AI navrhuje, zaškrtne, čo platí, a až potom sa to použije. Inzerát potom pred zverejnením schvaľuje človek v backoffice. Ku každému inzerátu si prenajímateľ môže pridať otázky pre záujemcov (napríklad „Máte domáce zviera?“).

### Správy

Záujemca píše prenajímateľovi priamo z inzerátu, správy chodia v reálnom čase, s potvrdením prečítania a prílohami. Telefónne čísla a e-maily v texte platforma do podpisu zmluvy skrýva, aby sa dohoda ani platby nepresunuli mimo nej — a záujemca vidí upozornenie „nič neplaťte pred obhliadkou“. Kto nie je online, dostane push alebo e-mail. Podozrivú konverzáciu sa dá jedným klikom nahlásiť.

### Žiadosti, spolubývanie a výber nájomníka

Záujemca podáva žiadosť sám alebo za skupinu spolubývajúcich: založí skupinu, pozve ostatných e-mailom, dohodnú sa v skupinovom chate a žiadosť odíde prenajímateľovi až vo chvíli, keď s ňou súhlasia všetci. Prenajímateľ vidí prehľad záujemcov s odpoveďami na svoje otázky, stavom overenia a stručným zhrnutím od AI (opäť len návrh). Chránené údaje ako vek, pohlavie alebo národnosť platforma nezbiera. Keď prenajímateľ niekoho vyberie, ostatní dostanú slušnú automatickú odpoveď.

### Obhliadky

Prenajímateľ vypíše termíny obhliadok s kapacitou a poznámkou („zraz pred vchodom“), záujemcovia si ich rezervujú, presúvajú alebo rušia priamo v žiadosti a príde im pripomienka.

### Digitálna zmluva a podpis

Zmluva vzniká zo šablóny (byt na dobu určitú aj neurčitú, spoločný nájom spolubývajúcich, izba) a vyplní sa údajmi z ponuky. Z formulára sa vygeneruje PDF, obe strany ju podpíšu online a každá udalosť — návrh, podpis, platba, výpoveď — sa zapíše do auditného reťazca, kde je každý záznam naviazaný hashom na predchádzajúci. Dodatočná úprava histórie sa tak nedá skryť; stránka zmluvy ukazuje, že reťazec je neporušený. Platforma zvládne aj výpoveď a vyúčtovanie kaucie.

Šablóny majú vodoznak NÁVRH, kým ich nezreviduje právnik, a podpis je zatiaľ jednoduchý elektronický podpis s evidenciou (čas, IP adresa, odtlačok dokumentu). Podpis cez Bank iD je pripravený ako ďalší krok, čaká na zmluvu s Bank iD.

### Platby — peniaze idú priamo prenajímateľovi

Zo zmluvy vznikne platobný kalendár: kaucia, nájomné a zálohy, pri spolubývajúcich rozdelené podľa podielov. Nájomník platí QR kódom v bankovej aplikácii alebo kartou cez odkaz Revolut Business, ktorý vedie na vlastný obchodnícky účet prenajímateľa. Prenajímateľ môže prepojiť bankový účet (len na čítanie) a prichádzajúce platby sa samy spárujú podľa variabilného symbolu, špecifického symbolu a sumy; čo nesedí, zostane ako návrh na ručné spárovanie. Po splatnosti chodia pripomienky a po siedmich dňoch eskalácia.

**TerraReality nikdy nedrží ani nepreposiela peniaze nájomníkov.** Žiadna úschova, žiadne kryptomeny — platby idú rovno z účtu nájomníka na účet prenajímateľa.

### Prevzatie existujúcich nájmov

Prenajímateľ, ktorý má byty už prenajaté na papierovú zmluvu, nemusí nič podpisovať znova. Nájom prevezme ako podpísaný mimo platformy, nahrá sken zmluvy a platby sa sledujú od dátumu prevzatia: starší dlh ide do počiatočného zostatku, držaná kaucia sa zaeviduje a zostane aj doterajší variabilný symbol. Nájomníkom nič nepríde, kým ich prenajímateľ nepozve do nájomného portálu. Viac nájmov naraz sa dá naimportovať z tabuľky.

### Portfólio naprieč mestami a riziko nájmov

Pre prenajímateľov a správcov s viacerými bytmi: prehľad všetkých nájmov podľa obcí, mesačný predpis a čo skutočne prišlo, trend za dvanásť mesiacov, zoznam toho, čo si vyžaduje pozornosť (dlh, eskalácia, výpoveď, voľná jednotka), koncentrácia príjmov a rent roll s exportom do CSV a Excelu. Každý nájom má skóre rizika vypočítané z pravidiel (dlh, staré nezaplatené platby, krytie kauciou, blížiaci sa koniec zmluvy…). Skóre je len informácia, nikdy o nikom nerozhoduje; nájomník vidí, z čoho sa počíta. Pravidlá (pripomienky, eskalácia, kaucia, výpovedná lehota) sa dajú nastaviť podľa obcí a investor môže dostať prístup len na čítanie, kde nájomníkov vidí iba ako iniciály.

### Propagácia a fakturácia

Prenajímateľ si môže inzerát topovať alebo zvýrazniť. Platí kartou cez Stripe, faktúra s DPH sa vystaví sama, príde e-mailom a dá sa stiahnuť v administrácii. Topované inzeráty sú vo výsledkoch označené „Topované“.

### Backoffice, moderovanie a DSA

Prevádzkovateľ má prehľad metrík, frontu inzerátov na schválenie, moderovanie nahlásených konverzácií a inzerátov, frontu návrhov AI na nové parametre, cenník propagácie, šablóny zmlúv, prepínače funkcií a auditný log. Nahlásiť inzerát môže ktokoľvek aj bez účtu (podľa európskeho nariadenia o digitálnych službách, DSA); o každom prípade rozhoduje človek a odôvodnenie ide e-mailom oznamovateľovi aj inzerentovi. Prihlásenie „za používateľa“ pri podpore vyžaduje uvedenie dôvodu a zapíše sa do auditu.

### Mobilná aplikácia

Flutter aplikácia pre iOS a Android pokrýva to, čo nájomník potrebuje v telefóne: hľadanie so zoznamom a mapou, detail inzerátu so správou, žiadosťou a rezerváciou obhliadky, moje obhliadky, nájom s QR platbou a odkazom Revolut a preklik z push notifikácií. Je to prvá verzia; buildy pre testerov (TestFlight a interný track Google Play) vzniknú pri príprave testovania.

### Prevádzka

Produkčné prostredie je pripravené pre Hetzner v EÚ: oddelený aplikačný a databázový server v privátnej sieti, automatické HTTPS, zálohy databázy s obnovou k ľubovoľnému okamihu (strata najviac hodiny dát) a overenou skúškou obnovy, monitoring s upozorneniami (dostupnosť 99,9 %, odozva hľadania do 300 ms, stav záloh) a hlásenie chýb. AI beží na vlastnom GPU serveri; keď AI nie je k dispozícii, všetko funguje aj bez nej.

### Stav a testovanie

**Hotové je MVP celej platformy.** Všetky moduly vyššie sú naprogramované a pokryté automatickými testami — jednotkovými, integračnými a end-to-end testami, ktoré v prehliadači preklikajú celé scenáre (inzerát, správy, skupinová žiadosť, zmluva s podpisom a spárovanou platbou, portfólio, propagácia s faktúrou, nahlásenie podľa DSA, backoffice). Overená je aj obnova databázy zo zálohy.

Hotové sú aj bezpečnostné a prevádzkové úpravy odporúčané pri revízii kódu a push notifikácie pre žiadosti, zmluvy a platby. Uzavretá beta beží na vlastnom serveri s ukážkovými inzerátmi pre Prahu a okolie, ktoré sú v nej označené. Produkčné nasadenie na Hetzneri čaká na účty a prístupy (pozri nižšie).

Testovanie so živými ľuďmi prebieha v piatich fázach. Každá končí bránou, kde sa spoločne rozhodne, či sa ide ďalej:

1. **T0 — príprava (2 týždne).** Testovacie prostredie na Hetzneri s pruhom „Testovacie prostredie“, partneri v sandboxe (Stripe, Revolut, Bank iD), produktová analytika bez osobných údajov, tlačidlo „Nahlásiť problém / nápad“ na webe aj v aplikácii, registrácia len na pozvánku, testovacie dáta a buildy aplikácie pre testerov.
2. **T1 — interné testovanie (1 týždeň).** 5–8 ľudí z tímu a okolia prejde všetky scenáre v roli prenajímateľa aj hľadajúceho, na viacerých zariadeniach, vrátane nácviku incidentu a obnovy zo zálohy.
3. **T2 — moderované testy použiteľnosti (2 týždne).** 12 účastníkov: súkromní prenajímatelia, správca s bytmi vo viacerých mestách, hľadajúci Česi aj cudzinci a dvojica spolubývajúcich. Meria sa úspešnosť úloh a spokojnosť (SUS ≥ 70).
4. **T3 — uzavretý pilot v Prahe (6 týždňov).** 20 pilotných prenajímateľov s osobným onboardingom a 50–100 hľadajúcich, len na pozvánku. Sleduje sa, či inzeráty dostávajú žiadosti, ako rýchlo prenajímatelia odpovedajú, koľko zmlúv sa dotiahne digitálne a ako spoľahlivo všetko beží; release raz týždenne.
5. **T4 — otvorená beta v Prahe (4 týždne).** Registrácia pre všetkých so štítkom beta, bez platenej kampane — a na konci rozhodnutie o verejnom spustení.

Celé je to zhruba 15 týždňov od začiatku prípravy.

**Čo potrebujeme od vás:**

- účty a prístupy na prevádzku: Hetzner, doména a DNS, vývojárske účty Apple a Google, Stripe, Revolut Business, Bank iD a poskytovateľ napojenia na banku;
- nábor testerov, 20 pilotných prenajímateľov a hľadajúcich, odmeny pre účastníkov;
- právnu revíziu obchodných podmienok, ochrany osobných údajov a šablón zmlúv, súhlasy testerov a rozhodnutie, či sa v pilote podpisujú skutočné zmluvy priamo na platforme;
- penetračný test pred pilotom, vedenie rozhovorov v T2 a prvú líniu podpory počas pilotu;
- rozhodnutie na každej bráne medzi fázami.
