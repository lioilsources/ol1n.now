---
slug: tlumocnik
name: Tlumočník
repo: lioilsources/Translator
icon_src: app/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png
tagline: Telefon na stole mezi dvěma lidmi — každý mluví svým jazykem a appka to druhému nahlas přeloží
featured: false
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
desktop:
mobile: android,ios
artifacts:
appstore:
playstore:
testflight:
---
Tlumočník je pro rozhovor u jednoho stolu: na úřadě, v servisu, u lékaře,
s novým kolegou. Telefon položíš doprostřed, ty mluvíš česky, druhý třeba
ukrajinsky. Appka sama pozná, kdo zrovna mluví, přeloží to a řekne nahlas
druhému. Nikdo nic neťuká a telefon si nepředáváte.

### Obrazovka rozdělená na půlky

Spodní polovina patří tobě, horní je otočená vzhůru nohama pro člověka
naproti. Každý tak čte ve svém jazyce a zprava doleva nic nemusí. Velkým
písmem je vždycky to, čemu daný člověk rozumí: u tvých vět to, co jsi řekl,
u vět druhého jejich překlad. Malým písmem nad tím je druhá verze, takže
vidíš, co přesně zaznělo. Barevný pruh u okraje ukazuje, čí strana právě
mluví.

Text překladu se objeví dřív, než ho appka přečte. Když nechceš, aby telefon
mluvil, přepneš na **jen text** a rozhovor běží dál jako titulky.

### Kdo mluví

Appka se rozhoduje podle hlasu a podle jazyka. Po pár větách si zapamatuje,
jak kdo zní, a do té doby jí pomůže, že každý mluví jinou řečí. Když si není
jistá, nehádá: větu ukáže na obou půlkách bez překladu a s tlačítkem
**To jsem já**. Kdo ji řekl, ťukne a appka ji přeloží správným směrem.
Dlouhým podržením své půlky můžeš mluvčího určit i sám.

Zatímco telefon mluví, mikrofon neposlouchá, aby appka nepřekládala sama sebe.

### Tři režimy

- **Auto:** mluví se po jednom a appka sama pozná, kdy kdo začal a skončil.
- **Podržet a mluvit:** drží se prst na své půlce, dokud mluvíš. Hodí se do
  hluku, kde automatika nestačí.
- **Průběžně:** během mluvení se ukazuje průběžný přepis.

### 13 jazyků

Čeština, angličtina, němčina, ukrajinština, vietnamština, polština,
slovenština, španělština, francouzština, italština, portugalština, japonština
a čínština. Dvojici jazyků vybereš před začátkem, naposledy použité jsou
v seznamu nahoře.

### Historie na telefonu

Každý rozhovor se uloží do historie s časem u každé věty. Dá se přečíst
znovu, označit text a celý ho sdílet, třeba e-mailem jako zápis z jednání.
Historie je jen v telefonu.

### Vlastní hlas (zkušební)

Překlad může znít i tvým hlasem. Nahraješ třicet sekund souvislého čtení
a appka pak tvoje věty řekne v cizím jazyce hlasem, který se podobá tvému.
Hlas je biometrický údaj, proto se nahrává jen se zaškrtnutým souhlasem,
nahrávat smíš jen sebe a smazáním hlasu se nahrávka ze serveru fyzicky
odstraní. Hlasů může být nejvýš pět.
Vlastní hlas je zatím jen pro testery se zvacím kódem.

### Přístup

Appka nemá účet: telefon se při prvním spuštění sám zaregistruje jako
zařízení. Bez kódu má základní přístup s omezeným časem překladu na den.
Zvací kód od autora appky odemkne testerský přístup s delším překladem
a vlastním hlasem. Když dnešní minuty dojdou, appka to řekne a zítra
překládá zase.

### Soukromí

Rozpoznání řeči, překlad i hlas běží na našem vlastním serveru s GPU,
ne v cizím cloudu. Server zvuk ani texty rozhovorů neukládá a nezapisuje do
logů. Appka nemá účet, reklamy ani analytiku třetích stran; na vlastní server
vývojáře jdou jen anonymní statistiky používání bez identifikátorů a vypnout je
jde v nastavení. Kvůli serveru potřebuje
připojení k internetu.

Tlumočník je zatím v uzavřeném testování: na iPhonu přes TestFlight, na Androidu přes Firebase.
