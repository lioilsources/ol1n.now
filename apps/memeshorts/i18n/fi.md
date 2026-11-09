---
tagline: Pystysuuntaisia shortseja meemipohjista omilla hahmoilla
visuals: {n} muotokuvaa hahmokirjastosta — neljä hahmoa, kukin kahdessatoista tunnetilassa.
---
Komentorivityökalu, joka tekee meemipohjasta kuudesta viiteentoista sekuntia kestävän pystysuuntaisen shortsin. Alkuperäinen meemi toimii vain vitsin rakenteen mallina — lopputulokseen se ei päädy koskaan. Sen sijaan esiintyvät omat hahmot.

Hahmoa ei pidä yhtenäisenä prompti eikä seed, joten kuvia ei generoida jokaiselle shortsille erikseen. Ne syntyvät kerran hyväksyttynä *hahmo × tunne* -kirjastona: Kiro, Mei, Taro ja Yuki, kukin kahdellatoista ilmeellä omahyväisyydestä uupumukseen.

Sen jälkeen shortsi kulkee putken `classify → storyboard → generate → animate → compose → qa` läpi. Jokainen vaihe tallennetaan erikseen ja avaimena on sen asetusten hash, joten uusi ajo on ilmainen ja tekstin muutos laskee uudelleen vain sen, mikä on pakko. Vitsin kirjoittaa LLM tai syötät sen itse; tekstitykset renderöidään suoraan Go:lla.

Tuloksena on 1080×1920, H.264, 30 fps, äänekkyys −14 LUFS ja merkintä ”AI generated” sekä kuvassa että metatiedoissa.

Toistaiseksi se toimii vain paikallisesti eikä siitä ole julkaistua versiota, joten täällä ei ole mitään ladattavaa.
Kirjoitettu Go:lla; kuvat generoi FLUX.1-schnell omalla koneellani.
