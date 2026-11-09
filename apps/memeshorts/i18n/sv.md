---
tagline: Vertikala shorts från meme-mallar med dina egna figurer
visuals: {n} porträtt ur figurbiblioteket — fyra figurer, var och en i tolv känslor.
---
Ett kommandoradsverktyg som gör om en meme-mall till en vertikal short på sex till femton sekunder. Originalmemen fungerar bara som förlaga för skämtets uppbyggnad — den hamnar aldrig i resultatet. I stället spelar egna figurer.

Varken en prompt eller en seed kan hålla en figur konsekvent, så bilderna genereras inte för varje short. De skapas en gång som ett godkänt bibliotek av *figur × känsla*: Kiro, Mei, Taro och Yuki, var och en med tolv ansiktsuttryck från självbelåtenhet till utmattning.

Sedan går shorten genom pipelinen `classify → storyboard → generate → animate → compose → qa`. Varje steg sparas separat och nycklas med en hash av sina inställningar, så en ny körning är gratis och en textändring räknar bara om det som måste. Skämtet skrivs av en LLM eller så skriver du in det själv; undertexterna renderas direkt i Go.

Resultatet är 1080×1920, H.264, 30 fps, ljudstyrka −14 LUFS och märkningen ”AI generated” både i bilden och i metadata.

Än så länge körs det bara lokalt och har ingen släppt version, så det finns inget att ladda ner här.
Skrivet i Go; bilderna genereras av FLUX.1-schnell på min egen maskin.
