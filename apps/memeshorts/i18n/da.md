---
tagline: Lodrette shorts ud fra meme-skabeloner med dine egne figurer
visuals: {n} portrætter fra figurbiblioteket — fire figurer, hver i tolv følelser.
---
Et kommandolinjeværktøj, der laver en meme-skabelon om til en lodret short på seks til femten sekunder. Den originale meme bruges kun som skabelon for vittighedens opbygning — den havner aldrig i resultatet. I stedet spiller egne figurer.

Hverken et prompt eller et seed kan holde en figur ens, så billederne genereres ikke til hver short. De laves én gang som et godkendt bibliotek af *figur × følelse*: Kiro, Mei, Taro og Yuki, hver med tolv ansigtsudtryk fra selvtilfredshed til udmattelse.

Derefter kører shorten gennem pipelinen `classify → storyboard → generate → animate → compose → qa`. Hvert trin gemmes for sig og nøgles med en hash af dets indstillinger, så en ny kørsel er gratis, og en tekstændring kun genberegner det nødvendige. Vittigheden skrives af en LLM, eller du skriver den selv; underteksterne renderes direkte i Go.

Resultatet er 1080×1920, H.264, 30 fps, lydstyrke −14 LUFS og mærket “AI generated” både i billedet og i metadataene.

Indtil videre kører det kun lokalt og har ingen udgivet version, så der er intet at downloade her.
Skrevet i Go; billederne genereres af FLUX.1-schnell på min egen maskine.
