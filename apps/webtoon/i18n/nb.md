---
tagline: Stående tegneserier, også uten internett — gratis historier, spillbøker der du velger, og ruter som blir levende
visuals: {n} bilder — ruter fra fem barnehistorier, en sammenligning av to stiler og character sheets.
---
Toonfork (arbeidstittel Webtoon) er en leser for tegneserier i stående format som også fungerer uten internett. Rett etter installasjonen ligger det 15 gratis historier i den, uten konto og uten registrering. Historiene lages på en egen GPU-server: en språkmodell skriver manuset, en bildemodell tegner rutene, og snakkeboblene med tekst legges på av leseren til slutt, så teksten kan rettes uten at bildet må genereres på nytt.

Ferdige striper fra fem barnehistorier finner du på undersiden Strips, og spill-løkken med et valg på slutten av episoden på undersiden Gamebook.

### Leser

En historie er én lang stripe av ruter med snakkebobler, tanker, utrop og lydeffekter, som du blar med tommelen ovenfra og ned. Utvalgte ruter blir levende i korte looper: regn på vinduet, lys på vannet, vind i håret. På slutten av episoden ser du hva som ble valgt, og knappen **Neste episode**. Etter siste episode kommer **Slutt** og et forslag til neste historie.

### Spillbøker

I en spillbok bestemmer du handlingen selv. På slutten av hver del velger du hva som skjer videre, og historien forgreiner seg. Appen husker hvor du er, hvilken vei du gikk og hvilke slutter du har funnet; rutekartet viser bare det du allerede har besøkt. Du kan begynne på nytt eller gå ett steg tilbake. Spillbøkene er gratis: for barn **Sara and the Black Crown**, for voksne for eksempel kammerdramaet på et psykologkontor **Learning to Be Silent**, **Metal Sky Above Us** eller **The Blooming Meadow That Turned Grey**. Dramaene tar opp vanskelige temaer, og barneprofilen skjuler dem.

I beta finnes en greneditor: Til et hvilket som helst valg legger du til din egen fortsettelse, setter den sammen av spillbokens bilder og skriver snakkeboblene. Grenen kan du spille med en gang og sende til forfatteren via deling, helt uten server.

### Pakker

Valgfrie pakker legger til opptil 50 historier: **Romantikk** (lette kjærlighetshistorier for voksne, uten eksplisitte scener), **For barn** og **Superhelter**. En pakke lastes ned etter kjøpet og leses offline. Ett kjøp låser opp alt, også pakker som kommer senere.

### Profil og foreldrelås

Første gang du starter appen, velger du profilen **Barn** eller **Voksne**. Barneprofilen skjuler romantikk og dramaer både i biblioteket og i butikken. Hvert kjøp og hvert bytte til Voksne er beskyttet av en foreldrelås med et gangestykke.

### 12 språk

Historier, spillbøker og leserens tekster finnes på 12 språk: tsjekkisk, engelsk, tysk, fransk, italiensk, polsk, brasiliansk portugisisk, japansk, koreansk, vietnamesisk, russisk og ukrainsk. Språket i snakkeboblene bytter du i Innstillinger.

### Personvern

Ingen konto, ingen reklame, ingen tredjepartsanalyse. Toonfork samler ingen personopplysninger. Bare anonym bruksstatistikk uten identifikatorer sendes til utviklerens egen server; du kan slå den av i Innstillinger, og barneprofilen sender ingenting. Det du har kjøpt, husker enheten, og kjøp kan gjenopprettes i Innstillinger.

## Studio: slik blir historiene til

Den andre siden av den samme appen er Studio for forfatteren. Forfatteren bygger en verden: lore, figurer, steder og en kanon som hver historie må gjennom. I Studio kan man også spille interaktivt: På slutten av episoden velger leseren hva figuren gjør videre, eller skriver det med egne ord, og ut av valget blir neste episode til. Egen tekst går først gjennom moderering; i en barneverden er den strengere og avviser heller ved tvil. Skjermbildene på denne siden er fra Studio.

### Verdenseditor

Forfatteren har fanen **Skap** i appen:

- **Grunnlag:** tittel, synopsis, tone, språk, publikum (For barn, Fra 13 år, For voksne), synlighet og en tegnestil som gjelder for hele verdenen.
- **Lore og kanon:** verdens regler, fraksjoner, kanoniske knutepunkter i fast rekkefølge og grenser, altså det som ikke får skje.
- **Figurer og steder:** en beskrivelse med egne ord. Ut fra den foreslår en LLM faste booru-tagger for bildemodellen. Tagger modellen ikke kjenner, sorteres ut etter WD14-ordforrådet, og forfatteren finjusterer resten.
- **Character sheet:** fire varianter av figuren på hvit bakgrunn. Den som passer best til taggene, blir referansebildet.
- **Oversikt:** kampanjer, hvor leserne stoppet, hvilke valg de tok og hvor langt de kom i kanonen.

### Modeller

- **Manus og moderering:** Qwen3.6-35B-A3B via vLLM. Den foreslår tagger for figurer og steder og skriver storyboard for episodene (6–8 ruter, 2–3 valg og et felt for egen tekst). Deretter sjekker en validator figurer, steder og verdens regler.
- **Ruter:** SDXL via ComfyUI. Standard er NoobAI-XL eps 1.1, den andre stilen er Hassaku XL (Illustrious) 3.4. Bare disse modellene tegner menneskelige figurer.
- **Levende ruter:** Wan 2.2 gjør en ferdig rute om til en loop på 1–3 s, maks to bevegelige ruter per episode.
- **Innholdskontroll:** taggeren WD14 (SmilingWolf/wd-swinv2-tagger-v3). Den sjekker hver rute og forkaster den avhengig av publikum og tegner den på nytt med nytt seed. For barn avviser den i tillegg tettsittende og avslørende klær. Den samme taggeren måler om figuren i ruten stemmer med designet sitt.

Figurens identitet holdes oppe av taggene alene. IP-Adapter er klar, men i den første målingen ødela den heller bildet. Modellen klarer ikke å holde to menneskelige figurer i samme bilde; den bytter om hår og klær på dem. Derfor gir barnehistoriene hver figur sin egen rute.

### Stiler

En stil er et navngitt preset: checkpoint, sampler, antall steg, CFG og estetiske tagger. Forfatteren velger den én gang for hele verdenen. **clean_webtoon_noartist** har flate farger og en ren strek, **hassaku_soft** myk skyggelegging og pastellfarger. I visualene står samme episode i begge stilene side om side.

### Status

Toonfork er i alfa: Android-versjonen ligger på Google Play, bygget for macOS kan lastes ned fra GitHub, og App Store er under forberedelse. Studio kjører bare mot sin egen backend (Go med en jobbkø i Postgres) og er ikke offentlig tilgjengelig. Bilder og tekster lages på en egen GPU-server.

Skjermbildene er fra nettversjonen av Studio i telefonbredde mot en lokal backend. Episode 2 har der bare manus; rutene venter fortsatt på å bli tegnet. Kildekoden ligger på [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
