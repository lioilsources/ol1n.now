---
slug: predavka
name: Předávka
repo:
tagline: Klidná kuchyně ve špičce — kuchaři slyší objednávky, obsluha vidí, za kolik minut co ponese
order: 26
featured: false
desktop: Web
mobile: android
appstore:
playstore:
testflight:
---
Ve špičce se v restauraci ztrácí čas mezi kuchyní a placem. Bony se vrší na
lince, obsluha chodí do kuchyně zjišťovat, kdy bude stůl sedm, a jídlo,
které je hotové, chladne na předávce, protože si ho nikdo nevšiml. Předávka
tohle řeší bez dalšího koukání do obrazovek: **kuchaři objednávky slyší**,
**obsluha na jednom displeji vidí, za kolik minut co dorazí a na jaký stůl**,
a hotové jídlo si po pár minutách na předávce samo řekne o vyzvednutí.

Všechno běží v restauraci na jednom malém počítači: bez cloudu, bez
měsíčního poplatku za servery a v češtině. Při výpadku internetu služba běží
dál.

### Kuchyň slyší, nemusí číst

Když přijde objednávka, reproduktor na předávce řekne krátkou větu, třeba
„Stůl sedm: dvě svíčkové, jeden řízek.“ Číslovky i tvary jídel jsou správně
česky („jedna svíčková, dvě svíčkové, pět svíčkových“). Hlas vzniká přímo
v restauraci a v testech byl připravený k přehrání do 0,2 s od události. Hlášky se nikdy
nepřekřikují: mají pořadí podle důležitosti, mezi sebou pauzu a stará
objednávka, kterou už ukazuje displej, se zbytečně nečte. Tlačítko „Ještě
jednou“ zopakuje poslední hlášku.

### Fronta, ze které si kuchař bere

Každá stanice (gril, teplá, studená, dezerty) má svou frontu na tabletu nebo
televizi. Kuchař si jídlo vezme jedním klepnutím nebo tlačítkem na bump baru.
Systém tím ví, kdo co vaří a odkdy, a když se k objednávce dvě minuty nikdo
nemá, ozve se: „Stůl sedm, gril, čeká na kuchaře.“

### Obsluha ví, kdy a kam nést

Displej na place ukazuje stoly, co na ně jde a za kolik minut to bude.
Odhad se nemění každou chvíli (nejvýš jednou za půl minuty), aby se podle
něj dalo plánovat. Nahoře je vždycky to, co je potřeba vyzvednout. Na
předávce jídlo „stárne“: po třech minutách se ozve „Stůl sedm hotovo, na
předávce tři minuty“ a hlášku zopakuje, dokud si ho někdo nevezme.

### Odhady se učí z vlastní kuchyně

Na začátku šéfkuchař jednou zadá, jak dlouho co trvá. Pak Předávka měří
každé jídlo od převzetí po hotovo a po pěti měřeních používá skutečné časy
této kuchyně. Odhad pro hosta tak počítá s tím, kolik je ve frontě před ním
a kolik kuchařů na stanici vaří zároveň.

### Funguje s jakoukoli pokladnou

Objednávky umí převzít z bonovací tiskárny: Předávka se zapojí mezi pokladnu
a tiskárnu, bon se vytiskne jako dřív a ona si z něj přečte stůl a jídla.
Nepotřebuje tedy žádné napojení na konkrétní pokladnu. Objednávky jde zadávat
i přímo z tabletu obsluhy.

Podrobný popis funkcí a průchodů službou je na stránce **Jak to funguje**
níže, včetně tří momentů večera: prázdná fronta, pár stolů a „nestíháme!“.

### Stav

Předávka je hotový funkční prototyp: server, hlas, odposlech tiskárny,
fronta, odhady, chody a displeje (aplikace pro Android TV a tablety i verze
do prohlížeče) jsou postavené a otestované v simulaci provozu. **Zatím
neběžela v ostré restauraci.** Další krok je pilot v jedné kuchyni:
srozumitelnost hlasu v hluku odsávání, ozvučení kuchyně více reproduktory
a čitelnost displejů na skutečných televizích.

Screenshoty jsou ze skutečných displejů. Stav na nich vznikl simulací
služby: smyšlené menu a stoly, čas zastavený v daném okamžiku večera.
