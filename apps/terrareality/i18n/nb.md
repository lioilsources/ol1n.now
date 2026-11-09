---
tagline: Leie bolig fra søket på kartet til betalt husleie — for utleiere, leietakere og operatøren
---
TerraReality er en plattform for langtidsutleie av leiligheter og rom. Den starter i Praha og omegn, men dataene er fra starten av forberedt for andre land i Sentral-Europa (leiekontraktens jurisdiksjon, valuta, språk). I motsetning til en annonseportal stopper den ikke ved kontakten: den følger utleier og leietaker gjennom hele leieforholdet — søk, meldinger, søknad, visning, kontrakt og signering, helt fram til betalingene og oppfølgingen av dem.

Plattformen har fire ansikter. **Boligsøkeren** søker på kartet eller skriver bare hva hun vil ha. **Utleieren eller forvalteren** har en administrasjon i nettbutikkstil: annonser, søkere, kontrakter, bank, portefølje og fakturering. **Leietakeren** har sin leietakerportal med kontrakt, betalinger og QR-koder. **Operatøren** har en backoffice for godkjenning, moderering og innstillinger. I tillegg en mobilapp for iOS og Android.

Skjermbildene er fra utviklingsmiljøet med testdata: navnene er oppdiktet, bildene av leilighetene er illustrasjoner, og AI-forslagene ble laget i frakoblet modus uten språkmodell.

### Søk på kartet og via chat

Kartet går fra region via kommune og bydel helt ned til gaten og viser på hvert zoomnivå hvor mange tilbud det finnes hvor. Ved siden av er det filtre (type, pris, areal, planløsning, utstyr, kjæledyr, transport) med antall ved hvert valg. Vil du ikke klikke, skriver du for eksempel «2+kk opptil 25 000 i Praha 6 med hund og balkong» — plattformen setter filtrene og kartutsnittet ut fra setningen og viser hvordan den forsto den. Søket kan lagres, og nye tilbud gir et varsel.

### Annonse med hjelp av AI — alltid med et menneskes godkjenning

Utleieren legger inn adressen fra det offisielle adresseregisteret (RÚIAN), egenskaper, bilder og tekst. AI kan ut fra beskrivelsen og bildene foreslå egenskaper (heis, balkong, byggtype …) og skrive annonseteksten på tsjekkisk og engelsk. Et forslag lagres likevel aldri av seg selv: utleieren ser hva AI-en foreslår, krysser av det som stemmer, og først da blir det brukt. Før publisering godkjennes annonsen av et menneske i backoffice. Til hver annonse kan utleieren legge til spørsmål til søkerne (for eksempel «Har du kjæledyr?»).

### Meldinger

Søkeren skriver til utleieren rett fra annonsen; meldinger kommer i sanntid, med lesebekreftelse og vedlegg. Telefonnumre og e-postadresser i teksten skjuler plattformen til kontrakten er signert, slik at verken avtaler eller betalinger flyttes ut av den — og søkeren ser advarselen «ikke betal noe før visningen». Den som ikke er pålogget, får et push-varsel eller en e-post. En mistenkelig samtale kan rapporteres med ett klikk.

### Søknader, bofellesskap og valg av leietaker

Søkeren søker alene eller for en gruppe som skal bo sammen: oppretter en gruppe, inviterer de andre på e-post, de blir enige i gruppechatten, og søknaden går til utleieren først når alle har sagt ja. Utleieren ser en oversikt over søkerne med svar på spørsmålene sine, verifiseringsstatus og et kort AI-sammendrag (igjen bare et forslag). Beskyttede opplysninger som alder, kjønn eller nasjonalitet samler ikke plattformen inn. Når utleieren velger noen, får de andre et høflig automatisk svar.

### Visninger

Utleieren legger ut visningstider med kapasitet og et notat («vi møtes foran inngangen»); søkerne booker, flytter eller avlyser dem direkte i søknaden og får en påminnelse.

### Digital kontrakt og signering

