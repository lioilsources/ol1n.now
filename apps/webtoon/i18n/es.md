---
tagline: Cómics verticales incluso sin internet — historias gratis, librojuegos donde decides tú y viñetas que cobran vida
visuals: {n} imágenes — viñetas de cinco historias infantiles, una comparación de dos estilos y character sheets.
---
Toonfork (nombre provisional Webtoon) es un lector de cómics verticales que funciona también sin internet. Nada más instalarlo trae 15 historias gratis, sin cuenta y sin registro. Las historias se crean en un servidor GPU propio: un modelo de lenguaje escribe el guion, un modelo de imagen dibuja las viñetas y los bocadillos con el texto los añade solo el lector, así que el texto se puede corregir sin regenerar la imagen.

Las tiras terminadas de cinco historias infantiles están en la subpágina Strips, y el bucle de juego con una elección al final del episodio, en la subpágina Gamebook.

### Lector

Una historia es una sola tira larga de viñetas con bocadillos, pensamientos, gritos y efectos de sonido que deslizas con el pulgar de arriba abajo. Algunas viñetas cobran vida en bucles cortos: lluvia en la ventana, luz sobre el agua, viento en el pelo. Al final del episodio ves qué se eligió y el botón **Siguiente episodio**. Tras el último episodio llega **Fin** y una sugerencia de la siguiente historia.

### Librojuegos

En un librojuego la trama la decides tú. Al final de cada parte eliges cómo sigue y la historia se ramifica. La app recuerda dónde estás, por dónde has ido y qué finales has encontrado; el mapa del recorrido solo muestra lo que ya has visitado. Puedes empezar de nuevo o volver un paso atrás. Los librojuegos son gratis: para niños **Sara and the Black Crown**, para adultos, por ejemplo, el drama de cámara en una consulta de psicología **Learning to Be Silent**, **Metal Sky Above Us** o **The Blooming Meadow That Turned Grey**. Los dramas tocan temas difíciles y el perfil infantil los oculta.

En beta hay un editor de ramas: a cualquier elección le añades tu propia continuación, la montas con las imágenes del librojuego y escribes los bocadillos. La rama la juegas al momento y puedes enviársela al autor desde Compartir, sin ningún servidor.

### Paquetes

Los paquetes opcionales añaden hasta 50 historias: **Romance** (historias de amor ligeras para adultos, sin escenas explícitas), **Infantil** y **Superhéroes**. El paquete se descarga tras la compra y se lee sin conexión. Una sola compra lo desbloquea todo, incluidos los paquetes que salgan más adelante.

### Perfil y control parental

Al abrirla por primera vez eliges el perfil **Niños** o **Adultos**. El perfil infantil oculta el romance y los dramas en la biblioteca y en la tienda. Cada compra y cada cambio a Adultos está protegido por un control parental con una pregunta de la tabla de multiplicar.

### 12 idiomas

Las historias, los librojuegos y los textos del lector están en 12 idiomas: checo, inglés, alemán, francés, italiano, polaco, portugués de Brasil, japonés, coreano, vietnamita, ruso y ucraniano. El idioma de los bocadillos se cambia en Ajustes.

### Privacidad

Sin cuenta, sin anuncios, sin rastreo. Toonfork no recoge datos personales; lo que has comprado lo recuerda el dispositivo y las compras se restauran en Ajustes.

## Studio: así nacen las historias

La otra cara de la misma app es el Studio para autores. El autor construye un mundo: lore, personajes, lugares y un canon por el que debe pasar cada historia. En el Studio también se puede jugar de forma interactiva: al final del episodio el lector elige qué hará el personaje, o lo escribe con sus propias palabras, y de la elección nace el siguiente episodio. El texto libre pasa primero por moderación; en un mundo infantil es más estricta y ante la duda prefiere rechazar. Las capturas de esta página son del Studio.

### Editor de mundos

El autor tiene en la app la pestaña **Crear**:

- **Básico:** título, sinopsis, tono, idioma, público (Para niños, Desde 13 años, Para adultos), visibilidad y un estilo artístico que vale para todo el mundo.
- **Lore y canon:** reglas del mundo, facciones, nodos canónicos en orden fijo y límites, es decir, lo que no debe ocurrir.
- **Personajes y lugares:** una descripción con tus propias palabras. A partir de ella un LLM propone tags booru fijos para el modelo de imagen. Los tags que el modelo no conoce se descartan según el vocabulario de WD14 y el autor ajusta el resto.
- **Character sheet:** cuatro variantes del personaje sobre fondo blanco. La que mejor encaja con los tags pasa a ser la imagen de referencia.
- **Resumen:** campañas, dónde se quedaron los lectores, qué opciones eligieron y hasta dónde llegaron en el canon.

### Modelos

- **Guion y moderación:** Qwen3.6-35B-A3B vía vLLM. Propone tags para personajes y lugares y escribe el storyboard de los episodios (6–8 viñetas, 2–3 opciones y un campo de texto libre). Después un validador comprueba personajes, lugares y reglas del mundo.
- **Viñetas:** SDXL vía ComfyUI. El predeterminado es NoobAI-XL eps 1.1, el segundo estilo es Hassaku XL (Illustrious) 3.4. Solo estos modelos dibujan personajes humanos.
- **Viñetas vivas:** Wan 2.2 convierte una viñeta terminada en un bucle de 1–3 s, como mucho dos viñetas animadas por episodio.
- **Control de contenido:** el tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Revisa cada viñeta y, según el público, la descarta y la vuelve a dibujar con una nueva seed. Para niños rechaza además la ropa ceñida y reveladora. El mismo tagger mide si el personaje de la viñeta se corresponde con su diseño.

La identidad del personaje la sostienen solo los tags. IP-Adapter está preparado, pero en la primera medición más bien estropeaba la imagen. El modelo no mantiene a dos personajes humanos en un mismo plano: les intercambia el pelo y la ropa. Por eso las historias infantiles dan a cada personaje su propia viñeta.

### Estilos

Un estilo es un preset con nombre: checkpoint, sampler, número de pasos, CFG y tags estéticos. El autor lo elige una vez para todo el mundo. **clean_webtoon_noartist** tiene colores planos y línea limpia; **hassaku_soft**, sombreado suave y colores pastel. En los visuales aparece el mismo episodio en ambos estilos, uno al lado del otro.

### Estado

Toonfork está en alfa: la versión para Android está en Google Play, la build para macOS se descarga desde GitHub y App Store está en preparación. El Studio solo funciona contra su propio backend (Go con una cola de tareas en Postgres) y no está disponible públicamente. Las imágenes y los textos se crean en un servidor GPU propio.

Las capturas son de la versión web del Studio con ancho de móvil contra un backend local. En ellas el episodio 2 solo tiene guion; las viñetas aún esperan a dibujarse. El código fuente está en [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
