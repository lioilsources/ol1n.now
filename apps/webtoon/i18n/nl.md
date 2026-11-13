---
tagline: Staande strips, ook zonder internet — gratis verhalen, spelboeken waarin jij kiest en panelen die tot leven komen
visuals: {n} afbeeldingen — panelen uit vijf kinderverhalen, een vergelijking van twee stijlen en character sheets.
---
Toonfork (werktitel Webtoon) is een stripreader in staand formaat die ook zonder internet werkt. Direct na de installatie zitten er 15 gratis verhalen in, zonder account en zonder registratie. De verhalen ontstaan op een eigen GPU-server: een taalmodel schrijft het script, een beeldmodel tekent de panelen en de tekstballonnen voegt pas de reader toe, zodat je de tekst kunt verbeteren zonder het beeld opnieuw te genereren.

Kant-en-klare strips van vijf kinderverhalen staan op de subpagina Strips, de spellus met een keuze aan het eind van de aflevering op de subpagina Gamebook.

### Reader

Een verhaal is één lange strook panelen met ballonnen, gedachten, uitroepen en geluidseffecten, die je met je duim van boven naar beneden scrolt. Bepaalde panelen komen tot leven in korte loops: regen op het raam, licht op het water, wind door het haar. Aan het eind van een aflevering zie je wat er gekozen is en de knop **Volgende aflevering**. Na de laatste aflevering komt **Einde** en een voorstel voor het volgende verhaal.

### Spelboeken

In een spelboek bepaal jij het verhaal. Aan het eind van elk deel kies je hoe het verdergaat en het verhaal vertakt zich. De app onthoudt waar je bent, welke weg je nam en welke eindes je hebt gevonden; de routekaart toont alleen wat je al hebt bezocht. Je kunt opnieuw beginnen of een stap teruggaan. Spelboeken zijn gratis: voor kinderen **Sara and the Black Crown**, voor volwassenen bijvoorbeeld het kamerdrama in een psychologenpraktijk **Learning to Be Silent**, **Metal Sky Above Us** of **The Blooming Meadow That Turned Grey**. De drama's gaan over zware onderwerpen en het kinderprofiel verbergt ze.

In bèta zit een vertakkingseditor: bij elke willekeurige keuze voeg je je eigen vervolg toe, stelt het samen uit de afbeeldingen van het spelboek en schrijft de ballonnen. Je speelt de tak meteen en kunt hem via Delen naar de auteur sturen, zonder server.

### Pakketten

Optionele pakketten voegen tot 50 verhalen toe: **Romantiek** (luchtige liefdesverhalen voor volwassenen, zonder expliciete scènes), **Voor kinderen** en **Superhelden**. Een pakket wordt na aankoop gedownload en offline gelezen. Eén aankoop ontgrendelt alles, ook pakketten die later verschijnen.

### Profiel en ouderslot

Bij de eerste start kies je het profiel **Kinderen** of **Volwassenen**. Het kinderprofiel verbergt romantiek en drama's in de bibliotheek en in de winkel. Elke aankoop en elke overstap naar Volwassenen wordt bewaakt door een ouderslot met een tafelsom.

### 12 talen

Verhalen, spelboeken en de teksten van de reader zijn er in 12 talen: Tsjechisch, Engels, Duits, Frans, Italiaans, Pools, Braziliaans Portugees, Japans, Koreaans, Vietnamees, Russisch en Oekraïens. De taal van de ballonnen zet je om in Instellingen.

### Privacy

Geen account, geen advertenties, geen tracking. Toonfork verzamelt geen persoonsgegevens; wat je hebt gekocht onthoudt het apparaat, en aankopen kun je herstellen in Instellingen.

## Studio: zo ontstaan de verhalen

De tweede gedaante van dezelfde app is de Studio voor de auteur. De auteur bouwt een wereld: lore, personages, plekken en een canon waar elk verhaal doorheen moet. In de Studio kun je ook interactief spelen: aan het eind van de aflevering kiest de lezer wat het personage daarna doet, of schrijft het in eigen woorden, en uit die keuze ontstaat de volgende aflevering. Eigen tekst gaat eerst door moderatie; in een kinderwereld is die strenger en weigert bij twijfel liever. De screenshots op deze pagina komen uit de Studio.

### Wereldeditor

De auteur heeft in de app het tabblad **Maken**:

- **Basis:** titel, synopsis, toon, taal, publiek (Voor kinderen, Vanaf 13, Voor volwassenen), zichtbaarheid en een tekenstijl die voor de hele wereld geldt.
- **Lore en canon:** regels van de wereld, facties, canonieke knooppunten in vaste volgorde en grenzen, dus wat er niet mag gebeuren.
- **Personages en locaties:** een beschrijving in eigen woorden. Een LLM stelt er vaste booru-tags voor het beeldmodel uit voor. Tags die het model niet kent, vallen af op basis van de WD14-woordenlijst, en de auteur schaaft de rest bij.
- **Character sheet:** vier varianten van het personage op een witte achtergrond. De variant die het best bij de tags past, wordt het referentiebeeld.
- **Overzicht:** campagnes, waar lezers stopten, welke keuzes ze maakten en hoe ver ze in de canon kwamen.

### Modellen

- **Script en moderatie:** Qwen3.6-35B-A3B via vLLM. Het stelt tags voor personages en locaties voor en schrijft het storyboard van afleveringen (6–8 panelen, 2–3 keuzes en een veld voor eigen tekst). Een validator controleert daarna personages, plekken en de regels van de wereld.
- **Panelen:** SDXL via ComfyUI. Standaard is NoobAI-XL eps 1.1, de tweede stijl is Hassaku XL (Illustrious) 3.4. Alleen deze modellen tekenen menselijke personages.
- **Levende panelen:** Wan 2.2 maakt van een af paneel een loop van 1–3 s, hooguit twee bewegende panelen per aflevering.
- **Inhoudscontrole:** de tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Hij controleert elk paneel en gooit het afhankelijk van het publiek weg om het met een nieuwe seed opnieuw te tekenen. Voor kinderen weigert hij ook strakke en onthullende kleding. Dezelfde tagger meet of een personage in het paneel bij zijn ontwerp past.

De identiteit van een personage hangt alleen aan de tags. IP-Adapter staat klaar, maar maakte bij de eerste meting het beeld eerder kapot. Het model houdt geen twee menselijke personages in één shot vast: het verwisselt hun haar en kleding. Daarom geven de kinderverhalen elk personage een eigen paneel.

### Stijlen

Een stijl is een preset met een naam: checkpoint, sampler, aantal stappen, CFG en esthetische tags. De auteur kiest hem één keer voor de hele wereld. **clean_webtoon_noartist** heeft vlakke kleuren en een strakke lijn, **hassaku_soft** zachte schaduwen en pasteltinten. In de visuals staat dezelfde aflevering in beide stijlen naast elkaar.

### Status

Toonfork zit in de alfafase: de Android-versie staat op Google Play, de build voor macOS is te downloaden op GitHub en de App Store wordt voorbereid. De Studio draait alleen tegen een eigen backend (Go met een jobwachtrij in Postgres) en is niet openbaar beschikbaar. Beelden en teksten ontstaan op een eigen GPU-server.

De screenshots komen uit de webversie van de Studio op telefoonbreedte tegen een lokale backend. Aflevering 2 heeft daarop alleen een script; de panelen wachten nog om getekend te worden. De broncode staat op [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
