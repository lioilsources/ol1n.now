---
tagline: AI-chat med roller, Bibliotekar og Jurist, et studio for bilder, video, eventyr, musikk og stemme
---
Ol1nLLM er én app oppå din egen server: den prater, søker i et bibliotek og i lovene, tegner, får et bilde til å bevege seg som video, lager et eventyr, komponerer musikk og leser opp svarene med en innspilt stemme.
En detaljert guide med skjermbilder finner du på siden [Hva appen kan](ol1nllm-features.html).

### Chat

En samtale begynner med at du velger en **rolle** — ti personligheter fra et barn på fem til en bestefar, og fire assistenter med egne data. Svaret skrives fortløpende, samtalen kan **forgrenes**, og rollen kan byttes midt i.

- **Bibliotekar** svarer ut fra et korpus av filosofi og hellige tekster på originalspråkene og viser utdragene han har hentet fra, med tsjekkisk oversettelse.
- **Jurist** svarer ut fra gjeldende tsjekkiske lover og siterer paragrafene.
- **Jurist – kontrakter** setter opp en kontrakt fra en mal: spør kort for kort og passer på de lovfestede grensene.
- **Leads** finner bedrifter og institusjoner i det tsjekkiske kontraktsregisteret.

### Image Studio

Et bilde blir til i runder som danner et tre: tekst → bilde, deretter redigering av den valgte varianten. Nitten modeller (FLUX, SDXL, anime-linjer), over tre hundre kunstneriske **stiler** (kulturer og epoker, kunstnere, medier), maler for **positurer**, **LoRA** fra serveren og en negativ prompt skrevet med store bokstaver.

- **Behold positur** og **Behold ansikt** — en ny figur i holdningen fra forelegget, eventuelt også med ansiktet.
- **Stilkart** — hundrevis av bilder av samme motiv ordnet etter likhet; fingeren glir over mosaikken, stilen skifter som en animasjon, og den du velger blir brukt.
- **Inpaint** — du maler over et område og beskriver hva som skal være der.
- **Frisør** — ny frisyre eller hårfarge uten å tegne en maske.
- **Sett i bevegelse** — en kort video fra et bilde: danser og gester fra serveren eller din egen beskrivelse av bevegelsen.
- **3D** — en modell for utskrift (STL) eller en dansende figur med skjelett.

### Story Studio

Du velger et eventyr blant ti manus, gir rollene til egne bilder, og serveren lager en animert video på ett minutt med forteller, musikk og undertekster. Bildene kan sjekkes før animasjonen, og de mislykkede kan tegnes på nytt.

### Music Studio

Gi studioet et musikkutdrag — fra en fil eller tatt opp med mikrofonen — så leser det ut sjanger, tempo og toneart. **Vibe** komponerer et nytt spor i samme ånd, **Groove** arrangerer originalen om til en annen sjanger.

### Voice Studio

Fra et kort opptak — også fra lydsporet i en video — blir det en egen **stemme**. Hvilken som helst stemme kan prøves på en hvilken som helst setning og knyttes til en rolle i chatten. Høyttaleren under et svar leser det da opp med den rollens stemme.

### Historikk

Samtaler, økter, prosjekter og eventyr blir værende på telefonen. Lange oppgaver kjører på serveren: du kan lukke appen, og når du kommer tilbake, kobler den seg på igjen av seg selv.

Bygget i Flutter, kjører på mobil og desktop. Appen er en klient til din egen modellserver; uten den genererer den ingenting.
