---
tagline: Lodrette tegneserier, også uden internet — gratis historier, spilbøger hvor du vælger, og felter der bliver levende
visuals: {n} billeder — felter fra fem børnehistorier, en sammenligning af to stilarter og character sheets.
---
Toonfork (arbejdstitel Webtoon) er en læser til lodrette tegneserier, der også virker uden internet. Lige efter installationen er der 15 gratis historier i den, uden konto og uden tilmelding. Historierne bliver lavet på en egen GPU-server: en sprogmodel skriver manuskriptet, en billedmodel tegner felterne, og taleboblerne med tekst sætter læseren først på til sidst, så teksten kan rettes uden at billedet skal genereres igen.

Færdige striber fra fem børnehistorier ligger på undersiden Strips, og spilløkken med et valg i slutningen af afsnittet på undersiden Gamebook.

### Læser

En historie er én lang strimmel af felter med talebobler, tanker, udråb og lydeffekter, som du scroller med tommelfingeren oppefra og ned. Udvalgte felter bliver levende i korte loops: regn på ruden, lys på vandet, vind i håret. I slutningen af afsnittet kan du se, hvad der blev valgt, og knappen **Næste afsnit**. Efter sidste afsnit kommer **Slut** og et forslag til den næste historie.

### Spilbøger

I en spilbog bestemmer du selv handlingen. I slutningen af hver del vælger du, hvad der skal ske, og historien forgrener sig. Appen husker, hvor du er, hvilken vej du gik, og hvilke slutninger du har fundet; rutekortet viser kun det, du allerede har besøgt. Du kan starte forfra eller gå et skridt tilbage. Spilbøgerne er gratis: til børn **Sara and the Black Crown**, til voksne for eksempel kammerdramaet i en psykologpraksis **Learning to Be Silent**, **Metal Sky Above Us** eller **The Blooming Meadow That Turned Grey**. Dramaerne tager svære emner op, og børneprofilen skjuler dem.

I beta er der en grenredigering: Til ethvert valg tilføjer du din egen fortsættelse, sætter den sammen af spilbogens billeder og skriver taleboblerne. Grenen kan du spille med det samme og sende til forfatteren via deling, helt uden server.

### Pakker

Valgfrie pakker tilføjer op til 50 historier: **Romantik** (lette kærlighedshistorier for voksne, uden eksplicitte scener), **For børn** og **Superhelte**. En pakke downloades efter købet og læses offline. Ét køb låser alt op, også pakker, der udkommer senere.

### Profil og forældrelås

Første gang du starter appen, vælger du profilen **Børn** eller **Voksne**. Børneprofilen skjuler romantik og dramaer i både biblioteket og butikken. Hvert køb og hvert skift til Voksne er beskyttet af en forældrelås med et regnestykke fra den lille tabel.

### 12 sprog

Historier, spilbøger og læserens tekster findes på 12 sprog: tjekkisk, engelsk, tysk, fransk, italiensk, polsk, brasiliansk portugisisk, japansk, koreansk, vietnamesisk, russisk og ukrainsk. Sproget i taleboblerne skifter du i Indstillinger.

### Privatliv

Ingen konto, ingen reklamer, ingen sporing. Toonfork indsamler ingen personlige data; det, du har købt, husker enheden, og køb kan gendannes i Indstillinger.

## Studio: sådan bliver historierne til

Den anden side af den samme app er Studio til forfatteren. Forfatteren bygger en verden: lore, personer, steder og en kanon, som hver historie skal igennem. I Studio kan man også spille interaktivt: I slutningen af afsnittet vælger læseren, hvad personen gør nu, eller skriver det med sine egne ord, og ud af valget opstår næste afsnit. Egen tekst går først gennem moderation; i en børneverden er den strengere og afviser hellere i tvivlstilfælde. Skærmbillederne på denne side er fra Studio.

### Verdenseditor

Forfatteren har fanen **Skab** i appen:

- **Grundlag:** titel, synopsis, tone, sprog, publikum (For børn, Fra 13 år, For voksne), synlighed og en tegnestil, der gælder for hele verdenen.
- **Lore og kanon:** verdens regler, fraktioner, kanoniske knudepunkter i fast rækkefølge og grænser, altså hvad der ikke må ske.
- **Personer og steder:** en beskrivelse med egne ord. Ud fra den foreslår en LLM faste booru-tags til billedmodellen. Tags, som modellen ikke kender, frasorteres efter WD14's ordforråd, og forfatteren finpudser resten.
- **Character sheet:** fire varianter af personen på hvid baggrund. Den, der passer bedst til taggene, bliver referencebilledet.
- **Overblik:** kampagner, hvor læserne stoppede, hvilke valg de traf, og hvor langt de nåede i kanonen.

### Modeller

- **Manuskript og moderation:** Qwen3.6-35B-A3B via vLLM. Den foreslår tags til personer og steder og skriver storyboardet til afsnittene (6–8 felter, 2–3 valg og et felt til egen tekst). Bagefter tjekker en validator personer, steder og verdens regler.
- **Felter:** SDXL via ComfyUI. Standard er NoobAI-XL eps 1.1, den anden stil er Hassaku XL (Illustrious) 3.4. Kun disse modeller tegner menneskelige personer.
- **Levende felter:** Wan 2.2 laver et færdigt felt om til et loop på 1–3 s, højst to bevægelige felter pr. afsnit.
- **Indholdskontrol:** taggeren WD14 (SmilingWolf/wd-swinv2-tagger-v3). Den tjekker hvert felt og kasserer det afhængigt af publikum og tegner det igen med et nyt seed. Til børn afviser den desuden tætsiddende og afslørende tøj. Den samme tagger måler, om personen i feltet svarer til sit design.

Personens identitet holdes alene af taggene. IP-Adapter er klar, men i den første måling ødelagde den snarere billedet. Modellen kan ikke holde to menneskelige personer i samme billede; den bytter om på deres hår og tøj. Derfor giver børnehistorierne hver person sit eget felt.

### Stilarter

En stil er et navngivet preset: checkpoint, sampler, antal trin, CFG og æstetiske tags. Forfatteren vælger den én gang for hele verdenen. **clean_webtoon_noartist** har flade farver og en ren streg, **hassaku_soft** blød skygning og pastelfarver. I visualerne står det samme afsnit i begge stilarter side om side.

### Status

Toonfork er i alfa: Android-versionen findes på Google Play, buildet til macOS kan hentes på GitHub, og App Store er under forberedelse. Studio kører kun mod sin egen backend (Go med en jobkø i Postgres) og er ikke offentligt tilgængeligt. Billeder og tekster bliver lavet på en egen GPU-server.

Skærmbillederne er fra webversionen af Studio i telefonbredde mod en lokal backend. Afsnit 2 har her kun et manuskript; felterne venter stadig på at blive tegnet. Kildekoden ligger på [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
