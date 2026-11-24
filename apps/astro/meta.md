---
slug: astro
name: Astro
repo: lioilsources/Astro
icon_src: app/assets/icon/icon.png
tagline: Horoskop, tranzity a český výklad — počítá se v telefonu, bez internetu
featured: false
langs: cs
desktop:
mobile: android,ios,web
artifacts: android
appstore:
playstore:
testflight:
web: https://lioilsources.github.io/Astro/app/
---
Astro spočítá nativní horoskop a tranzity přímo v telefonu a vyloží je
česky. Nepotřebuje internet ani účet a data narození neopustí zařízení.

### Výpočet

Polohy planet, uzlů a hrotů domů počítá appka sama, v čistém Dartu.
Proti efemeridě NASA DE440 a Swiss Ephemeris sedí všechny planety i všech
devět systémů domů do jedné obloukové minuty. Hlídá historické časové
zóny, letní čas i juliánský kalendář před rokem 1582. Místo narození se
hledá offline v databázi zhruba 55 tisíc míst.

### Horoskop a výklad

Kolo zvěrokruhu, tabulky poloh, aspektů a důstojností a srovnání dvou
systémů domů. Appka najde obrazce aspektů, jako velký trigon, T-kvadrát,
jod nebo draka, a na kole je zvýrazní. Ukáže i konjunkce s 32 stálicemi
z katalogu Hipparcos. Výklad jde číst po oddílech, nebo podle témat:
povaha, vztahy, práce, rodina. Každý text má tři vrstvy: popis, stinnou
stránku a tradiční těžké významy. Těžká témata, jako nemoc nebo smrt, si
každý skryje sám a appka pak ukáže jen řádek „Skryto“ s odkazem na
Linku první psychické pomoci 116 123.

### Tranzity, progrese a solár

Co se děje dnes, den po hodinách, kalendář a probíhající tranzity:
kdy začínají, kdy jsou přesné, kolikátý je průchod, zastávky planet
a síla. Den po hodinách ukazuje východ a západ Slunce, planetární hodiny,
Měsíc bez aspektu a jeho vstupy do znamení. Kalendář má fáze Měsíce
s přesnými časy a zatmění. Počítá se pro místo pobytu, které může být
jiné než místo narození.

Progrese posouvají horoskop o den za každý rok života a ukazují časovou
osu se změnami progresního Měsíce a Slunce. Solár je horoskop chvíle,
kdy se Slunce vrátí na své místo z narození. Počítá se pro bydliště,
nebo pro místo narození.

### Partnerský horoskop

Dva uložené profily na dvojitém kole: aspekty mezi planetami obou lidí,
planety v domech toho druhého a výklad. Typ vztahu se volí: partneři,
rodič a dítě, sourozenci, přátelé, kolegové. Partnerskou vrstvu textů
appka ukáže jen u partnerů. U dvojčat appka ukáže, čím se jejich horoskopy liší.

### Zeptej se

Appka ukáže, která postavení vysvětlují zvolený rys, a jak napjatý byl
konkrétní den v porovnání s celým životem.

Horární otázka se čte podle pravidel Williama Lillyho z knihy Christian
Astrology (1647). Appka spočítá horoskop okamžiku otázky a řekne, co
podle tradičních pravidel vychází: ano, ano s potížemi, ne, nebo že to
říct nejde. Uvede důvody
pro a proti, výhrady, odhad času a u ztracené věci směr. Otázky
zdraví verdikt nedostanou. Deník otázek si pamatuje, jak to dopadlo,
a po třiceti uzavřených otázkách ukáže, jak často appka trefila proti
odpovědi „vždy ano“ a „vždy ne“.

„Najdi termín“ hledá vhodnou chvíli pro svatbu, smlouvu, zahájení
podnikání, nákup, stěhování, cestu, zkoušku nebo pohovor. Projde až
90 dní po deseti minutách podle 26 tradičních pravidel elekce, omezí
hledání na zvolené hodiny a dny a vrátí nejvýš deset oken s důvody
pro a proti. Okno jde uložit do kalendáře. Termín operace nehledá.

### Deník předpovědí

Každý den jde ohodnotit od −2 do +2. Po 60 dnech appka spočítá, jestli
hodnocení souvisí s napětím dne podle tranzitů, a stejně viditelně
řekne i to, že nesouvisí. Slepý test na 90 dní skryje tranzity, dokud
není den ohodnocený. Večerní připomínka je volitelná a jen v telefonu,
deník jde vyexportovat do CSV.

### Osobnosti

Katalog 298 veřejně známých lidí, z toho 123 z Česka a Slovenska.
U každého je spolehlivost času narození a zlomové události s datem
a pramenem. Ke každé události appka spočítá tranzity toho dne a jak
neobvyklý den to byl v celém životě. Souhrn přes celý katalog zatím
ukazuje, že dny zlomových událostí nejsou napjatější než náhodné dny týchž
životů.

### Soukromí

Profily, deník i otázky jsou šifrované a uložené jen v telefonu. Žádná
reklama, žádné sledování, nic se neodesílá. Výklad jde vyexportovat do
PDF.

### Stav

Astro je ve vývoji. Výpočet i obrazovky jsou hotové a české texty
výkladu jsou napsané všechny, přes 2 200. Vygeneroval je jazykový model
podle pravidel projektu a prošly automatickou kontrolou. Android APK je
ke stažení z vydání na GitHubu, v App Storu ani na Google Play appka
zatím není. Zdrojový kód je na
[github.com/lioilsources/Astro](https://github.com/lioilsources/Astro).
