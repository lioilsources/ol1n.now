---
tagline: Komiksy na výšku aj bez internetu — príbehy zadarmo, gamebooky, kde voliš ty, a panely, ktoré ožívajú
visuals: {n} obrázkov — panely piatich detských príbehov, porovnanie dvoch štýlov a character sheety.
---
Toonfork (predtým pracovne Webtoon) je čítačka komiksov na výšku, ktorá funguje aj bez internetu. Po inštalácii je v nej 15 príbehov zadarmo, bez účtu a bez registrácie. Príbehy vznikajú na vlastnom GPU serveri: jazykový model píše scenár, obrazový model kreslí panely a bubliny s textom doplní až čítačka, takže text sa dá opraviť bez pregenerovania obrázka.

Hotové stripy piatich detských príbehov sú na podstránke Strips, herná slučka s voľbou na konci dielu na podstránke Gamebook.

### Čítačka

Príbeh je jeden dlhý pás panelov s bublinami, myšlienkami, výkrikmi a zvukovými efektmi, ktorý posúvaš palcom zhora nadol. Vybrané panely ožívajú v krátkych slučkách: dážď na okne, svetlo na hladine, vietor vo vlasoch. Na konci dielu vidno, čo sa zvolilo, a tlačidlo **Ďalší diel**. Po poslednom diele príde **Koniec** a návrh ďalšieho príbehu.

### Gamebooky

V gamebooku o deji rozhoduješ sám. Na konci každej časti vyberieš, čo ďalej, a príbeh sa rozvetví. Appka si pamätá, kde si, kadiaľ si šiel a ktoré konce si našiel; mapa cesty ukazuje len to, čo si už navštívil. Dá sa začať odznova alebo sa vrátiť o krok. Gamebooky sú zadarmo: pre deti **Sara and the Black Crown**, pre dospelých napríklad komorná dráma v psychologickej poradni **Learning to Be Silent**, **Metal Sky Above Us** alebo **The Blooming Meadow That Turned Grey**. Drámy otvárajú ťažké témy a detský profil ich skryje.

V bete je editor vetiev: k ľubovoľnej voľbe pridáš vlastné pokračovanie, poskladáš ho z obrázkov gamebooku a napíšeš bubliny. Vetvu si hneď zahráš a môžeš ju poslať autorovi cez zdieľanie, žiadny server.

### Balíčky

Voliteľné balíčky pridajú až 50 príbehov: **Romantika** (ľahké love story pre dospelých, bez explicitných scén), **Pre deti** a **Superhrdinovia**. Balíček sa po kúpe stiahne a číta sa offline. Jeden nákup odomkne všetko, vrátane balíčkov, ktoré vyjdú neskôr.

### Profil a rodičovský zámok

Pri prvom spustení si vyberieš profil **Deti** alebo **Dospelí**. Detský profil skryje romantiku a drámy v knižnici aj v obchode. Každý nákup aj prepnutie na Dospelých stráži rodičovský zámok s príkladom z malej násobilky.

### 12 jazykov

Príbehy, gamebooky aj texty čítačky sú v 12 jazykoch: čeština, angličtina, nemčina, francúzština, taliančina, poľština, brazílska portugalčina, japončina, kórejčina, vietnamčina, ruština a ukrajinčina. Jazyk bublín sa prepne v Nastaveniach.

### Súkromie

Žiadny účet, žiadne reklamy, žiadne sledovanie. Toonfork nezbiera osobné údaje; čo máš kúpené, si pamätá zariadenie a nákupy sa dajú obnoviť v Nastaveniach.

## Studio: ako príbehy vznikajú

Druhá podoba tej istej aplikácie je Studio pre autora. Autor postaví svet: lore, postavy, miesta a kánon, ktorým musí každý príbeh prejsť. V Studiu sa dá hrať aj interaktívne: čitateľ na konci dielu vyberie, čo postava urobí ďalej, alebo to napíše vlastnými slovami, a z voľby vznikne ďalší diel. Vlastný text prejde najprv moderáciou; v detskom svete je prísnejšia a pri pochybnosti radšej odmietne. Screenshoty na tejto stránke sú zo Studia.

### Editor sveta

Autor má v aplikácii záložku **Tvoriť**:

- **Základ:** názov, synopsa, tón, jazyk, publikum (Pre deti, Od 13 rokov, Pre dospelých), viditeľnosť a výtvarný štýl, ktorý platí pre celý svet.
- **Lore a kánon:** pravidlá sveta, frakcie, kánonické uzly v pevnom poradí a mantinely, teda čo sa nesmie stať.
- **Postavy a lokácie:** opis vlastnými slovami. Pevné booru tagy pre obrazový model z neho navrhne LLM. Tagy, ktoré model nepozná, sa vyradia podľa slovníka WD14 a autor ich doladí.
- **Character sheet:** štyri varianty postavy na bielom pozadí. Tá, ktorá najviac zodpovedá tagom, sa stane referenčným obrázkom.
- **Prehľad:** kampane, kde čitatelia skončili, ktoré voľby vyberali a ako ďaleko došli v kánone.

### Modely

- **Scenár a moderácia:** Qwen3.6-35B-A3B cez vLLM. Pre postavy a lokácie navrhuje tagy, pre diely píše storyboard (6–8 panelov, 2–3 voľby a pole pre vlastný text). Validátor potom stráži postavy, miesta a pravidlá sveta.
- **Panely:** SDXL cez ComfyUI. Predvolený je NoobAI-XL eps 1.1, druhý štýl je Hassaku XL (Illustrious) 3.4. Ľudské postavy kreslia len tieto modely.
- **Živé panely:** Wan 2.2 urobí z hotového panelu slučku 1–3 s, najviac dva pohyblivé panely na diel.
- **Kontrola obsahu:** tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Skontroluje každý panel a podľa publika ho zahodí a vykreslí s novým seedom. Pre deti navyše odmietne priliehavé a odhaľujúce oblečenie. Ten istý tagger meria, či postava v paneli zodpovedá svojmu dizajnu.

Identitu postavy držia samotné tagy. IP-Adapter je pripravený, ale v prvom meraní obraz skôr rozbíjal. Model neudrží dve ľudské postavy v jednom zábere, prehadzuje im vlasy a oblečenie. Detské príbehy preto dávajú každú postavu do vlastného panelu.

### Štýly

Štýl je pomenovaný preset: checkpoint, sampler, počet krokov, CFG a estetické tagy. Autor ho vyberie raz pre celý svet. **clean_webtoon_noartist** má ploché farby a čistú linku, **hassaku_soft** mäkké tieňovanie a pastelové farby. Vo vizuáloch je ten istý diel v oboch štýloch vedľa seba.

### Stav

Toonfork je v alfa verzii: buildy pre macOS a Android sú na stiahnutie na GitHube, App Store a Google Play sa pripravujú. Studio beží len proti vlastnému backendu (Go s frontou úloh v Postgrese), verejne dostupné nie je. Obrázky aj texty vznikajú na vlastnom GPU serveri.

Screenshoty sú z webovej verzie Studia v šírke telefónu proti lokálnemu backendu. Diely 2 na nich majú len scenár, panely na kreslenie ešte čakajú. Zdrojový kód je na [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
