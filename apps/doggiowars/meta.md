---
slug: doggiowars
name: DoggioWars
repo: lioilsources/DoggioFight
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
datovém adresáři Luanti — na macOS je to
`~/Library/Application Support/minetest/mods/`. Rozbalená složka se musí
jmenovat přesně tak, jak zní `name` v souboru `mod.conf`; pod jiným jménem
ho Luanti nenačte.
