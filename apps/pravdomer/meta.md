---
slug: pravdomer
name: Pravdoměr
repo: lioilsources/DeepFakes
icon_src: app/ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png
tagline: Naměří „teplotu“ článku — emoce a manipulativní techniky, každou doloženou citací
featured: false
langs: cs,en
desktop:
mobile: android,ios
artifacts:
appstore:
playstore:
testflight:
---
Pravdoměr rozebere článek, který do něj nasdílíš nebo vložíš. U každého odstavce
ukáže, jak silně pracuje s emocemi (hněv, strach, znechucení…) a jaké
manipulativní techniky používá: nálepkování, strašení, falešné dilema,
zveličování a další. Každé zjištění je doložené doslovnou citací z textu, kterou
jde v článku rozkliknout; citace, kterou se nepodaří v textu najít, se zahodí.

**Teplota není pravdivost.** Emotivní text může být pravdivý a klidný text
nepravdivý, proto appka nikdy neříká „lež“ ani „fake“. Hodnotí text a tvrzení,
ne lidi.

### Stav

Ve vývoji. Hotová je první část: rozbor teploty textu pro odkaz nebo vložený
text, výsledky odstavců přibývají postupně (rozbor trvá desítky sekund).
Jazykový model běží na vlastním hardwaru, ne u cizí AI služby. Funguje pro
články v libovolném jazyce, vyladěná je čeština, slovenština a angličtina.

Na řadě je ověřování faktických tvrzení proti dohledaným zdrojům, srovnání dvou
článků o stejné události a kontrola původu obrázků. Buildy pro testery zatím
nejsou.
