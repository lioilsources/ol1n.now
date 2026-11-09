---
tagline: Urenregistratie per opdracht die de locatie controleert — en je positie niet opslaat
---
Bouwbedrijven en serviceteams geven hun uren nog steeds door op papier, via WhatsApp en in Excel. De uitvoerder kan niet nagaan wie waar was, en de vakman kan zijn overuren niet aantonen. PMTracker meet de tijd op een specifieke opdracht en weet bij elke registratie of iemand echt op locatie was.

### Locatie maar twee keer, en daarna weg

Coördinaten worden **alleen bij het starten en stoppen** van de meting verstuurd. De server controleert of het punt binnen de geofence van de opdracht ligt, slaat één gegeven op, 'wel / niet op locatie', en gooit de coördinaten weg. Geen kaart met bewegingen, geen tracking op de achtergrond. Werk buiten de geofence kan worden toegestaan met een uitzondering die in het auditlog komt.

### Rollen bewaakt de database, niet de app

Een teamlid registreert tijd op de opdrachten waaraan het is toegewezen. Een leidinggevende beheert daarnaast opdrachten en de personeelsplanning en ziet rapporten. Een beheerder beheert gebruikers. De rechten worden afgedwongen door regels direct in de database, dus zelfs een aangepaste client kan ze niet omzeilen.

### Status

Het is een MVP: het datamodel, de rollen, de geofencecontrole en de schermen voor inloggen, meten, opdrachten, planning, rapporten en beheer staan. Een offlinemodus voor bouwplaatsen zonder bereik is voorbereid, maar nog niet ingeschakeld, en de app draait nog bij geen enkel bedrijf. Om in te loggen heb je een account van je werkgever nodig.

### Voor bètatesters

De testversie is voorlopig alleen voor **Android**. Hij draait tegen een testbedrijf, 'Stavby s.r.o.', met verzonnen mensen en twee opdrachten: een kantoorrenovatie aan het Wenceslasplein in Praag en airco aan het Vrijheidsplein in Brno. De gegevens kunnen op elk moment worden gewist. Registreren in de app kan niet; je account krijg je van degene die je heeft uitgenodigd om te testen.

**Installatie**

1. Download op je telefoon de APK met de knop in het gedeelte **Downloads** hierboven (of via [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Open het gedownloade bestand en sta installatie uit onbekende bronnen toe als Android erom vraagt.
3. Google Play Protect kan waarschuwen dat het de app niet kent. Dat komt doordat hij niet uit Google Play komt; kies toch voor installeren.
4. Start **PMTracker** en log in met het account dat je in het bericht hebt gekregen.

**Wat je als teamlid kunt uitproberen**

- Tik op het tabblad **Výkaz** (Urenstaat) op **Zahájit výkaz** (Urenstaat starten), kies een opdracht en geef toegang tot je locatie. Op de locatie van de opdracht verschijnt onder de tijd een groen 'Na místě' (Op locatie).
- Ben je niet op locatie, dan vraagt de app om een reden. Dat is prima: typ bijvoorbeeld 'test' en de registratie wordt opgeslagen met de notitie dat ze buiten de locatie is gemaakt.
- Stop na een tijdje de meting met de knop **Ukončit výkaz** (Urenstaat beëindigen). 'Dnes celkem' (Vandaag totaal) loopt op.
- Open op het tabblad **Zakázky** (Opdrachten) de details: adres, grootte van de geofence, wie er is toegewezen en de takenlijst.

**Wat je als leidinggevende kunt uitproberen**

- Je ziet daarnaast **Roster** (je team) en **Reporty** (Rapporten) met de gewerkte tijd per persoon en opdracht. In het rapport tellen alleen gestopte metingen mee; de periode wijzig je rechtsboven.
- Van account wissel je door uit te loggen (icoon rechtsboven op het tabblad **Výkaz**).

**Wat je nog niet moet verwachten**

- Zonder internet werkt de app niet; de offlinemodus komt later.
- Een vergeten meting stopt niet vanzelf; stop hem met de hand.
- Een iPhone-versie voor testers is er nog niet.

Stuur bugs of ideeën naar degene die je heeft uitgenodigd: wat je deed, wat er gebeurde en met welk account. Een screenshot helpt enorm.
