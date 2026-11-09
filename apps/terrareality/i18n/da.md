---
tagline: Leje en bolig fra søgning på kortet til betalt husleje — for udlejere, lejere og operatøren
---
TerraReality er en platform til langtidsudlejning af lejligheder og værelser. Den starter i Prag og omegn, men dataene er fra begyndelsen forberedt til andre lande i Centraleuropa (lejekontraktens jurisdiktion, valuta, sprog). I modsætning til en annonceportal stopper den ikke ved kontakten: den fører udlejer og lejer gennem hele lejeforholdet — søgning, beskeder, ansøgning, fremvisning, kontrakt og underskrift og helt frem til betalingerne og overvågningen af dem.

Platformen har fire ansigter. **Den boligsøgende** søger på kortet eller skriver bare, hvad hun vil have. **Udlejeren eller administratoren** har en administration i webshopstil: annoncer, ansøgere, kontrakter, bank, portefølje og fakturering. **Lejeren** har sin lejerportal med kontrakt, betalinger og QR-koder. **Operatøren** har et backoffice til godkendelse, moderation og indstillinger. Dertil en mobilapp til iOS og Android.

Skærmbillederne er fra udviklingsmiljøet med testdata: navnene er opdigtede, fotos af boligerne er illustrative, og AI-forslagene er lavet i offlinetilstand uden sprogmodel.

### Søgning på kortet og via chat

Kortet går fra region over kommune og bydel helt ned til gaden og viser i hvert zoomniveau, hvor mange tilbud der er hvor. Ved siden af er der filtre (type, pris, areal, indretning, udstyr, kæledyr, transport) med antal ved hver mulighed. Vil du ikke klikke, så skriv fx "2+kk op til 25 000 i Prag 6 med hund og altan" — platformen sætter filtrene og kortudsnittet ud fra sætningen og viser, hvordan den forstod den. Søgningen kan gemmes, og der kommer besked om nye tilbud.

### Annonce med hjælp fra AI — altid med et menneskes accept

Udlejeren indtaster adressen fra det officielle adresseregister (RÚIAN), parametre, fotos og tekst. AI kan ud fra beskrivelsen og fotoene foreslå parametre (elevator, altan, byggetype…) og skrive annonceteksten på tjekkisk og engelsk. Et forslag gemmes dog aldrig af sig selv: udlejeren ser, hvad AI'en foreslår, krydser af, hvad der passer, og først derefter bliver det brugt. Før offentliggørelse godkender et menneske annoncen i backoffice. Til hver annonce kan udlejeren tilføje spørgsmål til ansøgerne (fx "Har du et kæledyr?").

### Beskeder

Ansøgeren skriver til udlejeren direkte fra annoncen; beskeder kommer i realtid med læsekvittering og vedhæftede filer. Telefonnumre og e-mails i teksten skjuler platformen, indtil kontrakten er underskrevet, så hverken aftaler eller betalinger flytter uden for platformen — og ansøgeren ser advarslen "betal intet før fremvisningen". Den, der ikke er online, får en push-notifikation eller en e-mail. En mistænkelig samtale kan anmeldes med ét klik.

### Ansøgninger, bofællesskab og valg af lejer

Ansøgeren søger alene eller for en gruppe bofæller: opretter en gruppe, inviterer de andre via e-mail, de aftaler tingene i gruppechatten, og ansøgningen går først til udlejeren, når alle er enige. Udlejeren ser en oversigt over ansøgerne med svar på sine spørgsmål, verifikationsstatus og et kort AI-resumé (igen kun et forslag). Beskyttede oplysninger som alder, køn eller nationalitet indsamler platformen ikke. Når udlejeren vælger nogen, får de andre et høfligt automatisk svar.

### Fremvisninger

Udlejeren udbyder fremvisningstider med kapacitet og en note ("vi mødes foran indgangen"); ansøgerne booker, flytter eller aflyser dem direkte i ansøgningen og får en påmindelse.

### Digital kontrakt og underskrift

