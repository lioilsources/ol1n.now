---
slug: ugcfactory
name: UGC Factory
repo: lioilsources/UGCFactory
icon_src: app/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png
tagline: Továrna na Roblox doplňky — z promptu do 3D modelu bez ruční modelace
order: 13
featured: false
desktop: macos
mobile: android,ios
appstore:
playstore:
testflight:
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
---
UGC Factory vyrábí doplňky pro avatary na Roblox Marketplace. Napíšeš, co chceš —
*„zdobená samurajská helma s neonovými akcenty"* — a z druhé strany vypadne
texturovaný 3D model připravený k nahrání. Žádná ruční modelace.

## Jak to běží

Práce je rozdělená mezi tři stroje. **DGX Spark** s GPU kreslí koncept (Illustrious na předměty,
Juggernaut XL na to, co se nosí na těle — vybere se podle kategorie), odmaže pozadí a udělá z obrázku
3D model. **NAS** drží frontu, katalog a headless Blender, který model převede do
robloxích limitů — pod 4 000 trojúhelníků, UV, zapečená textura, správný úchytný
bod. **Mobil** slouží k třídění.

Rychlá dráha (SF3D) postaví model za půldruhé vteřiny, takže se dá zkoušet ve
velkém. Pomalejší a jemnější TRELLIS se pustí až při balení kusu, který prošel
tvým okem — drahý výpočet se utratí jen za to, co opravdu chceš prodávat.
Šperky jako korunky a helmy jdou TRELLISem rovnou.

## Appka

Mobilní klient je jádro celé věci. **Composer** rozešle dávku — kategorie × styl ×
varianty, klidně padesát kusů naráz. **Fronta** ukazuje živě, co se právě vyrábí a
v jaké fázi. **Triage** je to hlavní: jeden kus na obrazovce, přepínač mezi
konceptem a otočitelným 3D modelem, tři tlačítka — schválit, zamítnout, zkusit
znovu s jiným seedem. Prochází se to rychleji, než se dá číst. **Review** ukáže
zkonvertovaný kus: počet trojúhelníků proti limitu, UV, uzavřenost meshe,
texturu a verdikt PASS, WARN nebo FAIL. Odtud jde kus zkonvertovat znovu nebo
zabalit k nahrání. Jméno, popisy, cenu a tagy vyplněné v appce přebalení
nepřepíše.

Běží na Androidu, iOS, macOS i v prohlížeči. Server ji servíruje na svém vlastním
originu, takže webová verze je vždycky aktuální.

## Zdobení dokola

Model vzniká z jednoho obrázku, takže zadní stranu nikdo neviděl a vyjde
plochá a nezdobená. U kusů, které jsou opravdu radiálně symetrické (dort,
koruna), se proto přední výseč zkopíruje dokola a šev se svaří. Zapíná se
v Composeru nebo u hotového kusu při nové konverzi, bez dalšího generování.
Na plochý kus se nehodí — rozpadne se na slepenec výsečí.

## Kategorie

Nejlíp vycházejí věci, které i v trénovacích datech existují **samy o sobě**:
batůžky, kabelky, korunky, klobouky, dorty, masky, štíty, prsteny.
Modistické kreace s peřím a květinami, prošívané kabelky s monogramem, koruny
s perlami a acháty, masky inspirované pěti kulturami, chlupaté liščí a mývalí
ocasy, kawaii mazlíčci na rameno.

Obrázky vypadají dobře skoro vždycky — o modelech to zdaleka neplatí, a rozhoduje
až ten. Kompaktní tvary s objemem (batoh, dort, prsten) drží dobře. Tenké ažurové
struktury se rychlé dráze trhají, takže korunky jdou rovnou pomalejší cestou.
A kreslený vstup má málo stínů, takže z něj vzniká reliéf místo objemu — pastelová
zvířátka proto potřebují prompt, který si vynutí měkké stínování.

Oblečení a vlasy jsou tvrdý oříšek: model je zná jen na postavě, takže z promptu
*„dračí šaty"* nakreslí draka. Pomáhá přepnout na fotorealistický model a
formulovat to jako produktovou fotku — *„šaty na neviditelné figuríně"*.

Šaty, boty a rukavice navíc Roblox řeší jako layered clothing s klecovým meshem,
který továrna zatím neumí. Pro prsty a ruce nemá Roblox úchyt vůbec.
