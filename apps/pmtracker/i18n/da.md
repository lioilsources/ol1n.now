---
tagline: Tidsregistrering på opgaver, der tjekker stedet — og ikke gemmer din placering
---
Byggefirmaer og serviceteams indberetter stadig deres timer på papir, over WhatsApp og i Excel. Formanden kan ikke tjekke, hvem der var hvor, og håndværkeren kan ikke dokumentere sit overarbejde. PMTracker måler tiden på en bestemt opgave og ved for hver registrering, om personen virkelig var på stedet.

### Placering kun to gange, og så smides den væk

Koordinaterne sendes **kun ved start og stop** af målingen. Serveren tjekker, at punktet ligger inden for opgavens geofence, gemmer én enkelt oplysning, "på stedet / ikke på stedet", og smider koordinaterne væk. Intet kort over bevægelser, ingen sporing i baggrunden. Arbejde uden for geofencen kan tillades med en undtagelse, der skrives i auditloggen.

### Rollerne håndhæves af databasen, ikke af appen

Et teammedlem registrerer tid på de opgaver, det er tilknyttet. En leder administrerer desuden opgaver og vagtplan og ser rapporter. En administrator styrer brugerne. Rettighederne håndhæves af regler direkte i databasen, så selv en ændret klient kan ikke omgå dem.

### Status

Det er en MVP: datamodellen, rollerne, geofence-tjekket og skærmene til login, måling, opgaver, vagtplan, rapporter og administration er på plads. Offlinetilstand til byggepladser uden dækning er klar, men endnu ikke slået til, og appen kører endnu ikke i nogen virksomhed. For at logge ind skal du have en konto fra din arbejdsgiver.

### Til betatestere

Testversionen findes indtil videre kun til **Android**. Den kører mod et testfirma, "Stavby s.r.o.", med opdigtede personer og to opgaver: renovering af kontorer på Wenceslas-pladsen i Prag og aircondition på Frihedspladsen i Brno. Dataene kan blive slettet når som helst. Der er ingen tilmelding i appen; kontoen får du af den, der har inviteret dig til at teste.

**Installation**

1. Download APK'en på telefonen med knappen i afsnittet **Downloads** ovenfor (eller fra [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Åbn den downloadede fil, og tillad installation fra ukendte kilder, når Android spørger.
3. Google Play Protect advarer måske om, at den ikke kender appen. Det er, fordi den ikke kommer fra Google Play; vælg at installere alligevel.
4. Start **PMTracker**, og log ind med den konto, du fik i beskeden.

**Det kan du prøve som teammedlem**

- På fanen **Výkaz** (Timeseddel) trykker du på **Zahájit výkaz** (Start timeseddel), vælger en opgave og giver adgang til placering. På opgavens sted vises et grønt "Na místě" (På stedet) under tiden.
- Når du ikke er på stedet, beder appen om en begrundelse. Det er helt fint: skriv for eksempel "test", så gemmes registreringen med en note om, at den er lavet uden for stedet.
- Stop målingen efter et stykke tid med knappen **Ukončit výkaz** (Afslut timeseddel). "Dnes celkem" (I dag i alt) stiger.
- Åbn detaljerne på fanen **Zakázky** (Opgaver): adresse, geofencens størrelse, hvem der er tilknyttet, og opgavetjeklisten.

**Det kan du prøve som leder**

- Du ser desuden **Roster** (dit team) og **Reporty** (Rapporter) med folks arbejdstid fordelt på opgaver. Kun stoppede målinger tæller med i rapporten; perioden ændrer du øverst til højre.
- Du skifter konto ved at logge ud (ikonet øverst til højre på fanen **Výkaz**).

**Det skal du ikke forvente endnu**

- Uden internet virker appen ikke; offlinetilstanden kommer senere.
- En glemt måling stopper ikke af sig selv; stop den manuelt.
- Der er endnu ingen iPhone-version til testere.

Send fejl eller idéer til den, der inviterede dig: hvad du lavede, hvad der skete, og hvilken konto du brugte. Et skærmbillede hjælper meget.
