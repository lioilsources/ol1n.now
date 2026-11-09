---
tagline: Et volleyskud med ét enkelt swipe — hvor vristen rammer bolden, med hvor meget skru og i hvilket millisekund
---
Fotball Simulator simulerer én eneste bevægelse: volleyskuddet. Bolden hopper op foran dig, hver gang på en ny måde, og med ét swipe med fingeren sparker du den mod mål. Intet hold, ingen kamp, kun spørgsmålet om hvor og hvornår vristen rammer bolden. Alt det andet, flugten, skruen, hoppet og om det bliver mål, følger af det gennem fysik.

### Ét swipe, fire beslutninger

Nederst på skærmen ligger en stor bold, og et swipe hen over den siger det hele på én gang:

- **Hvor du sætter fingeren**, der rammer vristen bolden. Under midten stiger bolden, over midten sparker du den ned i jorden, fra siden får den skru.
- **Swipets bue** er skruen. Jo mere du bøjer swipet, jo mere drejer bolden i luften.
- **Swipets fart** er skuddets kraft.
- **Øjeblikket, hvor du slipper**, er kontaktøjeblikket. Et volleyskud har et vindue: efter hoppet stiger bolden, står stille og falder, og det ideelle øjeblik er, når den synker ned i vristhøjde. Spillet kender det på forhånd, fordi det beregner boldens flugt, når den bliver kastet op.

Afvigelsen måles i millisekunder. Op til ±30 ms er det PERFECT, derefter GOOD, LATE og EARLY. For sent er for sent: vristen rammer den faldende bold oppefra, den får topspin og ender i jorden eller når ikke frem. Rammer du slet ikke, sparker du i luften.

### Freeze-frame og flugt

I kontaktøjeblikket står verden stille i en brøkdel af et sekund. På bolden lyser punktet, hvor vristen ramte, og en pil viser, hvor den flyver hen. Øverst vises farten i km/t, skruen i omdrejninger pr. sekund og timingvurderingen med den præcise afvigelse. Så flyver bolden med et spor efter sig, så man kan se, hvordan den drejer. Resultatet er MÅL, FORBI eller FOR KORT, og lidt efter hopper næste bold ind.

Har du brug for mere tid, så slå **slow-mo** til: når fingeren rører skærmen, går spillet langsommere, så du kan gøre swipet færdigt. Timingen måles dog i spiltid, så slowmotion hjælper ikke med at snyde.

### Fysik

Boldens flugt er en egen beregning, ikke fysik fra en motor: tyngdekraft, luftmodstand, Magnus-effekten (derfor drejer en roterende bold) og gradvist aftagende skru. Hoppet på græsset koster højde, og skruen bliver til retning. Kontakten tager højde for den fart, bolden kom med, så en svagt sparket bold bare preller af i stedet for at blive hængende i luften. Resultaterne holdes på plads af automatiske tests mod en uafhængig referenceimplementering af den samme model i Python.

Spillet blev lavet i Godot 4.7, og på telefonen kører en omskrivning i Flutter med de samme konstanter og de samme tests. Scenen tegnes med en egen perspektivprojektion uden 3D-motor.

### Status

Første fase er færdig: et spilbart forløb med opkast, spark, freeze-frame, flugt og resultat. Banen og målet er enkle indtil videre; der mangler stadig et ben, der svinger, et net, der bugner ved mål, og et kamera, der følger bolden. Derefter kommer finjustering af spilfølelsen, et heatmap over skud på mål og statistik.

APK'en nedenfor er en testversion (alfa). På iPhone indtil videre kun via TestFlight for testere.
