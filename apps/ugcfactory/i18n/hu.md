---
tagline: Gyár Roblox-kiegészítőkhöz — promptból 3D modell kézi modellezés nélkül
---
A UGC Factory avatar-kiegészítőket gyárt a Roblox Marketplace-re. Leírod, mit szeretnél —
*„díszes szamurájsisak neonos részletekkel”* — és a másik végén kiesik egy
textúrázott 3D modell, feltöltésre készen. Semmi kézi modellezés.

## Hogyan működik

A munka három gép között oszlik meg. A GPU-s **DGX Spark** megrajzolja a koncepciót (tárgyakhoz Illustrious,
a testen viselt dolgokhoz Juggernaut XL — kategória szerint választva), eltávolítja a hátteret, és a képből
3D modellt csinál. A **NAS** tartja a sort, a katalógust és egy headless Blendert, amely a modellt
a Roblox korlátai közé hozza — 4000 háromszög alatt, UV, besütött textúra, helyes rögzítési
pont. A **telefon** a válogatásra való.

A gyors sáv (SF3D) másfél másodperc alatt összerak egy modellt, így nagyban
lehet kísérletezni. A lassabb, finomabb TRELLIS csak akkor indul, amikor egy darabot csomagolsz,
amely átment a szemeden — a drága számítás csak arra megy el, amit tényleg el akarsz adni.
A díszes darabok, például a tiarák és a sisakok, egyből TRELLISszel mennek.

## Az app

A mobilkliens az egész lényege. A **Composer** kiküld egy köteget — kategória × stílus ×
változatok, akár ötven darabot egyszerre. A **Sor** élőben mutatja, mi készül éppen és
melyik fázisban. A **Triage** a fő dolog: egy darab a képernyőn, váltó a
koncepció és a forgatható 3D modell között, három gomb — jóváhagyás, elutasítás, újra
másik seeddel. Gyorsabban végigmész rajta, mint ahogy olvasni lehet. A **Review** megmutatja
a konvertált darabot: háromszögszám a korláthoz képest, UV, a mesh zártsága,
textúra és PASS, WARN vagy FAIL ítélet. Innen a darab újrakonvertálható vagy
becsomagolható feltöltésre. Az újracsomagolás nem írja felül az appban kitöltött nevet, leírásokat, árat
és címkéket.

Fut Androidon, iOS-en, macOS-en és böngészőben. A szerver a saját originjén
szolgálja ki, így a webes verzió mindig naprakész.

## Körbe díszítve

A modell egyetlen képből születik, így a hátoldalát senki sem látta, és az
lapos és díszítetlen lesz. A valóban forgásszimmetrikus darabokál (torta,
korona) ezért az elülső cikket körbemásolja, a varratot pedig összehegeszti. Bekapcsolható
a Composerben vagy egy kész darabnál újrakonvertáláskor, újabb generálás nélkül.
Lapos darabra nem való — cikkek foltvarrásává esik szét.

## Kategóriák

Azok a dolgok sikerülnek a legjobban, amelyek a tanítóadatokban is **önmagukban** léteznek:
hátizsákok, kézitáskák, tiarák, kalapok, torták, maszkok, pajzsok, gyűrűk.
Kalaposkreációk tollal és virágokkal, steppelt monogramos táskák, koronák
gyöngyökkel és achátokkal, öt kultúra ihlette maszkok, bolyhos róka- és mosómedvefarkak,
kawaii vállkedvencek.

A képek szinte mindig jól néznek ki — a modellekre ez távolról sem igaz, és
a modell dönt. A tömör, testes formák (hátizsák, torta, gyűrű) jól tartanak. A vékony áttört
szerkezetek a gyors sávon szakadoznak, ezért a tiarák egyből a lassabb úton mennek.
A rajzolt bemeneten pedig kevés az árnyék, így domborműves lesz térfogat helyett — a pasztell
állatkáknak ezért olyan prompt kell, amely kikényszeríti a lágy árnyékolást.

A ruha és a haj kemény dió: a modell csak alakon ismeri őket, így a
*„sárkányruha”* promptra sárkányt rajzol. Segít átváltani fotorealisztikus modellre, és
termékfotóként megfogalmazni — *„ruha láthatatlan próbababán”*.

A ruhákat, cipőket és kesztyűket ráadásul a Roblox layered clothingként kezeli cage meshsel,
amit a gyár egyelőre nem tud. Az ujjakhoz és a kezekhez a Robloxnak egyáltalán nincs rögzítési pontja.
