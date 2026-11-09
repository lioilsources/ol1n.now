---
tagline: Een fabriek voor Roblox-accessoires — van prompt naar 3D-model zonder handmatig modelleren
---
UGC Factory maakt avataraccessoires voor de Roblox Marketplace. Je schrijft wat je wilt —
*‘een rijkversierde samoeraihelm met neonaccenten’* — en aan de andere kant rolt er een
getextureerd 3D-model uit, klaar om te uploaden. Geen handmatig modelleren.

## Hoe het draait

Het werk is verdeeld over drie machines. Een **DGX Spark** met GPU tekent het concept (Illustrious voor voorwerpen,
Juggernaut XL voor wat je op je lichaam draagt — gekozen per categorie), haalt de achtergrond weg en maakt van de afbeelding
een 3D-model. Een **NAS** beheert de wachtrij, de catalogus en een headless Blender die het model binnen de
Roblox-limieten brengt — onder 4.000 driehoeken, UV’s, een gebakken textuur, het juiste
bevestigingspunt. De **telefoon** is om te sorteren.

De snelle baan (SF3D) bouwt een model in anderhalve seconde, dus je kunt op grote schaal
uitproberen. Het tragere, fijnere TRELLIS draait pas bij het inpakken van een stuk dat langs
jouw oog is gekomen — de dure rekenkracht gaat alleen naar wat je echt wilt verkopen.
Sierstukken als tiara’s en helmen gaan meteen door TRELLIS.

## De app

De mobiele client is de kern van het geheel. **Composer** stuurt een batch weg — categorie × stijl ×
varianten, gerust vijftig stuks tegelijk. **Wachtrij** laat live zien wat er nu gemaakt wordt en
in welke fase. **Triage** is het belangrijkste: één stuk op het scherm, een schakelaar tussen het
concept en een draaibaar 3D-model, drie knoppen — goedkeuren, afwijzen, opnieuw proberen
met een andere seed. Je gaat er sneller doorheen dan je kunt lezen. **Review** toont het
geconverteerde stuk: aantal driehoeken tegenover de limiet, UV’s, of de mesh gesloten is,
de textuur en het oordeel PASS, WARN of FAIL. Van daaruit kun je een stuk opnieuw converteren of
inpakken om te uploaden. Opnieuw inpakken overschrijft de naam, beschrijvingen, prijs en tags
die je in de app hebt ingevuld niet.

Draait op Android, iOS, macOS en in de browser. De server levert hem op zijn eigen
origin, dus de webversie is altijd actueel.

## Rondom versierd

Het model ontstaat uit één afbeelding, dus de achterkant heeft niemand gezien — die wordt
plat en onversierd. Bij stukken die echt radiaal symmetrisch zijn (een taart,
een kroon) wordt daarom het voorste segment rondom gekopieerd en de naad gelast. Je zet het aan
in Composer of bij een afgewerkt stuk bij een nieuwe conversie, zonder extra genereren.
Voor een plat stuk is het niets — dat valt uiteen in een lappendeken van segmenten.

## Categorieën

Het best lukken dingen die ook in de trainingsdata **op zichzelf** bestaan:
rugzakjes, handtassen, tiara’s, hoeden, taarten, maskers, schilden, ringen.
Hoedencreaties met veren en bloemen, gewatteerde tassen met monogram, kronen
met parels en agaten, maskers geïnspireerd op vijf culturen, pluizige vossen- en
wasbeerstaarten, kawaii-huisdiertjes voor op je schouder.

De afbeeldingen zien er bijna altijd goed uit — voor de modellen geldt dat lang niet, en het model
beslist. Compacte vormen met volume (rugzak, taart, ring) houden goed stand. Dunne opengewerkte
structuren scheuren op de snelle baan, dus tiara’s gaan meteen de tragere weg.
En getekende input heeft weinig schaduw, waardoor er reliëf ontstaat in plaats van volume — pastelkleurige
diertjes hebben dus een prompt nodig die zachte schaduwen afdwingt.

Kleding en haar zijn een harde noot: het model kent ze alleen aan een figuur, dus bij de prompt
*‘drakenjurk’* tekent het een draak. Wat helpt is overschakelen op een fotorealistisch model en
het formuleren als productfoto — *‘jurk op een onzichtbare paspop’*.

Jurken, schoenen en handschoenen behandelt Roblox bovendien als layered clothing met een cage mesh,
wat de fabriek nog niet kan. Voor vingers en handen heeft Roblox helemaal geen bevestigingspunt.
