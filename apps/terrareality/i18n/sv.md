---
tagline: Hyra en bostad från sökningen på kartan till betald hyra — för hyresvärdar, hyresgäster och operatören
---
TerraReality är en plattform för långtidsuthyrning av lägenheter och rum. Den börjar i Prag med omnejd, men i datan är den från början förberedd för fler länder i Centraleuropa (avtalets jurisdiktion, valuta, språk). Till skillnad från en annonsportal slutar den inte vid kontakten: den leder hyresvärd och hyresgäst genom hela hyresförhållandet — sökning, meddelanden, ansökan, visning, avtal och underskrift ända fram till betalningarna och bevakningen av dem.

Plattformen har fyra ansikten. **Den bostadssökande** söker på kartan eller skriver helt enkelt vad hon vill ha. **Hyresvärden eller förvaltaren** har en administration i webbutiksstil: annonser, sökande, avtal, bank, portfölj och fakturering. **Hyresgästen** har sin hyresgästportal med avtal, betalningar och QR-koder. **Operatören** har ett backoffice för godkännanden, moderering och inställningar. Dessutom en mobilapp för iOS och Android.

Skärmbilderna kommer från utvecklingsmiljön med testdata: namnen är påhittade, bilderna på lägenheterna är illustrativa och AI-förslagen togs fram i offlineläge utan språkmodell.

### Sökning på kartan och via chatt

Kartan går från region via kommun och stadsdel ända ner till gatan och visar på varje zoomnivå hur många erbjudanden som finns var. Bredvid finns filter (typ, pris, yta, planlösning, utrustning, husdjur, kommunikationer) med antal vid varje val. Den som inte vill klicka skriver till exempel ”2+kk upp till 25 000 i Prag 6 med hund och balkong” — plattformen ställer in filtren och kartutsnittet utifrån meningen och visar hur den tolkade den. Sökningen kan sparas, och nya erbjudanden ger en avisering.

### Annons med hjälp av AI — alltid med en människas godkännande

Hyresvärden anger adressen från det officiella adressregistret (RÚIAN), egenskaper, bilder och text. AI kan utifrån beskrivningen och bilderna föreslå egenskaper (hiss, balkong, byggnadstyp…) och skriva annonstexten på tjeckiska och engelska. Ett förslag sparas dock aldrig av sig självt: hyresvärden ser vad AI:n föreslår, bockar för det som stämmer och först då används det. Innan publicering godkänns annonsen av en människa i backoffice. Till varje annons kan hyresvärden lägga till frågor till de sökande (till exempel ”Har du husdjur?”).

### Meddelanden

Den sökande skriver till hyresvärden direkt från annonsen; meddelandena kommer i realtid, med läskvitto och bilagor. Telefonnummer och e-postadresser i texten döljer plattformen tills avtalet är undertecknat, så att varken överenskommelser eller betalningar flyttar utanför den — och den sökande ser varningen ”betala inget före visningen”. Den som inte är online får en push-notis eller ett mejl. En misstänkt konversation kan anmälas med ett klick.

### Ansökningar, delat boende och val av hyresgäst

Den sökande ansöker själv eller för en grupp som ska dela bostad: skapar en grupp, bjuder in de andra via mejl, de kommer överens i gruppchatten och ansökan går till hyresvärden först när alla har godkänt den. Hyresvärden ser en översikt över de sökande med svar på sina frågor, verifieringsstatus och en kort AI-sammanfattning (återigen bara ett förslag). Skyddade uppgifter som ålder, kön eller nationalitet samlar plattformen inte in. När hyresvärden väljer någon får de andra ett artigt automatiskt svar.

### Visningar

Hyresvärden lägger ut visningstider med antal platser och en anteckning (”vi ses utanför porten”); de sökande bokar, flyttar eller avbokar dem direkt i ansökan och får en påminnelse.

### Digitalt avtal och underskrift

