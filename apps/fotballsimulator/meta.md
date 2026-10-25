---
slug: fotballsimulator
name: Fotball Simulator
repo: lioilsources/FotballSimulator
tagline: Volej jedním tahem prstu — kde nárt potká míč, s jakou falší a v kterou milisekundu
order: 30
featured: false
desktop:
mobile: android,ios
artifacts: android
appstore:
playstore:
testflight:
---
Fotball Simulator je simulátor jednoho jediného pohybu: voleje. Míč přiskáče
před hráče, pokaždé jinak, a hráč ho jedním tahem prstu kopne do brány. Žádný
tým, žádný zápas, jen otázka, kde a kdy nárt potká míč. Všechno ostatní, let,
faleš, odskok i to, jestli je to gól, z toho plyne fyzikou.

### Jeden tah, čtyři rozhodnutí

Dole na obrazovce je velký míč a tah prstem po něm říká všechno najednou:

- **Kam prst položíš**, tam nárt míč trefí. Pod středem míč stoupá, nad
  středem ho kopneš do země, z boku dostane rotaci.
- **Oblouk tahu** je faleš. Čím víc tah zahneš, tím víc se míč za letu stáčí.
- **Rychlost tahu** je síla kopu.
- **Chvíle, kdy prst pustíš**, je okamžik kontaktu. Volej má okno: míč po
  odskoku stoupá, zastaví se a padá a ideální chvíle je, když klesá do výšky
  nártu. Hra ji zná předem, protože si při nadhozu let míče přepočítá.

Odchylka se měří v milisekundách. Do ±30 ms je to PERFECT, pak GOOD, LATE
a EARLY. Pozdě je pozdě: nárt trefí klesající míč shora, ten dostane topspin
a skončí v zemi nebo nedoletí. Kdo netrefí vůbec, kopne do vzduchu.

### Freeze-frame a let

Ve chvíli kontaktu se svět na zlomek vteřiny zastaví. Na míči svítí bod, kde
ho nárt trefil, a šipka ukazuje, kam letí. Nahoře se objeví rychlost v km/h,
rotace v otáčkách za vteřinu a hodnocení timingu s přesnou odchylkou. Pak míč
letí a za ním se táhne stopa, takže je vidět, jak se stáčí. Výsledek je GÓL,
MIMO nebo NEDOLETĚL a po chvíli přiskáče další míč.

Kdo potřebuje víc času, zapne **slow-mo**: po dotyku prstu se hra zpomalí, aby
šlo tah dokreslit. Timing se ale měří v herním čase, takže zpomalení nepomůže
podvádět.

### Fyzika

Let míče je vlastní výpočet, ne fyzika z enginu: gravitace, odpor vzduchu,
Magnusův jev (proto se točící míč stáčí) a postupné zpomalování rotace.
Odskok z trávy ubírá výšku a rotace se při něm přenáší do směru. Kontakt
počítá s rychlostí, kterou míč přiletěl, takže slabý kopnutý míč se jen
odrazí, místo aby zůstal viset ve vzduchu. Výsledky drží automatické testy
proti nezávislé referenční implementaci téhož modelu v Pythonu.

Hra vznikla v Godotu 4.7 a do telefonu jde její přepis ve Flutteru se stejnými
konstantami a stejnými testy. Scénu kreslí vlastní perspektivní projekce,
bez 3D enginu.

### Stav

Je hotová první fáze: hratelná smyčka nadhoz, kop, freeze-frame, let
a výsledek. Hřiště a branka jsou zatím jednoduché, chybí noha, která
švihne, síť, která se při gólu prohne, a kamera, která poletí za míčem. Pak
přijde ladění pocitu, heatmapa střel do branky a statistiky.

APK níže je zkušební (alfa). Na iPhone zatím jen přes TestFlight pro testery.
