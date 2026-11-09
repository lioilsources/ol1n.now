---
tagline: Vertikale shorts fra meme-maler med dine egne figurer
visuals: {n} portretter fra figurbiblioteket — fire figurer, hver i tolv følelser.
---
Et kommandolinjeverktøy som gjør en meme-mal om til en vertikal short på seks til femten sekunder. Den originale memen brukes bare som mal for oppbyggingen av vitsen — den havner aldri i resultatet. I stedet spiller egne figurer.

Verken en prompt eller en seed klarer å holde en figur lik, så bildene genereres ikke for hver short. De lages én gang som et godkjent bibliotek av *figur × følelse*: Kiro, Mei, Taro og Yuki, hver med tolv ansiktsuttrykk fra selvgodhet til utmattelse.

Deretter går shorten gjennom pipelinen `classify → storyboard → generate → animate → compose → qa`. Hvert steg lagres for seg og nøkles med en hash av innstillingene sine, så en ny kjøring er gratis, og en tekstendring regner bare om det som må. Vitsen skrives av en LLM, eller du skriver den inn selv; tekstingen rendres direkte i Go.

Resultatet er 1080×1920, H.264, 30 fps, lydstyrke −14 LUFS og merket «AI generated» både i bildet og i metadataene.

Foreløpig kjører det bare lokalt og har ingen utgitt versjon, så det er ingenting å laste ned her.
Skrevet i Go; bildene genereres av FLUX.1-schnell på min egen maskin.
