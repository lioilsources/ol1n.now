---
tagline: Telegram-bot för manga av klossar, foto-restyle, ny frisyr och animerade foton
---
TsumikiMangaBot (tidigare MangaPrompts) sätter ihop prompter för AI-bildgenerering enligt LEGO-principen — du väljer byggklossar på ungefär tjugofem axlar (medium, konsttradition, huvudstil, mangastil, historisk period) och av dem blir det en komplett prompt. Och det stannar inte där: prompten skickas direkt till generering och bilden kommer tillbaka till dig.

### Fler kort

Bredvid byggaren har Mini Appen en kortväxlare:

- **Foto-restyle** — du laddar upp ett foto, väljer en stil och får samma person i samma pose i den stilen. Med reglaget foto / illustration väljer du medium, och det finns över nittio stilar i sex grupper (populära, målare, konsttraditioner per region).
- **Testa en frisyr** — ritar om bara håret på ett porträtt, om du vill även med ny färg. Varje frisyr har en förhandsvisning på samma ansikte, så du jämför bara håret.
- **Ge fotot liv** — av ett foto och en vald scen blir det en kort video som landar i chatten.

### Så kommer du igång

Inget behöver installeras, det körs som Telegram Mini App:

1. Öppna [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) i Telegram — eller sök efter den med namnet **Tsumiki**.
2. Skriv `/start`. Boten svarar med knappen **🎨 Open Tsumiki**.
3. Tryck på den, sätt ihop klossarna och låt den generera.

Den färdiga bilden visas direkt i appen **och landar samtidigt i chatten**, så du har den i historiken och kan vidarebefordra den direkt. Hoppar du över `/start` och öppnar appen direkt fungerar genereringen ändå — bilden kommer bara inte fram i chatten, eftersom Telegram inte låter en bot skriva först.

### Vad det kostar

**Tre gratis genereringar var 24:e timme.** Sedan gäller 1 kredit = 1 bild, och krediter köps med **Telegram Stars** direkt i appen — 10 krediter för 25 ⭐, 50 för 100 ⭐, 250 för 400 ⭐. Restyle och frisyr kostar lika mycket som en bild, frisyren först när analysen har godkänt fotot. Animering har en egen räknare: en om dagen gratis, fler för 10 ⭐. Om en generering misslyckas får du tillbaka krediten. Vid problem med betalningen hjälper kommandot `/paysupport`, och återbetalningar fixar jag inom 48 timmar.

### Under huven

Mini Appen är Flutter web på Cloudflare Pages. Prompten går därifrån till en backend (FastAPI + aiogram) som körs på en NAS hemma och vidare till **ComfyUI** — beroende på vald mall väljs workflowet (FLUX, Pony, Juggernaut XL Lightning eller WAI Illustrious). Restyle håller ansiktet med PuLID eller InstantID och posen med depth ControlNet, och animeringen körs på Wan 2.2. Krediter och betalningar ligger i SQLite på backenden.

### Native appar

Byggena nedan för macOS, Windows, Linux, Android och iOS är den fullständiga promptbyggaren och har dessutom läget **Repose**, som Telegram saknar: du laddar upp ett ansikte, väljer en pose och appen genererar en bild av personen i den posen med ett troget ansikte (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose pratar dock direkt med ComfyUI, så den native appen måste kunna nå det.

Byggd med Flutter.
