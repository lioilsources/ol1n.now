---
tagline: En volley med ett eneste sveip — hvor vristen treffer ballen, med hvor mye skru og i hvilket millisekund
---
Fotball Simulator simulerer én eneste bevegelse: volleyen. Ballen spretter opp foran deg, hver gang på en ny måte, og med ett sveip med fingeren sparker du den mot mål. Ikke noe lag, ingen kamp, bare spørsmålet om hvor og når vristen treffer ballen. Alt det andre, flukten, skruen, spretten og om det blir mål, følger av det gjennom fysikk.

### Ett sveip, fire valg

Nederst på skjermen ligger en stor ball, og et sveip over den sier alt på én gang:

- **Der du setter fingeren**, treffer vristen ballen. Under midten stiger ballen, over midten sparker du den ned i bakken, fra siden får den skru.
- **Buen i sveipet** er skruen. Jo mer du bøyer sveipet, desto mer svinger ballen i lufta.
- **Farten i sveipet** er kraften i skuddet.
- **Øyeblikket du slipper**, er kontaktøyeblikket. En volley har et vindu: etter spretten stiger ballen, stopper og faller, og det ideelle øyeblikket er når den synker ned til vristhøyde. Spillet vet det på forhånd, fordi det regner ut ballens bane når den kastes opp.

Avviket måles i millisekunder. Innenfor ±30 ms er det PERFECT, deretter GOOD, LATE og EARLY. For sent er for sent: vristen treffer den fallende ballen ovenfra, den får overskru og havner i bakken eller når ikke fram. Bommer du helt, sparker du i lufta.

### Freeze-frame og flukt

I kontaktøyeblikket står verden stille i en brøkdel av et sekund. På ballen lyser punktet der vristen traff, og en pil viser hvor den flyr. Øverst vises farten i km/t, skruen i omdreininger per sekund og timingvurderingen med nøyaktig avvik. Så flyr ballen med et spor etter seg, så du ser hvordan den svinger. Resultatet er MÅL, UTENFOR eller FOR KORT, og litt etter kommer neste ball sprettende.

Trenger du mer tid, slår du på **slow-mo**: når fingeren berører skjermen, går spillet saktere, så du rekker å fullføre sveipet. Timingen måles likevel i spilltid, så sakte film hjelper ikke med å jukse.

### Fysikk

Ballens bane er en egen beregning, ikke fysikk fra en motor: tyngdekraft, luftmotstand, Magnus-effekten (derfor svinger en roterende ball) og gradvis avtakende skru. Spretten på gresset koster høyde, og skruen blir til retning. Kontakten tar hensyn til farten ballen kom med, så en svakt sparket ball bare spretter av i stedet for å bli hengende i lufta. Resultatene sikres av automatiske tester mot en uavhengig referanseimplementasjon av den samme modellen i Python.

Spillet ble laget i Godot 4.7, og på telefonen kjører en omskrevet versjon i Flutter med de samme konstantene og de samme testene. Scenen tegnes med en egen perspektivprojeksjon, uten 3D-motor.

### Status

Første fase er ferdig: en spillbar løkke med oppkast, spark, freeze-frame, flukt og resultat. Banen og målet er enkle foreløpig; det mangler fortsatt et bein som svinger, et nett som buler ut ved mål, og et kamera som følger ballen. Deretter kommer finjustering av spillfølelsen, et varmekart over skudd på mål og statistikk.

APK-en nedenfor er en testversjon (alfa). På iPhone foreløpig bare via TestFlight for testere.
