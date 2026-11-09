---
tagline: Timeføring på oppdrag som sjekker stedet — og ikke lagrer posisjonen din
---
Byggefirmaer og serviceteam rapporterer fortsatt timene sine på papir, via WhatsApp og i Excel. Formannen har ingen måte å sjekke hvem som var hvor, og arbeideren har ingen måte å dokumentere overtid. PMTracker måler tiden på et bestemt oppdrag og vet for hver registrering om personen faktisk var på stedet.

### Posisjon bare to ganger, så kastes den

Koordinatene sendes **bare når du starter og stopper** målingen. Serveren sjekker at punktet ligger innenfor oppdragets geogjerde, lagrer én eneste opplysning, «på stedet / ikke på stedet», og kaster koordinatene. Ingen kart over bevegelser, ingen sporing i bakgrunnen. Arbeid utenfor geogjerdet kan tillates med et unntak som skrives i revisjonsloggen.

### Rollene håndheves av databasen, ikke av appen

Et teammedlem fører tid på oppdragene det er tildelt. En leder administrerer i tillegg oppdrag og bemanningsplan og ser rapporter. En administrator styrer brukerne. Tilgangene håndheves av regler direkte i databasen, så ikke engang en endret klient kommer rundt dem.

### Status

Det er en MVP: datamodellen, rollene, geogjerde-sjekken og skjermene for innlogging, måling, oppdrag, bemanningsplan, rapporter og administrasjon er på plass. Frakoblet modus for byggeplasser uten dekning er klar, men ennå ikke slått på, og appen er ennå ikke i bruk i noen bedrift. For å logge inn trenger du en konto fra arbeidsgiveren din.

### For betatestere

Testversjonen finnes foreløpig bare for **Android**. Den kjører mot et testfirma, «Stavby s.r.o.», med oppdiktede folk og to oppdrag: kontorrenovering på Wenceslas-plassen i Praha og klimaanlegg på Frihetsplassen i Brno. Dataene kan slettes når som helst. Det finnes ingen registrering i appen; kontoen får du fra den som inviterte deg til å teste.

**Installasjon**

1. Last ned APK-en på telefonen med knappen i delen **Nedlastinger** over (eller fra [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Åpne den nedlastede filen og tillat installasjon fra ukjente kilder når Android spør.
3. Google Play Protect kan advare om at den ikke kjenner appen. Det er fordi den ikke kommer fra Google Play; velg å installere likevel.
4. Start **PMTracker** og logg inn med kontoen du fikk i meldingen.

**Dette kan du prøve som teammedlem**

- På fanen **Výkaz** (Timeliste) trykker du på **Zahájit výkaz** (Start timeliste), velger et oppdrag og gir tilgang til posisjon. På oppdragsstedet vises en grønn «Na místě» (På stedet) under tiden.
- Når du ikke er på stedet, ber appen om en begrunnelse. Det er helt greit: skriv for eksempel «test», så lagres registreringen med en merknad om at den ble gjort utenfor stedet.
- Etter en stund stopper du målingen med knappen **Ukončit výkaz** (Avslutt timeliste). «Dnes celkem» (I dag totalt) øker.
- Åpne detaljene på fanen **Zakázky** (Oppdrag): adresse, størrelsen på geogjerdet, hvem som er tildelt og oppgavelisten.

**Dette kan du prøve som leder**

- Du ser i tillegg **Roster** (teamet ditt) og **Reporty** (Rapporter) med arbeidstiden til folk fordelt på oppdrag. Bare stoppede målinger teller i rapporten; perioden endrer du øverst til høyre.
- Du bytter konto ved å logge ut (ikonet øverst til høyre på fanen **Výkaz**).

**Dette skal du ikke vente deg ennå**

- Uten internett virker ikke appen; frakoblet modus kommer senere.
- En glemt måling stopper ikke av seg selv; stopp den manuelt.
- Det finnes ennå ingen iPhone-versjon for testere.

Send feil eller ideer til den som inviterte deg: hva du gjorde, hva som skjedde og hvilken konto du brukte. Et skjermbilde hjelper mye.
