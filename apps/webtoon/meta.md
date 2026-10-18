---
slug: webtoon
name: Webtoon
repo:
tagline: Interaktivní webtoon — čtenář na konci dílu volí, jak příběh pokračuje, a další díl se nakreslí
order: 27
featured: false
desktop: Web
mobile:
visuals: {n} obrázků — panely pěti dětských příběhů, srovnání dvou stylů a character sheety.
appstore:
playstore:
testflight:
---
Webtoon, který nekončí. Autor postaví svět: lore, postavy, místa a kánon,
kterým musí každý příběh projít. Čtenář pak čte díl jako běžný webtoon,
odshora dolů, a na konci vybere, co postava udělá dál, nebo to napíše
vlastními slovy. Z volby napíše jazykový model scénář dalšího dílu,
obrazový model nakreslí panely a bubliny s textem doplní až čtečka,
takže jde text opravit bez přegenerování obrázku.

Ukázkou je pět krátkých dětských příběhů. Každý má 9–10 panelů a končí
třemi volbami: **Veselý den v parku**, **Dobrodružství u moře**,
**Záhada v lese**, **Zábavný zmatek v kuchyni** a **Halloweenská noc**.
Hotové stripy jsou na podstránce Stripy, volby si jde vyzkoušet v Gamebooku.

### Čtečka a herní smyčka

Díl je svislý strip panelů s bublinami, myšlenkami, výkřiky a zvukovými
efekty. Na konci je blok „Co uděláš dál?“ se třemi volbami a polem pro
vlastní text. Před generováním čtečka ukáže cenu, 1 kredit za panel. Zatím jde jen o odhad, nic se neúčtuje.
Pak sleduje, jak díl vzniká: nejdřív se píše scénář, potom se kreslí
panel po panelu. Historie dílů ukazuje, kudy čtenář šel.

Vlastní text projde nejdřív moderací. V dětském světě je přísnější
a při chybě raději odmítne: věta „honí ho s nožem“ neprojde a čtečka
vysvětlí proč a nabídne volby znovu.

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

Projekt je ve vývoji: Go backend s frontou úloh v Postgresu, Flutter
aplikace (web a macOS) a prototyp v Pythonu. Obrázky i texty vznikají
na vlastním GPU serveru, veřejně to zatím neběží.

Screenshoty jsou z webové verze aplikace v šířce telefonu proti lokálnímu
backendu. Díly 2 na nich mají jen scénář, panely na kreslení teprve čekají.
Zdrojový kód je na
[github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