Kontrakten laves ud fra en skabelon (lejlighed tidsbegrænset eller tidsubegrænset, fælles leje for bofæller, værelse) og udfyldes med data fra tilbuddet. Formularen genererer en PDF, begge parter underskriver online, og hver hændelse — udkast, underskrift, betaling, opsigelse — skrives i en revisionskæde, hvor hver post er knyttet til den forrige med en hash. En senere ændring af historikken kan derfor ikke skjules; kontraktsiden viser, at kæden er intakt. Platformen klarer også opsigelse og afregning af depositum.

Skabelonerne har vandmærket UDKAST, indtil en jurist har gennemgået dem, og underskriften er indtil videre en simpel elektronisk signatur med dokumentation (tidspunkt, IP-adresse, dokumentets fingeraftryk). Underskrift via Bank iD er forberedt som næste skridt og venter på aftalen med Bank iD.

### Betalinger — pengene går direkte til udlejeren

Kontrakten giver en betalingskalender: depositum, husleje og aconto, for bofæller fordelt efter andele. Lejeren betaler med en QR-kode i bankappen eller med kort via et Revolut Business-link, der fører til udlejerens egen forretningskonto. Udlejeren kan tilknytte sin bankkonto (kun læseadgang), og indgående betalinger matches automatisk efter variabelt symbol, specifikt symbol og beløb; det, der ikke passer, bliver liggende som forslag til manuel matchning. Efter forfald sendes påmindelser og efter syv dage en eskalering.

**TerraReality holder eller videresender aldrig lejernes penge.** Ingen deponering, ingen kryptovaluta — betalingerne går direkte fra lejerens konto til udlejerens.

### Overtagelse af eksisterende lejemål

En udlejer, der allerede har lejligheder udlejet på en papirkontrakt, behøver ikke underskrive noget igen. Lejemålet overtages som underskrevet uden for platformen, en scanning af kontrakten uploades, og betalingerne følges fra overtagelsesdatoen: ældre gæld går ind i startsaldoen, det indbetalte depositum registreres, og det hidtidige variable symbol bevares. Lejerne får intet, før udlejeren inviterer dem til lejerportalen. Flere lejemål kan importeres på én gang fra et regneark.

### Portefølje på tværs af byer og lejerisiko

For udlejere og administratorer med flere boliger: overblik over alle lejemål pr. kommune, den månedlige opkrævning og hvad der faktisk kom ind, udviklingen over tolv måneder, en liste over det, der kræver opmærksomhed (gæld, eskalering, opsigelse, ledig enhed), indtægtskoncentration og en rent roll med eksport til CSV og Excel. Hvert lejemål har en risikoscore beregnet ud fra regler (gæld, gamle ubetalte poster, dækning med depositum, kontraktens nærtstående udløb…). Scoren er kun til information og afgør aldrig noget om nogen; lejeren kan se, hvad den bygger på. Reglerne (påmindelser, eskalering, depositum, opsigelsesvarsel) kan indstilles pr. kommune, og en investor kan få læseadgang, hvor lejerne kun vises som initialer.

### Promovering og fakturering

Udlejeren kan løfte eller fremhæve sin annonce. Der betales med kort via Stripe, fakturaen med moms udstedes automatisk, sendes på e-mail og kan downloades i administrationen. Promoverede annoncer er markeret "Fremhævet" i resultaterne.

### Backoffice, moderation og DSA