Kontrakten lages fra en mal (leilighet tidsbestemt eller tidsubestemt, felles leie for de som bor sammen, rom) og fylles ut med data fra tilbudet. Skjemaet gir en PDF, begge parter signerer på nett, og hver hendelse — utkast, signatur, betaling, oppsigelse — skrives inn i en revisjonskjede der hver post er knyttet til den forrige med en hash. En senere endring av historikken kan dermed ikke skjules; kontraktsiden viser at kjeden er intakt. Plattformen håndterer også oppsigelse og oppgjør av depositum.

Malene har vannmerket UTKAST til en jurist har gått gjennom dem, og signaturen er foreløpig en enkel elektronisk signatur med dokumentasjon (tidspunkt, IP-adresse, dokumentets fingeravtrykk). Signering via Bank iD er forberedt som neste steg og venter på avtalen med Bank iD.

### Betalinger — pengene går rett til utleieren

Kontrakten gir en betalingsplan: depositum, husleie og akonto for felleskostnader, for dem som bor sammen fordelt etter andeler. Leietakeren betaler med QR-kode i bankappen eller med kort via en Revolut Business-lenke som fører til utleierens egen forretningskonto. Utleieren kan koble til bankkontoen sin (bare lesetilgang), og innbetalinger avstemmes automatisk etter variabelt symbol, spesifikt symbol og beløp; det som ikke stemmer, blir liggende som forslag til manuell avstemming. Etter forfall sendes påminnelser og etter sju dager en eskalering.

**TerraReality holder eller videresender aldri leietakernes penger.** Ingen deponering, ingen kryptovaluta — betalingene går rett fra leietakerens konto til utleierens.

### Overtakelse av eksisterende leieforhold

En utleier som allerede har leiligheter utleid på papirkontrakt, trenger ikke signere noe på nytt. Leieforholdet overtas som signert utenfor plattformen, en skanning av kontrakten lastes opp, og betalingene følges fra overtakelsesdatoen: eldre gjeld går inn i inngående saldo, depositumet som holdes, registreres, og det gamle variable symbolet beholdes. Leietakerne får ingenting før utleieren inviterer dem til leietakerportalen. Flere leieforhold kan importeres samtidig fra et regneark.

### Portefølje på tvers av byer og leierisiko

For utleiere og forvaltere med flere boliger: oversikt over alle leieforhold per kommune, månedens forventede innbetalinger og hva som faktisk kom inn, trenden over tolv måneder, en liste over det som krever oppmerksomhet (gjeld, eskalering, oppsigelse, ledig enhet), inntektskonsentrasjon og en rent roll med eksport til CSV og Excel. Hvert leieforhold har en risikoscore beregnet ut fra regler (gjeld, gamle ubetalte poster, dekning med depositum, kontrakt som snart utløper …). Scoren er bare til informasjon og avgjør aldri noe om noen; leietakeren ser hva den bygger på. Reglene (påminnelser, eskalering, depositum, oppsigelsestid) kan settes per kommune, og en investor kan få lesetilgang der leietakerne bare vises som initialer.

### Promotering og fakturering

Utleieren kan løfte eller fremheve annonsen sin. Betalingen skjer med kort via Stripe, fakturaen med mva. utstedes automatisk, kommer på e-post og kan lastes ned i administrasjonen. Promoterte annonser er merket «Fremhevet» i resultatene.

### Backoffice, moderering og DSA

Operatøren har en oversikt over nøkkeltall, en kø av annonser til godkjenning, moderering av rapporterte samtaler og annonser, en kø av AI-forslag til nye egenskaper, prislisten for promotering, kontraktsmaler, funksjonsbrytere og en revisjonslogg. Hvem som helst kan rapportere en annonse, også uten konto (etter EUs forordning om digitale tjenester, DSA); hver sak avgjøres av et menneske, og begrunnelsen sendes på e-post både til den som rapporterte og til annonsøren. Innlogging «som bruker» ved support krever en oppgitt grunn og logges i revisjonen.

### Mobilapp

