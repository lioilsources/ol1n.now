---
tagline: Een woning huren, van zoeken op de kaart tot betaalde huur — voor verhuurders, huurders en de beheerder
---
TerraReality is een platform voor langdurige verhuur van appartementen en kamers. Het begint in Praag en omgeving, maar de gegevens zijn vanaf het begin voorbereid op andere landen in Centraal-Europa (rechtsgebied van het huurcontract, valuta, taal). Anders dan een advertentieportaal houdt het niet op bij het contact: het begeleidt verhuurder en huurder door de hele huurperiode — zoeken, berichten, aanvraag, bezichtiging, contract en ondertekening, tot aan de betalingen en de bewaking daarvan.

Het platform heeft vier gezichten. **Wie zoekt**, zoekt op de kaart of typt gewoon wat hij wil. **De verhuurder of beheerder** heeft een beheeromgeving in webshopstijl: advertenties, kandidaten, contracten, bank, portefeuille en facturatie. **De huurder** heeft een eigen huurdersportaal met contract, betalingen en QR-codes. **De beheerder van het platform** heeft een backoffice voor goedkeuring, moderatie en instellingen. Daarnaast is er een mobiele app voor iOS en Android.

De screenshots komen uit de ontwikkelomgeving met testgegevens: de namen zijn verzonnen, de foto's van de woningen zijn illustratief en de AI-voorstellen zijn offline gemaakt, zonder taalmodel.

### Zoeken op de kaart en via chat

De kaart gaat van provincie via gemeente en stadsdeel tot op straatniveau en laat op elk zoomniveau zien hoeveel aanbod er waar is. Ernaast staan filters (type, prijs, oppervlakte, indeling, inrichting, huisdieren, vervoer) met aantallen bij elke optie. Wie niet wil klikken, typt bijvoorbeeld "2+kk tot 25 000 in Praag 6 met hond en balkon" — het platform stelt uit de zin de filters en het kaartbeeld in en laat zien hoe het de zin heeft begrepen. Een zoekopdracht kun je opslaan, en bij nieuw aanbod krijg je een melding.

### Advertentie met hulp van AI — altijd met instemming van een mens

De verhuurder voert het adres in uit het officiële adresregister (RÚIAN), plus kenmerken, foto's en tekst. AI kan uit de beschrijving en de foto's kenmerken voorstellen (lift, balkon, bouwtype…) en de advertentietekst in het Tsjechisch en Engels schrijven. Een voorstel wordt echter nooit vanzelf opgeslagen: de verhuurder ziet wat de AI voorstelt, vinkt aan wat klopt en pas dan wordt het gebruikt. Voor publicatie keurt een mens in de backoffice de advertentie goed. Bij elke advertentie kan de verhuurder vragen voor kandidaten toevoegen (bijvoorbeeld "Heb je een huisdier?").

### Berichten

De kandidaat schrijft de verhuurder direct vanuit de advertentie; berichten komen realtime binnen, met leesbevestiging en bijlagen. Telefoonnummers en e-mailadressen in de tekst verbergt het platform tot het contract is getekend, zodat afspraken en betalingen niet buiten het platform belanden — en de kandidaat ziet de waarschuwing "betaal niets vóór de bezichtiging". Wie niet online is, krijgt een pushmelding of e-mail. Een verdacht gesprek meld je met één klik.

### Aanvragen, samenwonen en de keuze van de huurder

De kandidaat dient de aanvraag alleen in of namens een groep huisgenoten: hij maakt een groep aan, nodigt de anderen per e-mail uit, ze overleggen in de groepschat en de aanvraag gaat pas naar de verhuurder als iedereen akkoord is. De verhuurder ziet een overzicht van de kandidaten met hun antwoorden op zijn vragen, de verificatiestatus en een korte samenvatting van de AI (ook weer alleen een voorstel). Beschermde gegevens zoals leeftijd, geslacht of nationaliteit verzamelt het platform niet. Als de verhuurder iemand kiest, krijgen de anderen een beleefd automatisch antwoord.

### Bezichtigingen

De verhuurder zet bezichtigingsmomenten online met een maximum aantal plaatsen en een opmerking ("verzamelen voor de ingang"); kandidaten reserveren, verzetten of annuleren ze direct in de aanvraag en krijgen een herinnering.

### Digitaal contract en ondertekening

