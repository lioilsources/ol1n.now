---
tagline: Shorts verticals a partir de plantilles de mems, amb els teus propis personatges
visuals: {n} retrats de la biblioteca de personatges: quatre personatges, cadascun amb dotze emocions.
---
Una eina de línia d'ordres que converteix una plantilla de mem en un short vertical de sis a quinze segons. El mem original només serveix de model per a l'estructura de l'acudit: mai no arriba al resultat. En lloc seu hi actuen personatges propis.

Ni un prompt ni una llavor mantenen coherent un personatge, així que les imatges no es generen per a cada short. Es creen una sola vegada com una biblioteca aprovada de *personatge × emoció*: Kiro, Mei, Taro i Yuki, cadascun amb dotze expressions, de la presumpció a l'esgotament.

Després el short passa per la cadena `classify → storyboard → generate → animate → compose → qa`. Cada pas es desa per separat i s'indexa amb un hash de les seves opcions, de manera que tornar-lo a executar no costa res i un canvi de text només recalcula el que cal. L'acudit l'escriu un LLM o l'introdueixes tu a mà; els subtítols es renderitzen directament en Go.

El resultat és 1080×1920, H.264, 30 fps, sonoritat de −14 LUFS i la marca «AI generated» a la imatge i a les metadades.

De moment només funciona en local i no té cap versió publicada, així que aquí no hi ha res per baixar.
Escrit en Go; les imatges les genera FLUX.1-schnell a la meva pròpia màquina.