Avtalet skapas från en mall (lägenhet tidsbegränsat eller tills vidare, gemensamt hyresavtal för de som delar boende, rum) och fylls i med uppgifter från erbjudandet. Formuläret genererar en PDF, båda parter skriver under online och varje händelse — förslag, underskrift, betalning, uppsägning — skrivs in i en granskningskedja där varje post är länkad till den föregående med en hash. En senare ändring av historiken går därmed inte att dölja; avtalssidan visar att kedjan är obruten. Plattformen hanterar också uppsägning och avräkning av depositionen.

Mallarna har vattenstämpeln UTKAST tills en jurist har granskat dem, och underskriften är tills vidare en enkel elektronisk signatur med bevisning (tid, IP-adress, dokumentets fingeravtryck). Signering via Bank iD är förberedd som nästa steg och väntar på avtalet med Bank iD.

### Betalningar — pengarna går direkt till hyresvärden

Ur avtalet skapas en betalningskalender: deposition, hyra och förskott för driftskostnader, för de som delar boende uppdelade efter andelar. Hyresgästen betalar med en QR-kod i bankappen eller med kort via en Revolut Business-länk som leder till hyresvärdens eget handlarkonto. Hyresvärden kan koppla sitt bankkonto (endast läsbehörighet) och inkommande betalningar matchas automatiskt efter variabel symbol, specifik symbol och belopp; det som inte stämmer ligger kvar som förslag för manuell matchning. Efter förfallodagen går påminnelser ut och efter sju dagar en eskalering.

**TerraReality håller eller vidarebefordrar aldrig hyresgästernas pengar.** Ingen deponering, ingen kryptovaluta — betalningarna går direkt från hyresgästens konto till hyresvärdens.

### Övertagande av befintliga hyresavtal

En hyresvärd som redan har lägenheter uthyrda på ett pappersavtal behöver inte skriva under något igen. Hyresförhållandet tas över som undertecknat utanför plattformen, en skanning av avtalet laddas upp och betalningarna följs från övertagandedatumet: äldre skuld går in i ingående saldo, den innehållna depositionen registreras och den tidigare variabla symbolen behålls. Hyresgästerna får ingenting förrän hyresvärden bjuder in dem till hyresgästportalen. Flera hyresavtal på en gång kan importeras från ett kalkylblad.

### Portfölj i flera städer och hyresrisk

För hyresvärdar och förvaltare med flera bostäder: översikt över alla hyresavtal per kommun, månadens debitering och vad som faktiskt kom in, trenden över tolv månader, en lista över det som kräver uppmärksamhet (skuld, eskalering, uppsägning, vakant enhet), intäktskoncentration och en rent roll med export till CSV och Excel. Varje hyresavtal har en riskpoäng som räknas fram ur regler (skuld, gamla obetalda poster, täckning av depositionen, avtal som snart löper ut…). Poängen är bara information och avgör aldrig något om någon; hyresgästen ser vad den bygger på. Reglerna (påminnelser, eskalering, deposition, uppsägningstid) går att ställa in per kommun, och en investerare kan få läsbehörighet där hyresgästerna bara syns som initialer.

### Marknadsföring och fakturering

Hyresvärden kan lyfta eller framhäva sin annons. Betalning sker med kort via Stripe, fakturan med moms utfärdas automatiskt, skickas via mejl och kan laddas ner i administrationen. Marknadsförda annonser är märkta ”Framhävd” i resultaten.

### Backoffice, moderering och DSA

Operatören har en översikt över nyckeltal, en kö med annonser att godkänna, moderering av anmälda konversationer och annonser, en kö med AI-förslag på nya egenskaper, prislistan för marknadsföring, avtalsmallar, funktionsväxlar och en granskningslogg. Vem som helst kan anmäla en annons, även utan konto (enligt EU:s förordning om digitala tjänster, DSA); varje ärende avgörs av en människa och motiveringen skickas via mejl till både anmälaren och annonsören. Inloggning ”som användare” vid support kräver en angiven anledning och loggas i granskningen.

### Mobilapp

