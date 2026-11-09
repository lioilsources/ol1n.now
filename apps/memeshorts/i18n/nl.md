---
tagline: Verticale shorts uit meme-sjablonen, met je eigen personages
visuals: {n} portretten uit de personagebibliotheek — vier personages, elk in twaalf emoties.
---
Een commandoregeltool die van een meme-sjabloon een verticale short van zes tot vijftien seconden maakt. De originele meme dient alleen als blauwdruk voor de opbouw van de grap — in de output komt hij nooit terecht. In plaats daarvan spelen eigen personages.

Een prompt of seed houdt een personage niet consistent, dus de beelden worden niet per short gegenereerd. Ze worden één keer gemaakt als goedgekeurde bibliotheek *personage × emotie*: Kiro, Mei, Taro en Yuki, elk in twaalf gezichtsuitdrukkingen, van zelfvoldaanheid tot uitputting.

Daarna gaat de short door de pijplijn `classify → storyboard → generate → animate → compose → qa`. Elke stap wordt apart opgeslagen en gesleuteld op een hash van zijn opties, dus een herhaalde run is gratis en een tekstwijziging herberekent alleen wat moet. De grap schrijft een LLM, of je typt hem zelf in; de ondertitels worden direct in Go gerenderd.

De output is 1080×1920, H.264, 30 fps, luidheid −14 LUFS en het label ‘AI generated’ in beeld én in de metadata.

Voorlopig draait het alleen lokaal en is er geen uitgebrachte versie, dus hier valt niets te downloaden.
Geschreven in Go; de beelden genereert FLUX.1-schnell op mijn eigen machine.
