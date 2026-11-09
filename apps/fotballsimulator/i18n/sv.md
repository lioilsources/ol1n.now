---
tagline: En volley med ett enda svep — var vristen möter bollen, med hur mycket skruv och i vilken millisekund
---
Fotball Simulator simulerar en enda rörelse: volleyn. Bollen studsar fram framför dig, varje gång på ett nytt sätt, och med ett svep med fingret sparkar du den mot mål. Inget lag, ingen match, bara frågan om var och när vristen möter bollen. Allt annat, flykten, skruven, studsen och om det blir mål, följer av det genom fysik.

### Ett svep, fyra beslut

Längst ner på skärmen finns en stor boll, och ett svep över den säger allt på en gång:

- **Där du sätter fingret** träffar vristen bollen. Under mitten stiger bollen, över mitten sparkar du ner den i marken, från sidan får den skruv.
- **Svepets båge** är skruven. Ju mer du böjer svepet, desto mer svänger bollen i luften.
- **Svepets fart** är skottets kraft.
- **Ögonblicket du släpper** är kontaktögonblicket. En volley har ett fönster: efter studsen stiger bollen, stannar och faller, och det perfekta ögonblicket är när den sjunker ner till vristhöjd. Spelet vet det i förväg, eftersom det räknar ut bollens bana när den kastas upp.

Avvikelsen mäts i millisekunder. Inom ±30 ms är det PERFECT, sedan GOOD, LATE och EARLY. För sent är för sent: vristen träffar den fallande bollen ovanifrån, den får överskruv och hamnar i marken eller når inte fram. Missar du helt sparkar du i luften.

### Freeze-frame och flykt

I kontaktögonblicket stannar världen en bråkdels sekund. På bollen lyser punkten där vristen träffade, och en pil visar vart den flyger. Högst upp syns farten i km/h, skruven i varv per sekund och timingbetyget med exakt avvikelse. Sedan flyger bollen med ett spår efter sig, så att man ser hur den svänger. Resultatet är MÅL, UTANFÖR eller FÖR KORT, och strax därefter studsar nästa boll fram.

Behöver du mer tid slår du på **slow-mo**: när fingret rör skärmen saktar spelet ner så att du hinner göra klart svepet. Timingen mäts dock i speltid, så det går inte att fuska med slowmotion.

### Fysik

Bollens bana är en egen beräkning, inte fysik från en motor: gravitation, luftmotstånd, Magnuseffekten (därför svänger en roterande boll) och gradvis avtagande skruv. Studsen på gräset tar höjd och skruven övergår i riktning. Kontakten räknar med farten bollen kom med, så en löst sparkad boll studsar bara iväg i stället för att bli hängande i luften. Resultaten säkras av automatiska tester mot en oberoende referensimplementering av samma modell i Python.

Spelet gjordes i Godot 4.7, och i telefonen körs en omskrivning i Flutter med samma konstanter och samma tester. Scenen ritas med en egen perspektivprojektion, utan 3D-motor.

### Status

Första fasen är klar: en spelbar loop med uppkast, spark, freeze-frame, flykt och resultat. Planen och målet är enkla än så länge; det saknas fortfarande ett ben som svingar, ett nät som buktar vid mål och en kamera som följer bollen. Sedan kommer finslipning av spelkänslan, en heatmap över skott på mål och statistik.

APK:n nedan är en testversion (alfa). På iPhone än så länge bara via TestFlight för testare.
