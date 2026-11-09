---
tagline: Tidrapportering per uppdrag som kollar platsen — och inte sparar din position
---
Byggföretag och serviceteam rapporterar fortfarande sina timmar på papper, via WhatsApp och i Excel. Arbetsledaren kan inte kontrollera vem som var var, och hantverkaren kan inte styrka sin övertid. PMTracker mäter tiden på ett specifikt uppdrag och vet för varje registrering om personen verkligen var på plats.

### Position bara två gånger, sedan slängs den

Koordinaterna skickas **bara när du startar och stoppar** mätningen. Servern kontrollerar att punkten ligger inom uppdragets geofence, sparar en enda uppgift, ”på plats / inte på plats”, och slänger koordinaterna. Ingen karta över rörelser, ingen spårning i bakgrunden. Arbete utanför geofencen kan tillåtas med ett undantag som skrivs i granskningsloggen.

### Rollerna vaktas av databasen, inte av appen

En teammedlem registrerar tid på de uppdrag hen är tilldelad. En chef hanterar dessutom uppdrag och bemanningsschema och ser rapporter. En administratör hanterar användarna. Behörigheterna upprätthålls av regler direkt i databasen, så inte ens en modifierad klient kan ta sig runt dem.

### Status

Det är en MVP: datamodellen, rollerna, geofence-kontrollen och skärmarna för inloggning, mätning, uppdrag, schema, rapporter och administration är på plats. Offlineläge för byggen utan täckning är förberett men ännu inte påslaget, och appen används ännu inte på något företag. För att logga in behöver du ett konto från din arbetsgivare.

### För betatestare

Testversionen finns tills vidare bara för **Android**. Den körs mot ett testföretag, ”Stavby s.r.o.”, med påhittade personer och två uppdrag: kontorsrenovering på Wenceslastorget i Prag och luftkonditionering på Frihetstorget i Brno. Datan kan raderas när som helst. Det finns ingen registrering i appen; kontot får du av den som bjöd in dig att testa.

**Installation**

1. Ladda ner APK:n på telefonen med knappen i avsnittet **Nedladdningar** ovan (eller från [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Öppna den nedladdade filen och tillåt installation från okända källor när Android frågar.
3. Google Play Protect kan varna för att den inte känner till appen. Det beror på att den inte kommer från Google Play; välj att installera ändå.
4. Starta **PMTracker** och logga in med kontot du fick i meddelandet.

**Testa som teammedlem**

- På fliken **Výkaz** (Tidrapport) trycker du på **Zahájit výkaz** (Starta tidrapport), väljer ett uppdrag och ger åtkomst till platsen. På uppdragets plats visas ett grönt ”Na místě” (På plats) under tiden.
- När du inte är på plats ber appen om ett skäl. Det är helt okej: skriv till exempel ”test”, så sparas registreringen med en anteckning om att den gjordes utanför platsen.
- Stoppa mätningen efter en stund med knappen **Ukončit výkaz** (Avsluta tidrapport). ”Dnes celkem” (Totalt i dag) ökar.
- Öppna detaljerna på fliken **Zakázky** (Uppdrag): adress, geofencens storlek, vem som är tilldelad och checklistan med uppgifter.

**Testa som chef**

- Du ser dessutom **Roster** (ditt team) och **Reporty** (Rapporter) med personernas arbetade tid per uppdrag. Bara stoppade mätningar räknas i rapporten; perioden ändrar du uppe till höger.
- Du byter konto genom att logga ut (ikonen uppe till höger på fliken **Výkaz**).

**Det här ska du inte vänta dig än**

- Utan internet fungerar inte appen; offlineläget kommer senare.
- En bortglömd mätning stoppar inte av sig själv; stoppa den manuellt.
- Det finns ännu ingen iPhone-version för testare.

Skicka buggar eller idéer till den som bjöd in dig: vad du gjorde, vad som hände och vilket konto du använde. En skärmbild hjälper mycket.
