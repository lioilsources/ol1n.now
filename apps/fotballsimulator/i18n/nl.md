---
tagline: Een volley met één veeg — waar je wreef de bal raakt, met hoeveel effect en in welke milliseconde
---
Fotball Simulator simuleert één enkele beweging: de volley. De bal stuitert voor je op, elke keer anders, en met één veeg van je vinger trap je hem op doel. Geen team, geen wedstrijd, alleen de vraag waar en wanneer je wreef de bal raakt. Al het andere, de vlucht, het effect, de stuit en of het een doelpunt wordt, volgt daaruit via natuurkunde.

### Eén veeg, vier beslissingen

Onderaan het scherm ligt een grote bal, en een veeg eroverheen zegt alles tegelijk:

- **Waar je je vinger neerzet**, daar raakt de wreef de bal. Onder het midden gaat de bal omhoog, boven het midden trap je hem de grond in, vanaf de zijkant krijgt hij spin.
- **De boog van de veeg** is het effect. Hoe meer je de veeg buigt, hoe meer de bal in de lucht afbuigt.
- **De snelheid van de veeg** is de kracht van het schot.
- **Het moment waarop je loslaat** is het moment van contact. Een volley heeft een venster: na de stuit gaat de bal omhoog, staat even stil en valt, en het ideale moment is als hij zakt tot wreefhoogte. Het spel weet dat van tevoren, omdat het bij het opgooien de vlucht van de bal al berekent.

De afwijking wordt in milliseconden gemeten. Tot ±30 ms is het PERFECT, daarna GOOD, LATE en EARLY. Te laat is te laat: de wreef raakt de vallende bal van bovenaf, die krijgt topspin en belandt in de grond of komt niet ver genoeg. Wie helemaal mist, trapt in de lucht.

### Freeze-frame en vlucht

Op het moment van contact staat de wereld een fractie van een seconde stil. Op de bal licht het punt op waar de wreef hem raakte, en een pijl laat zien waar hij heen gaat. Bovenaan verschijnen de snelheid in km/h, de spin in omwentelingen per seconde en de timingscore met de exacte afwijking. Dan vliegt de bal met een spoor erachter, zodat je ziet hoe hij afbuigt. De uitkomst is GOAL, NAAST of TE KORT, en even later stuitert de volgende bal aan.

Heb je meer tijd nodig, zet dan **slow-mo** aan: zodra je vinger het scherm raakt, vertraagt het spel zodat je de veeg kunt afmaken. De timing wordt wel in speltijd gemeten, dus vertragen helpt niet om vals te spelen.

### Natuurkunde

De vlucht van de bal is een eigen berekening, geen engine-natuurkunde: zwaartekracht, luchtweerstand, het Magnuseffect (daarom buigt een draaiende bal af) en geleidelijk afnemende spin. De stuit op het gras kost hoogte en de spin gaat daarbij over in richting. Het contact houdt rekening met de snelheid waarmee de bal aankwam, zodat een zwak getrapte bal gewoon afketst in plaats van in de lucht te blijven hangen. De resultaten worden bewaakt door automatische tests tegen een onafhankelijke referentie-implementatie van hetzelfde model in Python.

Het spel is gemaakt in Godot 4.7, en op je telefoon draait de herschreven versie in Flutter, met dezelfde constanten en dezelfde tests. De scène wordt getekend met een eigen perspectiefprojectie, zonder 3D-engine.

### Status

De eerste fase is klaar: een speelbare lus van opgooien, trap, freeze-frame, vlucht en uitkomst. Het veld en het doel zijn voorlopig eenvoudig; er ontbreken nog een been dat uithaalt, een net dat bij een doelpunt bolt en een camera die de bal volgt. Daarna komen het afstellen van het speelgevoel, een heatmap van schoten op doel en statistieken.

De APK hieronder is een testversie (alfa). Op de iPhone voorlopig alleen via TestFlight voor testers.
