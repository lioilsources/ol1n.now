---
tagline: Ett lugnt kök under rusningen — kockarna hör beställningarna, serveringen ser om hur många minuter vad kommer
---
Under rusningen förlorar en restaurang tid mellan köket och matsalen. Bongarna hopar sig vid linjen, servitörerna går in i köket för att fråga när bord sju blir klart, och mat som är färdig kallnar på passet för att ingen märkte den. Předávka löser det utan att någon behöver titta på fler skärmar: **kockarna hör beställningarna**, **serveringen ser på en enda skärm om hur många minuter vad kommer och till vilket bord**, och färdig mat på passet säger själv till efter ett par minuter att den ska hämtas.

Allt körs i restaurangen på en enda liten dator: utan moln, utan månadsavgift för servrar och på tjeckiska. Går internet ner fortsätter servicen.

### Köket lyssnar, behöver inte läsa

När en beställning kommer in säger en högtalare vid passet en kort mening, till exempel ”Bord sju: två svíčková, en schnitzel.” Räkneord och rätternas namn böjs grammatiskt korrekt på tjeckiska (”jedna svíčková, dvě svíčkové, pět svíčkových”). Rösten skapas direkt i restaurangen och var i tester redo att spelas upp inom 0,2 s efter händelsen. Utropen pratar aldrig i mun på varandra: de har en ordning efter vikt, en paus emellan, och en gammal beställning som skärmen redan visar läses inte upp i onödan. Knappen ”En gång till” upprepar det senaste utropet.

### En kö som kocken plockar ur

Varje station (grill, varmt, kallt, desserter) har sin egen kö på en surfplatta eller tv. Kocken tar en rätt med ett tryck eller en knapp på bump-baren. På så sätt vet systemet vem som lagar vad och sedan när, och om ingen tar sig an en beställning på två minuter säger det till: ”Bord sju, grill, väntar på kock.”

### Serveringen vet när och vart

Skärmen i matsalen visar borden, vad som ska ut till dem och om hur många minuter. Uppskattningen hoppar inte hela tiden (den ändras högst en gång per halvminut), så att man kan planera efter den. Överst står alltid det som behöver hämtas. På passet ”åldras” maten: efter tre minuter hörs ”Bord sju klart, tre minuter på passet”, och utropet upprepas tills någon tar den.

### Uppskattningarna lär sig av ditt eget kök

I början anger köksmästaren en gång hur lång tid allt tar. Sedan mäter Předávka varje rätt från att den tas tills den är klar, och efter fem mätningar använder den det här kökets verkliga tider. Uppskattningen till gästen tar därmed hänsyn till hur mycket som ligger i kön före och hur många kockar på stationen som lagar mat samtidigt.

### Fungerar med vilket kassasystem som helst

Beställningar kan tas från bongskrivaren: Předávka kopplas in mellan kassan och skrivaren, bongen skrivs ut som förut och den läser av bord och rätter. Den behöver alltså ingen integration med ett visst kassasystem. Beställningar kan också matas in direkt från serveringens surfplatta.

### Bilder på rätterna

En post på menyn kan ha en bild eller en emoji. Skärmarna i webbläsaren visar dem på beställningsknapparna, på korten i köket, på passet och i matsalen. Samma system kan också köras hemma som en lek med barnrestaurang: ett kök, en barnmeny med bilder, en dator som är både server och högtalare, och de andra enheterna öppnar bara en webbläsare på samma wifi.

En utförlig beskrivning av funktionerna och av en hel service finns på sidan [Så fungerar det](predavka-features.html) (på tjeckiska), med tre ögonblick från en kväll: tom kö, några bord och ”vi hinner inte!”.

### Status

Předávka är en färdig, fungerande prototyp: server, röst, avlyssning av skrivaren, kö, uppskattningar, serveringar och skärmar (en app för Android TV och surfplattor plus en webbläsarversion) är byggda och testade i en simulerad service. **Den har ännu inte körts i en riktig restaurang.** Nästa steg är en pilot i ett kök: hur tydlig rösten är i bullret från köksfläkten, ljud i köket med flera högtalare och hur läsbara skärmarna är på riktiga tv-apparater.

Skärmbilderna kommer från riktiga skärmar. Det de visar togs fram genom att simulera en service: påhittad meny och bord, med tiden stoppad vid ett visst ögonblick på kvällen.