Het contract ontstaat uit een sjabloon (appartement voor bepaalde of onbepaalde tijd, gezamenlijke huur van huisgenoten, kamer) en wordt ingevuld met de gegevens uit het aanbod. Uit het formulier wordt een pdf gegenereerd, beide partijen tekenen online en elke gebeurtenis — voorstel, ondertekening, betaling, opzegging — wordt vastgelegd in een auditketen waarin elk record via een hash aan het vorige is gekoppeld. Een latere wijziging van de geschiedenis valt zo niet te verbergen; de contractpagina laat zien dat de keten intact is. Ook opzegging en de afrekening van de borg zitten erin.

De sjablonen hebben het watermerk CONCEPT tot een jurist ze heeft gecontroleerd, en de handtekening is voorlopig een eenvoudige elektronische handtekening met bewijsvoering (tijd, IP-adres, vingerafdruk van het document). Ondertekenen via Bank iD is voorbereid als volgende stap en wacht op het contract met Bank iD.

### Betalingen — het geld gaat rechtstreeks naar de verhuurder

Uit het contract ontstaat een betalingskalender: borg, huur en voorschotten servicekosten, bij huisgenoten verdeeld naar aandeel. De huurder betaalt met een QR-code in de bankapp of met een kaart via een Revolut Business-link die naar de eigen merchantrekening van de verhuurder leidt. De verhuurder kan zijn bankrekening koppelen (alleen lezen) en binnenkomende betalingen worden automatisch gematcht op variabel symbool, specifiek symbool en bedrag; wat niet klopt, blijft staan als voorstel om handmatig te koppelen. Na de vervaldatum gaan er herinneringen uit en na zeven dagen een escalatie.

**TerraReality houdt of verstuurt nooit geld van huurders.** Geen escrow, geen crypto — betalingen gaan rechtstreeks van de rekening van de huurder naar die van de verhuurder.

### Bestaande huurovereenkomsten overnemen

Een verhuurder die zijn woningen al op een papieren contract verhuurt, hoeft niets opnieuw te tekenen. Hij neemt de huur over als buiten het platform getekend, uploadt een scan van het contract en de betalingen worden gevolgd vanaf de overnamedatum: oudere achterstanden gaan naar het beginsaldo, de ontvangen borg wordt geregistreerd en ook het bestaande variabele symbool blijft. Huurders krijgen niets tot de verhuurder ze uitnodigt in het huurdersportaal. Meerdere huurovereenkomsten tegelijk kun je importeren uit een spreadsheet.

### Portefeuille over meerdere steden en huurrisico

Voor verhuurders en beheerders met meerdere woningen: overzicht van alle huurovereenkomsten per gemeente, de maandelijkse huur die verwacht wordt en wat er echt binnenkwam, de trend over twaalf maanden, een lijst van wat aandacht vraagt (achterstand, escalatie, opzegging, leegstand), inkomensconcentratie en een rent roll met export naar CSV en Excel. Elke huurovereenkomst heeft een risicoscore die uit regels wordt berekend (achterstand, oude onbetaalde posten, dekking door de borg, naderend einde van het contract…). De score is alleen informatie en beslist nooit over iemand; de huurder ziet waaruit hij is opgebouwd. Regels (herinneringen, escalatie, borg, opzegtermijn) zijn per gemeente in te stellen, en een investeerder kan alleen-lezen toegang krijgen waarin hij huurders alleen als initialen ziet.

### Promotie en facturatie

De verhuurder kan zijn advertentie naar boven halen of laten opvallen. Hij betaalt met een kaart via Stripe, de factuur met btw wordt automatisch opgemaakt, per e-mail verstuurd en is te downloaden in de beheeromgeving. Gepromote advertenties zijn in de resultaten gemarkeerd als "Uitgelicht".

### Backoffice, moderatie en DSA

De beheerder van het platform heeft een overzicht van statistieken, een wachtrij van advertenties ter goedkeuring, moderatie van gemelde gesprekken en advertenties, een wachtrij van AI-voorstellen voor nieuwe kenmerken, de prijslijst voor promotie, contractsjablonen, functieschakelaars en een auditlog. Iedereen kan een advertentie melden, ook zonder account (volgens de Europese digitaledienstenverordening, DSA); over elk geval beslist een mens en de motivering gaat per e-mail naar zowel de melder als de adverteerder. Inloggen "als gebruiker" voor support vereist een opgegeven reden en wordt in de audit vastgelegd.