Flutter-appen för iOS och Android täcker det hyresgästen behöver i telefonen: sökning med lista och karta, annonsdetalj med meddelande, ansökan och bokning av visning, mina visningar, hyresavtalet med QR-betalning och Revolut-länk samt direktlänkar från push-notiser. Det är en första version; byggen för testare (TestFlight och Google Plays interna spår) tas fram i förberedelserna inför testningen.

### Drift

Produktionsmiljön är förberedd för Hetzner i EU: separata applikations- och databasservrar i ett privat nätverk, automatisk HTTPS, databassäkerhetskopior med återställning till valfri tidpunkt (högst en timmes dataförlust) och en verifierad återställningsövning, övervakning med larm (tillgänglighet 99,9 %, söksvar under 300 ms, status för säkerhetskopior) och felrapportering. AI körs på en egen GPU-server; när AI inte är tillgänglig fungerar allt ändå utan den.

### Status och testning

**MVP:n av hela plattformen är klar.** Alla moduler ovan är utvecklade och täckta av automatiska tester — enhets-, integrations- och end-to-end-tester som i webbläsaren klickar sig igenom hela scenarier (annons, meddelanden, gruppansökan, avtal med underskrift och matchad betalning, portfölj, marknadsföring med faktura, DSA-anmälan, backoffice). Återställning av databasen från säkerhetskopia är också verifierad.

Klara är även de säkerhets- och driftförbättringar som kodgranskningen rekommenderade och push-notiser för ansökningar, avtal och betalningar. En sluten beta körs på en egen server med exempelannonser för Prag med omnejd, som är märkta som sådana. Produktionsdriftsättningen hos Hetzner väntar på konton och åtkomster (se nedan).

Testning med riktiga människor sker i fem faser. Varje fas slutar med en grind där vi tillsammans beslutar om vi går vidare:

1. **T0 — förberedelse (2 veckor).** Testmiljö hos Hetzner med banderollen ”Testmiljö”, partner i sandlådeläge (Stripe, Revolut, Bank iD), produktanalys utan personuppgifter, en knapp ”Rapportera ett problem / en idé” på webben och i appen, registrering endast via inbjudan, testdata och appbyggen för testare.
2. **T1 — intern testning (1 vecka).** 5–8 personer från teamet och dess omgivning går igenom alla scenarier som både hyresvärd och bostadssökande, på flera enheter, inklusive en incidentövning och återställning från säkerhetskopia.
3. **T2 — modererade användbarhetstester (2 veckor).** 12 deltagare: privata hyresvärdar, en förvaltare med bostäder i flera städer, tjeckiska och utländska bostadssökande och ett par som ska dela bostad. Uppgiftsframgång och nöjdhet mäts (SUS ≥ 70).
4. **T3 — sluten pilot i Prag (6 veckor).** 20 pilothyresvärdar med personlig onboarding och 50–100 bostadssökande, endast via inbjudan. Vi följer om annonserna får ansökningar, hur snabbt hyresvärdarna svarar, hur många avtal som slutförs digitalt och hur stabilt allt fungerar; en release i veckan.
5. **T4 — öppen beta i Prag (4 veckor).** Registrering öppen för alla med betamärkning, utan betald kampanj — och i slutet beslutet om den publika lanseringen.

Totalt ungefär 15 veckor från start av förberedelserna.

**Det här behöver vi från er:**

- konton och åtkomster för driften: Hetzner, domän och DNS, utvecklarkonton hos Apple och Google, Stripe, Revolut Business, Bank iD och leverantören av bankkopplingen;
- rekrytering av testare, 20 pilothyresvärdar och bostadssökande, ersättning till deltagarna;
- juridisk granskning av villkoren, integritetspolicyn och avtalsmallarna, testarnas samtycken och beslutet om huruvida riktiga avtal ska skrivas under direkt på plattformen under piloten;
- ett penetrationstest före piloten, att leda intervjuerna i T2 och första linjens support under piloten;
- beslutet vid varje grind mellan faserna.
