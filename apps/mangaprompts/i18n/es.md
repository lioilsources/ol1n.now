---
tagline: Bot de Telegram para manga con bloques, restyle de fotos, nuevo peinado y fotos animadas
---
TsumikiMangaBot (antes MangaPrompts) arma prompts para generar imágenes con IA
al estilo LEGO: eliges bloques en unos veinticinco ejes (medio, tradición
artística, estilo de cabeza, estilo manga, época histórica) y con ellos sale
un prompt completo. Y no se queda ahí: manda el prompt directamente a generar
y te devuelve la imagen.

### Más tarjetas

Además del constructor, la Mini App tiene un selector de tarjetas:

- **Restyle de foto**: subes una foto, eliges un estilo y obtienes a la misma
  persona en la misma pose con ese estilo. Con el interruptor foto /
  ilustración eliges el medio; hay más de noventa estilos en seis grupos
  (populares, pintores, tradiciones artísticas por región).
- **Prueba un peinado**: redibuja solo el pelo en un retrato, si quieres
  también con un color nuevo. Cada peinado tiene una vista previa en la misma
  cara, así comparas solo el pelo.
- **Da vida a una foto**: con una foto y una escena elegida se crea un vídeo
  corto que llega al chat.

### Cómo empezar

No hay nada que instalar, funciona como Telegram Mini App:

1. En Telegram abre [@tsumikimanga_bot](https://t.me/tsumikimanga_bot), o
   búscalo con el nombre **Tsumiki**.
2. Escribe `/start`. El bot responde con el botón **🎨 Open Tsumiki**.
3. Púlsalo, junta los bloques y dale a generar.

La imagen terminada aparece directamente en la app **y además llega al chat**,
así la tienes en el historial y puedes reenviarla al momento. Si te saltas
`/start` y abres la app directamente, la generación también funciona, pero la
imagen no te llegará al chat, porque Telegram no deja que un bot escriba
primero.

### Cuánto cuesta

**Tres generaciones gratis cada 24 horas.** Después, 1 crédito = 1 imagen, y
los créditos se compran con **Telegram Stars** dentro de la app: 10 créditos
por 25 ⭐, 50 por 100 ⭐, 250 por 400 ⭐. El restyle y el peinado cuestan lo
mismo que una imagen; el peinado, solo cuando el análisis acepta la foto. La
animación tiene su propio contador: una al día gratis, las demás por 10 ⭐. Si
una generación falla, el crédito se devuelve. Para problemas con el pago está
el comando `/paysupport`; los reembolsos los gestiono en 48 horas.

### Qué hay por dentro

La Mini App es Flutter web en Cloudflare Pages. Desde ahí el prompt viaja a un
backend (FastAPI + aiogram) que corre en un NAS de casa y de ahí a **ComfyUI**:
según la plantilla elegida se escoge el workflow (FLUX, Pony, Juggernaut XL
Lightning o WAI Illustrious). El restyle mantiene la cara con PuLID o
InstantID y la pose con depth ControlNet, y la animación funciona con Wan 2.2.
Los créditos y los pagos se guardan en SQLite en el backend.

### Apps nativas

Las builds de abajo para macOS, Windows, Linux, Android e iOS son el
constructor de prompts completo y además tienen el modo **Repose**, que no
existe en Telegram: subes una cara, eliges una pose y la app genera una imagen
de esa persona en esa pose con una cara fiel (InstantID + depth ControlNet +
hi-res + FaceDetailer). Eso sí, Repose se conecta directamente a ComfyUI, así
que la app nativa tiene que poder llegar a él.

Hecho con Flutter.
