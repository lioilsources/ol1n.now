---
tagline: AI chat s rolami, Knihovník a Právnik, štúdio na obrázky, video, rozprávky, hudbu a hlas
---
Ol1nLLM je jedna appka nad vlastným serverom: rozpráva sa, hľadá v knižnici a v zákonoch, kreslí, rozhýbe obrázok do videa, natočí rozprávku, zloží hudbu a odpovede prečíta nahratým hlasom.
Podrobný sprievodca so screenshotmi je na stránke [Čo appka dokáže](ol1nllm-features.html).

### Chat

Konverzácia sa začína výberom **roly** — desať povah od päťročného dieťaťa po dedka a štyria asistenti s vlastnými dátami. Odpoveď sa píše priebežne, konverzácia sa dá **vetviť** a rolu možno zmeniť uprostred.

- **Knihovník** odpovedá z korpusu filozofie a posvätných textov v pôvodných jazykoch a ukazuje pasáže, z ktorých čerpal, s českým prekladom.
- **Právnik** odpovedá z účinných zákonov ČR a cituje paragrafy.
- **Právnik – zmluvy** spíše zmluvu zo šablóny: pýta sa po kartách a stráži zákonné limity.
- **Leads** hľadá firmy a inštitúcie v českom Registri zmlúv.

### Image Studio

Obrázok vzniká po kolách, ktoré tvoria strom: text → obraz, potom úpravy vybranej varianty. Devätnásť modelov (FLUX, SDXL, anime línie), viac ako tristo výtvarných **štýlov** (kultúry a epochy, umelci, médiá), šablóny **póz**, **LoRA** zo servera a negatívny prompt písaný veľkými písmenami.

- **Zachovaj pózu** a **Zachovať tvár** — nová postava v postoji z predlohy, voliteľne aj s jej tvárou.
- **Mapa štýlov** — stovky obrázkov toho istého námetu zoradené podľa podobnosti; prst ide po mozaike a štýl sa mení ako animácia, vybraný sa použije.
- **Inpaint** — zamaľuješ oblasť a opíšeš, čo tam má byť.
- **Kaderník** — nový účes alebo farba vlasov bez kreslenia masky.
- **Rozhýbať** — z obrázka krátke video: tance a gestá zo servera alebo vlastný opis pohybu.
- **3D** — model na tlač (STL) alebo tancujúca figúrka s kostrou.

### Story Studio

Vyberieš rozprávku z desiatich scenárov, obsadíš roly vlastnými obrázkami a server z nej urobí minútové animované video s rozprávačom, hudbou a titulkami. Zábery sa dajú pred animáciou skontrolovať a nepodarené nechať prekresliť.

### Music Studio

Daj štúdiu hudobnú ukážku — zo súboru alebo nahratú mikrofónom — a ono z nej vyčíta žáner, tempo a tóninu. **Vibe** zloží novú skladbu v rovnakom duchu, **Groove** prearanžuje tú pôvodnú do iného žánru.

### Voice Studio

Z krátkej nahrávky — aj zo zvukovej stopy videa — vznikne vlastný **hlas**. Ktorýkoľvek hlas sa dá vyskúšať na ľubovoľnej vete a priradiť role v chate. Reproduktor pod odpoveďou ju potom prečíta hlasom tej roly.

### História

Konverzácie, sedenia, projekty aj rozprávky zostávajú v telefóne. Dlhé úlohy bežia na serveri: appku možno zavrieť a po návrate sa k nim sama pripojí.

Postavené vo Flutteri, beží na mobile aj desktope. Appka je klient k vlastnému serveru s modelmi; bez neho nič negeneruje.