### Mobiele app

De Flutter-app voor iOS en Android dekt wat een huurder op de telefoon nodig heeft: zoeken met lijst en kaart, advertentiedetail met bericht, aanvraag en reservering van een bezichtiging, mijn bezichtigingen, de huur met QR-betaling en Revolut-link, en doorklikken vanuit pushmeldingen. Het is een eerste versie; builds voor testers (TestFlight en de interne track van Google Play) komen met de voorbereiding van het testen.

### Beheer

De productieomgeving is voorbereid voor Hetzner in de EU: gescheiden applicatie- en databaseserver in een privénetwerk, automatische HTTPS, databaseback-ups met herstel naar elk willekeurig moment (hoogstens een uur dataverlies) en een geverifieerde hersteltest, monitoring met waarschuwingen (beschikbaarheid 99,9 %, zoekrespons onder 300 ms, status van de back-ups) en foutrapportage. AI draait op een eigen GPU-server; als AI niet beschikbaar is, werkt alles ook zonder.

### Status en testen

**De MVP van het hele platform is klaar.** Alle modules hierboven zijn gebouwd en gedekt door automatische tests — unit-, integratie- en end-to-endtests die in de browser complete scenario's doorklikken (advertentie, berichten, groepsaanvraag, contract met ondertekening en gematchte betaling, portefeuille, promotie met factuur, DSA-melding, backoffice). Ook het herstel van de database uit een back-up is geverifieerd.

Ook de beveiligings- en beheerverbeteringen uit de code review en pushmeldingen voor aanvragen, contracten en betalingen zijn klaar. Een gesloten bèta draait op een eigen server met voorbeeldadvertenties voor Praag en omgeving, die daarin als zodanig zijn gemarkeerd. De productie-uitrol bij Hetzner wacht op accounts en toegang (zie hieronder).

Testen met echte mensen gebeurt in vijf fasen. Elke fase eindigt met een poort waar we samen beslissen of we verdergaan:

1. **T0 — voorbereiding (2 weken).** Testomgeving bij Hetzner met de balk "Testomgeving", partners in sandbox (Stripe, Revolut, Bank iD), productanalyse zonder persoonsgegevens, een knop "Probleem / idee melden" op het web en in de app, registratie alleen op uitnodiging, testgegevens en app-builds voor testers.
2. **T1 — interne test (1 week).** 5–8 mensen uit het team en de directe omgeving doorlopen alle scenario's als verhuurder en als zoeker, op meerdere apparaten, inclusief een incidentoefening en herstel uit een back-up.
3. **T2 — begeleide usabilitytests (2 weken).** 12 deelnemers: particuliere verhuurders, een beheerder met woningen in meerdere steden, Tsjechische en buitenlandse zoekers en een stel huisgenoten. Gemeten worden taaksucces en tevredenheid (SUS ≥ 70).
4. **T3 — gesloten pilot in Praag (6 weken).** 20 pilotverhuurders met persoonlijke onboarding en 50–100 zoekers, alleen op uitnodiging. We volgen of advertenties aanvragen krijgen, hoe snel verhuurders reageren, hoeveel contracten digitaal worden afgerond en hoe betrouwbaar alles draait; één release per week.
5. **T4 — open bèta in Praag (4 weken).** Registratie open voor iedereen met een bètalabel, zonder betaalde campagne — en aan het eind het besluit over de publieke lancering.

Alles bij elkaar zo'n 15 weken vanaf het begin van de voorbereiding.

**Wat we van jullie nodig hebben:**

- accounts en toegang voor het beheer: Hetzner, domein en DNS, ontwikkelaarsaccounts bij Apple en Google, Stripe, Revolut Business, Bank iD en de aanbieder van de bankkoppeling;
- werving van testers, 20 pilotverhuurders en zoekers, beloningen voor deelnemers;
- juridische controle van de gebruiksvoorwaarden, de privacyverklaring en de contractsjablonen, toestemmingen van testers en het besluit of in de pilot echte contracten direct op het platform worden getekend;
- een penetratietest vóór de pilot, het leiden van de interviews in T2 en eerstelijnssupport tijdens de pilot;
- het besluit bij elke poort tussen de fasen.
