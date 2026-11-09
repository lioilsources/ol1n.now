---
tagline: AI-chatt med roller, Bibliotekarie och Jurist, en studio för bilder, video, sagor, musik och röst
---
Ol1nLLM är en enda app ovanpå din egen server: den pratar, söker i ett bibliotek och i lagar, ritar, får en bild att röra sig som video, gör en saga, komponerar musik och läser upp svaren med en inspelad röst.
En utförlig guide med skärmbilder finns på sidan [Vad appen kan](ol1nllm-features.html).

### Chatt

Ett samtal börjar med att du väljer en **roll** — tio personligheter från en femåring till en morfar, och fyra assistenter med egen data. Svaret skrivs fortlöpande, samtalet kan **förgrenas** och rollen kan bytas mitt i.

- **Bibliotekarie** svarar ur en korpus av filosofi och heliga texter på originalspråken och visar de passager den hämtat ur, med tjeckisk översättning.
- **Jurist** svarar ur gällande tjeckiska lagar och citerar paragraferna.
- **Jurist – avtal** upprättar ett avtal utifrån en mall: frågar kort för kort och håller koll på de lagstadgade gränserna.
- **Leads** söker företag och institutioner i det tjeckiska avtalsregistret.

### Image Studio

En bild växer fram i omgångar som bildar ett träd: text → bild, sedan redigering av den valda varianten. Nitton modeller (FLUX, SDXL, anime-linjer), över trehundra konstnärliga **stilar** (kulturer och epoker, konstnärer, tekniker), mallar för **poser**, **LoRA** från servern och en negativ prompt skriven med versaler.

- **Behåll pose** och **Behåll ansikte** — en ny figur i förlagans hållning, om du vill även med dess ansikte.
- **Stilkarta** — hundratals bilder av samma motiv ordnade efter likhet; fingret glider över mosaiken, stilen skiftar som en animation och den du väljer används.
- **Inpaint** — du målar över ett område och beskriver vad som ska finnas där.
- **Frisör** — ny frisyr eller hårfärg utan att rita någon mask.
- **Sätt fart** — en kort video av en bild: danser och gester från servern eller din egen beskrivning av rörelsen.
- **3D** — en modell för utskrift (STL) eller en dansande figur med skelett.

### Story Studio

Du väljer en saga bland tio manus, ger rollerna åt dina egna bilder och servern gör en animerad video på en minut med berättare, musik och undertexter. Tagningarna går att granska före animeringen och de misslyckade kan ritas om.

### Music Studio

Ge studion ett musikprov — från en fil eller inspelat med mikrofonen — så läser den ut genre, tempo och tonart. **Vibe** komponerar ett nytt spår i samma anda, **Groove** arrangerar om originalet till en annan genre.

### Voice Studio

Ur en kort inspelning — även ur ljudspåret i en video — skapas en egen **röst**. Vilken röst som helst kan provas på vilken mening som helst och kopplas till en roll i chatten. Högtalaren under ett svar läser då upp det med den rollens röst.

### Historik

Samtal, sessioner, projekt och sagor stannar i telefonen. Långa jobb körs på servern: du kan stänga appen och när du kommer tillbaka ansluter den till dem igen av sig själv.

Byggd i Flutter, fungerar på mobil och dator. Appen är en klient till din egen modellserver; utan den genererar den ingenting.
