---
slug: doggiowars
name: DoggioWars
repo: lioilsources/DoggioWars
tagline: Voxel dogfight na vzdušných ostrovech (samostatná hra pro Luanti)
order: 12
featured: false
desktop: macos,windows,linux
mobile: android
artifacts: mod
appstore:
playstore:
testflight:
contentdb:
---
Jsi stíhačka. Ne pilot ve stíhačce — samotný stroj. V DoggioWars se nechodí
pěšky, nic se netěží a nestaví: od první vteřiny letíš.

Pod tebou se táhne nebe plné **létajících ostrovů** ve dvanácti biomech —
sopky s lávou přetékající přes kráter, ledovcové mesy s rampouchy, atolové
laguny, obří houby, zářící krystalové věže. Generují se z čísla, kterému se
říká seed, takže dva světy nejsou stejné, a ostrovy jsou **rozbitné**:
tvoje střely z nich odlamují kusy, které se pak sypou do prázdna.

### Dva stroje v jednom

Přepínají se příkazem `/mode` a létají úplně jinak.

**Ponorka** je výchozí a odpouští chyby. Visí na místě — když pustíš ovládání,
plynule zastaví, takže se dá v klidu prohlížet ostrov nebo manévrovat mezi
skalami po milimetrech. Umí i úkrok stranou, aniž by změnila kurz.

**Stíhačka** nezastaví nikdy. Drží rychlost, kterou jí nastavíš, a zatáčí se
**náklonem** — levá páčka ji položí na křídlo a nos se stočí sám, tím ochotněji,
čím strměji visíš. Strmý střemhlavý let ji rozežene nad maximum, stoupání jí
rychlost naopak ubírá, takže výšku a rychlost pořád proti sobě směňuješ.
Umí barrel roll, looping i Immelmannovu otočku — a let těsně kolem skály
nabíjí boost, takže se riskování vyplácí.

### Závod za zlatým králíkem

Příkazem `/race` se spustí chrtí dostih: po obloze uhání zlatý králík, který
umí tytéž triky co ty, proplétá se tunely provrtanými skrz ostrovy a nečeká.
Buď ho projedeš celou tratí, nebo ne.

### Ovládání

Myš a klávesnice fungují, ale hra je dělaná pro **gamepad** — Xbox 360 i PS4
DualShock přes nativní joystick v Luanti, žádný externí mapovač. Levá páčka
letadlo řídí, pravá míří zbraní nezávisle na tom, kam letíš. Náklon a sklon
ukazuje vodováha v HUD, protože horizontem Luanti naklánět neumí.

### Instalace

Potřebuješ **Luanti 5.12 nebo novější** a **nic dalšího** — od verze 2.0 je
DoggioWars samostatná hra, ne mod, takže Minetest Game už není potřeba.

Rozbal archiv do složky `games/` ve svém datovém adresáři Luanti. Na Windows
je to `%APPDATA%\Minetest\games\`, u přenosné zip verze `games\` přímo ve
složce s hrou. Na macOS `~/Library/Application Support/minetest/games/`,
na Linuxu `~/.minetest/games/`.

Rozbalená složka se musí jmenovat **`doggiowars_game`**. Pak spusť Luanti,
v dolním pruhu hlavního menu vyber DoggioWars a dej **New**.

Kdo má ještě starší verzi jako **mod** ve složce `mods/`, ať ji smaže — od
verze 2.0 je to hra a obojí najednou nedává smysl.
