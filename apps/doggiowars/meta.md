---
slug: doggiowars
name: DoggioWars
repo: lioilsources/DoggioWars
tagline: Voxel dogfight na vzdušných ostrovech (mod pro Luanti)
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
DoggioWars je letecký souboj ve voxelovém světě — vzdušné ostrovy, vlastní
mapgen a biomy, létající stroje, závodní tratě, triky a zbraně. Podporuje
gamepad (Xbox 360 i PS4 DualShock) přes nativní joystick v Luanti, takže
žádný externí mapovač není potřeba.

Na rozdíl od ostatních aplikací tady to **není samostatný program**, ale mod
pro **Luanti** (dřív Minetest). Potřebuješ tedy nainstalovaný Luanti verze
**5.12 nebo novější** a k němu **Minetest Game** — mod na něj závisí
(`depends = default`) a Luanti ho od verze 5.8 už nedodává v základu. Obojí
najdeš v samotném klientu v záložce Content.

Nejjednodušší instalace je přímo z klienta přes **Content → Browse online
content**. Ruční cesta: rozbal stažený archiv do složky `mods/` ve svém
datovém adresáři Luanti. Na Windows je to `%APPDATA%\Minetest\mods\` —
u přenosné zip verze `mods\` přímo ve složce s hrou. Na macOS
`~/Library/Application Support/minetest/mods/`, na Linuxu `~/.minetest/mods/`.

Archiv se rozbaluje do složky `doggiowars/`, na jejím názvu ale nezáleží: mod
si své jméno určuje sám v `mod.conf`. Pak založ svět nad **Minetest Game** a
v **Select Mods** zaškrtni DoggioWars.
