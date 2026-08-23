---
slug: ugcfactory
name: UGC Factory
repo: lioilsources/UGCFactory
tagline: Továrna na Roblox doplňky — z promptu do 3D modelu bez ruční modelace
order: 13
featured: false
desktop: macos
mobile: android,ios
appstore:
playstore:
testflight:
---
UGC Factory vyrábí doplňky pro avatary na Roblox Marketplace. Napíšeš, co chceš —
*„zdobená samurajská helma s neonovými akcenty"* — a z druhé strany vypadne
texturovaný 3D model připravený k nahrání. Žádná ruční modelace.

## Jak to běží

Práce je rozdělená mezi tři stroje. **DGX Spark** s GPU kreslí koncept (Illustrious,
Juggernaut nebo FLUX podle toho, co se generuje), odmaže pozadí a udělá z obrázku
3D model. **NAS** drží frontu, katalog a headless Blender, který model převede do
robloxích limitů — pod 4 000 trojúhelníků, UV, zapečená textura, správný úchytný
bod. **Mobil** slouží k třídění.

Rychlá dráha (SF3D) postaví model za půldruhé vteřiny, takže se dá zkoušet ve
velkém. Pomalejší a jemnější TRELLIS se pustí až na kus, který projde tvým okem —
drahý výpočet se utratí jen za to, co opravdu chceš prodávat.

## Appka

Mobilní klient je jádro celé věci. **Composer** rozešle dávku — kategorie × styl ×
varianty, klidně padesát kusů naráz. **Fronta** ukazuje živě, co se právě vyrábí a
v jaké fázi. **Triage** je to hlavní: jeden kus na obrazovce, přepínač mezi
konceptem a otočitelným 3D modelem, tři tlačítka — schválit, zamítnout, zkusit
znovu s jiným seedem. Prochází se to rychleji, než se dá číst.

Běží na Androidu, iOS i v prohlížeči. Server ji servíruje na svém vlastním
originu, takže webová verze je vždycky aktuální.

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