Operatøren har et overblik over nøgletal, en kø af annoncer til godkendelse, moderation af anmeldte samtaler og annoncer, en kø af AI-forslag til nye parametre, prislisten for promovering, kontraktskabeloner, funktionskontakter og en revisionslog. Alle kan anmelde en annonce, også uden konto (efter EU's forordning om digitale tjenester, DSA); hver sag afgøres af et menneske, og begrundelsen sendes på e-mail til både anmelderen og annoncøren. Login "som bruger" i forbindelse med support kræver en angivet årsag og logges i revisionen.

### Mobilapp

Flutter-appen til iOS og Android dækker det, lejeren har brug for på telefonen: søgning med liste og kort, annoncedetalje med besked, ansøgning og booking af fremvisning, mine fremvisninger, lejemålet med QR-betaling og Revolut-link samt direkte åbning fra push-notifikationer. Det er en første version; builds til testere (TestFlight og Google Plays interne spor) kommer med forberedelsen af testen.

### Drift

Produktionsmiljøet er forberedt til Hetzner i EU: separat applikations- og databaseserver i et privat netværk, automatisk HTTPS, databasebackup med gendannelse til et vilkårligt tidspunkt (højst en times datatab) og en verificeret gendannelsesøvelse, overvågning med alarmer (oppetid 99,9 %, søgesvar under 300 ms, backupstatus) og fejlrapportering. AI kører på egen GPU-server; når AI ikke er tilgængelig, virker alt også uden.

### Status og test

**MVP'en af hele platformen er færdig.** Alle moduler ovenfor er udviklet og dækket af automatiske tests — unit-, integrations- og end-to-end-tests, der i browseren klikker hele scenarier igennem (annonce, beskeder, gruppeansøgning, kontrakt med underskrift og matchet betaling, portefølje, promovering med faktura, DSA-anmeldelse, backoffice). Gendannelse af databasen fra backup er også verificeret.

Færdige er også de sikkerheds- og driftsforbedringer, som kodegennemgangen anbefalede, og push-notifikationer for ansøgninger, kontrakter og betalinger. En lukket beta kører på egen server med eksempelannoncer for Prag og omegn, som er markeret som sådan. Produktionsudrulningen hos Hetzner venter på konti og adgange (se nedenfor).

Test med rigtige mennesker foregår i fem faser. Hver slutter med en port, hvor vi sammen beslutter, om vi går videre:

1. **T0 — forberedelse (2 uger).** Testmiljø hos Hetzner med banneret "Testmiljø", partnere i sandbox (Stripe, Revolut, Bank iD), produktanalyse uden persondata, en knap "Rapportér et problem / en idé" på web og i appen, tilmelding kun på invitation, testdata og app-builds til testere.
2. **T1 — intern test (1 uge).** 5–8 personer fra teamet og omkredsen gennemgår alle scenarier som både udlejer og boligsøgende på flere enheder, inklusive en hændelsesøvelse og gendannelse fra backup.
3. **T2 — modererede brugervenlighedstests (2 uger).** 12 deltagere: private udlejere, en administrator med boliger i flere byer, tjekkiske og udenlandske boligsøgende og et par bofæller. Der måles opgavesucces og tilfredshed (SUS ≥ 70).
4. **T3 — lukket pilot i Prag (6 uger).** 20 pilotudlejere med personlig onboarding og 50–100 boligsøgende, kun på invitation. Vi følger, om annoncerne får ansøgninger, hvor hurtigt udlejerne svarer, hvor mange kontrakter der gennemføres digitalt, og hvor stabilt det hele kører; én release om ugen.
5. **T4 — åben beta i Prag (4 uger).** Tilmelding for alle med beta-mærkat, uden betalt kampagne — og til sidst beslutningen om den offentlige lancering.

I alt cirka 15 uger fra starten af forberedelsen.

**Det har vi brug for fra jer:**

- konti og adgange til driften: Hetzner, domæne og DNS, udviklerkonti hos Apple og Google, Stripe, Revolut Business, Bank iD og udbyderen af bankforbindelsen;
- rekruttering af testere, 20 pilotudlejere og boligsøgende, belønninger til deltagerne;
- juridisk gennemgang af vilkår, privatlivspolitik og kontraktskabeloner, testernes samtykker og beslutningen om, hvorvidt der i piloten underskrives rigtige kontrakter direkte på platformen;
- en penetrationstest før piloten, ledelse af interviewene i T2 og førstelinjesupport under piloten;
- beslutningen ved hver port mellem faserne.
