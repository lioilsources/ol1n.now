---
tagline: AI-chat med roller, Bibliotekar og Jurist, et studie til billeder, video, eventyr, musik og stemme
---
Ol1nLLM er én app oven på din egen server: den snakker, søger i et bibliotek og i lovene, tegner, får et billede til at bevæge sig som video, laver et eventyr, komponerer musik og læser svarene op med en optaget stemme.
En detaljeret guide med skærmbilleder findes på siden [Hvad appen kan](ol1nllm-features.html).

### Chat

En samtale begynder med valget af en **rolle** — ti personligheder fra et barn på fem til en bedstefar og fire assistenter med deres egne data. Svaret skrives løbende, samtalen kan **forgrenes**, og rollen kan skiftes midt i det hele.

- **Bibliotekar** svarer ud fra et korpus af filosofi og hellige tekster på originalsprogene og viser de passager, han har øst af, med tjekkisk oversættelse.
- **Jurist** svarer ud fra gældende tjekkisk lovgivning og citerer paragrafferne.
- **Jurist – kontrakter** udarbejder en kontrakt ud fra en skabelon: spørger kort for kort og holder øje med de lovmæssige grænser.
- **Leads** finder virksomheder og institutioner i det tjekkiske kontraktregister.

### Image Studio

Et billede bliver til i runder, der danner et træ: tekst → billede, derefter redigering af den valgte variant. Nitten modeller (FLUX, SDXL, anime-linjer), over tre hundrede kunstneriske **stilarter** (kulturer og epoker, kunstnere, medier), skabeloner til **positurer**, **LoRA** fra serveren og en negativ prompt skrevet med versaler.

- **Behold positur** og **Behold ansigt** — en ny figur i forlæggets holdning, eventuelt også med dets ansigt.
- **Stilkort** — hundredvis af billeder af samme motiv ordnet efter lighed; fingeren glider hen over mosaikken, stilen skifter som en animation, og den valgte bruges.
- **Inpaint** — du maler et område over og beskriver, hvad der skal være der.
- **Frisør** — ny frisure eller hårfarve uden at tegne en maske.
- **Sæt i bevægelse** — en kort video ud fra et billede: danse og fagter fra serveren eller din egen beskrivelse af bevægelsen.
- **3D** — en model til print (STL) eller en dansende figur med skelet.

### Story Studio

Du vælger et eventyr blandt ti manuskripter, caster rollerne med dine egne billeder, og serveren laver det om til en animeret video på et minut med fortæller, musik og undertekster. Optagelserne kan tjekkes før animationen, og de mislykkede kan tegnes om.

### Music Studio

Giv studiet et musikuddrag — fra en fil eller optaget med mikrofonen — så aflæser det genre, tempo og toneart. **Vibe** komponerer et nyt nummer i samme ånd, **Groove** arrangerer originalen om til en anden genre.

### Voice Studio

Ud fra en kort optagelse — også fra lydsporet på en video — opstår din egen **stemme**. Enhver stemme kan prøves på en vilkårlig sætning og tildeles en rolle i chatten. Højttaleren under et svar læser det så op med den rolles stemme.

### Historik

Samtaler, sessioner, projekter og eventyr bliver på telefonen. Lange opgaver kører på serveren: du kan lukke appen, og når du vender tilbage, kobler den sig selv på igen.

Bygget i Flutter, kører på mobil og desktop. Appen er en klient til din egen modelserver; uden den genererer den ingenting.
