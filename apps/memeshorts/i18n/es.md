---
tagline: Shorts verticales a partir de plantillas de memes, con tus propios personajes
visuals: {n} retratos de la biblioteca de personajes: cuatro personajes, cada uno con doce emociones.
---
Una herramienta de línea de comandos que convierte una plantilla de meme en un short vertical de seis a quince segundos. El meme original solo sirve como guía de la estructura del chiste: nunca llega al resultado. En su lugar actúan personajes propios.

Ni un prompt ni una semilla mantienen estable a un personaje, así que las imágenes no se generan para cada short. Se crean una sola vez como una biblioteca aprobada de *personaje × emoción*: Kiro, Mei, Taro y Yuki, cada uno con doce expresiones, de la presunción al agotamiento.

Después, el short pasa por la cadena `classify → storyboard → generate → animate → compose → qa`. Cada paso se guarda por separado y se indexa con un hash de sus opciones, así que repetir una ejecución no cuesta nada y un cambio de texto solo recalcula lo imprescindible. El chiste lo escribe un LLM o lo introduces tú a mano; los subtítulos se renderizan directamente en Go.

El resultado es 1080×1920, H.264, 30 fps, sonoridad de −14 LUFS y la marca «AI generated» en la imagen y en los metadatos.

Por ahora solo funciona en local y no tiene ninguna versión publicada, así que aquí no hay nada que descargar.
Escrito en Go; las imágenes las genera FLUX.1-schnell en mi propia máquina.
