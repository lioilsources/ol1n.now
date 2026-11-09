---
slug: webtoon
name: Toonfork
repo: lioilsources/Webtoon
icon_src: app/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png
tagline: Komiksy na výšku i bez internetu — příběhy zdarma, gamebooky, kde volíš ty, a panely, které ožívají
order: 27
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
featured: false
desktop: macos
mobile: android
visuals: {n} obrázků — panely pěti dětských příběhů, srovnání dvou stylů a character sheety.
appstore:
playstore:
testflight:
---
Toonfork (dřív pracovně Webtoon) je čtečka komiksů na výšku, která funguje
i bez internetu. Po instalaci je v ní 15 příběhů zdarma, bez účtu
a bez registrace. Příběhy vznikají na vlastním GPU serveru: jazykový model
píše scénář, obrazový model kreslí panely a bubliny s textem doplní až
čtečka, takže jde text opravit bez přegenerování obrázku.

Hotové stripy pěti dětských příběhů jsou na podstránce Stripy, herní smyčka
s volbou na konci dílu v Gamebooku.

### Čtečka

Příběh je jeden dlouhý pás panelů s bublinami, myšlenkami, výkřiky
a zvukovými efekty, který posouváš palcem shora dolů. Vybrané panely ožívají
v krátkých smyčkách: déšť na okně, světlo na hladině, vítr ve vlasech.
Na konci dílu je vidět, co bylo zvoleno, a tlačítko **Další díl**. Po
posledním dílu přijde **Konec** a návrh dalšího příběhu.

### Gamebooky

V gamebooku o ději rozhoduješ sám. Na konci každé části vybereš, co dál,
a příběh se rozvětví. Appka si pamatuje, kde jsi, kudy jsi šel a které
konce jsi našel; mapa cesty ukazuje jen to, co už jsi navštívil. Jde začít
znovu nebo se vrátit o krok. Gamebooky jsou zdarma: pro děti **Sára
a černá koruna**, pro dospělé třeba komorní drama v psychologické poradně
**Učit se mlčet**, **Kovové nebe nad námi** nebo **Rozkvetlá louka, která
zšedla**. Dramata otevírají těžká témata a dětský profil je skryje.

V betě je editor větví: k libovolné volbě přidáš vlastní pokračování,
poskládáš ho z obrázků gamebooku a napíšeš bubliny. Větev si hned zahraješ
a můžeš ji poslat autorovi přes sdílení, žádný server.

### Balíčky

Volitelné balíčky přidají až 50 příběhů: **Romantika** (lehké love story
pro dospělé, bez explicitních scén), **Pro děti** a **Superhrdinové**.
Balíček se po nákupu stáhne a čte se offline. Jeden nákup odemkne všechno,
včetně balíčků, které vyjdou později.

### Profil a rodičovský zámek

Při prvním spuštění si vybereš profil **Děti** nebo **Dospělí**. Dětský
profil skryje romantiku a dramata v knihovně i v obchodě. Každý nákup
i přepnutí na Dospělé hlídá rodičovský zámek s příkladem z násobilky.

### 12 jazyků

Příběhy, gamebooky i texty čtečky jsou ve 12 jazycích: čeština,
angličtina, němčina, francouzština, italština, polština, brazilská
portugalština, japonština, korejština, vietnamština, ruština
a ukrajinština. Jazyk bublin se přepne v Nastavení.

### Soukromí

Žádný účet, žádné reklamy, žádné sledování. Toonfork nesbírá osobní data;
co máš koupené, si pamatuje zařízení a nákupy jde obnovit v Nastavení.

## Studio: jak příběhy vznikají

Druhá podoba téže aplikace je Studio pro autora. Autor postaví svět: lore,
postavy, místa a kánon, kterým musí každý příběh projít. Ve Studiu se dá
hrát i interaktivně: čtenář na konci dílu vybere, co postava udělá dál,
nebo to napíše vlastními slovy, a z volby vznikne další díl. Vlastní text
projde nejdřív moderací; v dětském světě je přísnější a při chybě raději
odmítne. Screenshoty na této stránce jsou ze Studia.

### Editor světa

Autor má v aplikaci záložku **Tvořit**:

- **Základ:** název, synopse, tón, jazyk, publikum (Pro děti, Od 13 let,
  Pro dospělé), viditelnost a výtvarný styl, který platí pro celý svět.
- **Lore a kánon:** pravidla světa, frakce, kánonické uzly v pevném
  pořadí a mantinely, tedy co se nesmí stát.
- **Postavy a lokace:** popis vlastními slovy. Pevné booru tagy pro
  obrazový model z něj navrhne LLM. Tagy, které model nezná, se vyřadí
  podle slovníku WD14 a autor je doladí.
- **Character sheet:** čtyři varianty postavy na bílém pozadí. Ta, která
  nejvíc odpovídá tagům, se stane referenčním obrázkem.
- **Přehled:** kampaně, kde čtenáři skončili, které volby vybírali
  a jak daleko došli v kánonu.

### Modely

- **Scénář a moderace:** Qwen3.6-35B-A3B přes vLLM. Pro postavy
  a lokace navrhuje tagy, pro díly píše storyboard (6–8 panelů, 2–3 volby
  a pole pro vlastní text). Validátor pak hlídá postavy, místa a pravidla
  světa.
- **Panely:** SDXL přes ComfyUI. Výchozí je NoobAI-XL eps 1.1, druhý styl
  je Hassaku XL (Illustrious) 3.4. Lidské postavy kreslí jen tyto modely.
- **Živé panely:** Wan 2.2 udělá z hotového panelu smyčku 1–3 s, nejvýš
  dva pohyblivé panely na díl.
- **Kontrola obsahu:** tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3).
  Zkontroluje každý panel a podle publika ho zahodí a vykreslí s novým
  seedem. Pro děti navíc odmítne přiléhavé a odhalující oblečení.
  Stejný tagger měří, jestli postava v panelu odpovídá svému designu.

Identitu postavy drží samotné tagy. IP-Adapter je připravený, ale
v prvním měření obraz spíš rozbíjel. Model neudrží dvě lidské postavy
v jednom záběru, prohazuje jim vlasy a oblečení. Dětské příběhy proto
dávají každou postavu do vlastního panelu.

### Styly

Styl je pojmenovaný preset: checkpoint, sampler, počet kroků, CFG
a estetické tagy. Autor ho vybere jednou pro celý svět.
**clean_webtoon_noartist** má ploché barvy a čistou linku,
**hassaku_soft** měkké stínování a pastelové barvy. Ve vizuálech je
stejný díl v obou stylech vedle sebe.

### Stav

Toonfork je v alfa verzi: buildy pro macOS a Android jsou ke stažení na
GitHubu, App Store a Google Play se připravují. Studio běží jen proti
vlastnímu backendu (Go s frontou úloh v Postgresu), veřejně dostupné není.
Obrázky i texty vznikají na vlastním GPU serveru.

Screenshoty jsou z webové verze Studia v šířce telefonu proti lokálnímu
backendu. Díly 2 na nich mají jen scénář, panely na kreslení teprve čekají.
Zdrojový kód je na
[github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