Flutter-appen for iOS og Android dekker det leietakeren trenger på telefonen: søk med liste og kart, annonsedetaljer med melding, søknad og booking av visning, mine visninger, leieforholdet med QR-betaling og Revolut-lenke, og direkte åpning fra push-varsler. Det er en første versjon; bygg for testere (TestFlight og Google Plays interne spor) kommer med forberedelsene til testingen.

### Drift

Produksjonsmiljøet er forberedt for Hetzner i EU: separat applikasjons- og databaseserver i et privat nettverk, automatisk HTTPS, databasesikkerhetskopier med gjenoppretting til et vilkårlig tidspunkt (maks én times datatap) og en verifisert gjenopprettingsøvelse, overvåking med varsler (oppetid 99,9 %, søkesvar under 300 ms, status for sikkerhetskopier) og feilrapportering. AI kjører på egen GPU-server; når AI ikke er tilgjengelig, fungerer alt også uten.

### Status og testing

**MVP-en av hele plattformen er ferdig.** Alle modulene over er utviklet og dekket av automatiske tester — enhets-, integrasjons- og ende-til-ende-tester som i nettleseren klikker seg gjennom hele scenarier (annonse, meldinger, gruppesøknad, kontrakt med signering og avstemt betaling, portefølje, promotering med faktura, DSA-rapport, backoffice). Gjenoppretting av databasen fra sikkerhetskopi er også verifisert.

Ferdige er også sikkerhets- og driftsforbedringene som kodegjennomgangen anbefalte, og push-varsler for søknader, kontrakter og betalinger. En lukket beta kjører på egen server med eksempelannonser for Praha og omegn, som er merket som det. Produksjonsutrullingen hos Hetzner venter på kontoer og tilganger (se nedenfor).

Testing med ekte mennesker skjer i fem faser. Hver ender med en port der vi sammen bestemmer om vi går videre:

1. **T0 — forberedelse (2 uker).** Testmiljø hos Hetzner med banneret «Testmiljø», partnere i sandkassemodus (Stripe, Revolut, Bank iD), produktanalyse uten personopplysninger, en knapp «Meld fra om et problem / en idé» på nettet og i appen, registrering kun med invitasjon, testdata og appbygg for testere.
2. **T1 — intern testing (1 uke).** 5–8 personer fra teamet og omkretsen går gjennom alle scenarier både som utleier og boligsøker, på flere enheter, inkludert en hendelsesøvelse og gjenoppretting fra sikkerhetskopi.
3. **T2 — modererte brukervennlighetstester (2 uker).** 12 deltakere: private utleiere, en forvalter med boliger i flere byer, tsjekkiske og utenlandske boligsøkere og et par som skal bo sammen. Det måles oppgavesuksess og tilfredshet (SUS ≥ 70).
4. **T3 — lukket pilot i Praha (6 uker).** 20 pilotutleiere med personlig onboarding og 50–100 boligsøkere, kun med invitasjon. Vi følger med på om annonsene får søknader, hvor raskt utleierne svarer, hvor mange kontrakter som fullføres digitalt og hvor stabilt alt kjører; én release i uken.
5. **T4 — åpen beta i Praha (4 uker).** Registrering åpen for alle med beta-merking, uten betalt kampanje — og til slutt beslutningen om offentlig lansering.

Til sammen rundt 15 uker fra starten av forberedelsene.

**Dette trenger vi fra dere:**

- kontoer og tilganger for driften: Hetzner, domene og DNS, utviklerkontoer hos Apple og Google, Stripe, Revolut Business, Bank iD og leverandøren av banktilkoblingen;
- rekruttering av testere, 20 pilotutleiere og boligsøkere, belønning til deltakerne;
- juridisk gjennomgang av vilkårene, personvernerklæringen og kontraktsmalene, testernes samtykker og beslutningen om det skal signeres ekte kontrakter direkte på plattformen i piloten;
- en penetrasjonstest før piloten, ledelse av intervjuene i T2 og førstelinjesupport under piloten;
- beslutningen ved hver port mellom fasene.
