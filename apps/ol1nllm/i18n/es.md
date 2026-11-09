---
tagline: Chat de IA con roles, Bibliotecario y Abogado, un estudio de imágenes, vídeo, cuentos, música y voz
---
Ol1nLLM es una sola app sobre tu propio servidor: conversa, busca en una biblioteca y en las leyes, dibuja, convierte una imagen en vídeo, rueda un cuento, compone música y lee las respuestas con una voz grabada.
Tienes una guía detallada con capturas en la página [Qué sabe hacer la app](ol1nllm-features.html).

### Chat

La conversación empieza eligiendo un **rol** — diez personalidades, desde un niño de cinco años hasta un abuelo, y cuatro asistentes con sus propios datos. La respuesta se escribe sobre la marcha, la conversación se puede **ramificar** y el rol se puede cambiar a mitad.

- **Bibliotecario** responde a partir de un corpus de filosofía y textos sagrados en sus lenguas originales y muestra los pasajes de los que ha sacado la respuesta, con traducción al checo.
- **Abogado** responde a partir de las leyes checas vigentes y cita los artículos.
- **Abogado – contratos** redacta un contrato a partir de una plantilla: pregunta tarjeta por tarjeta y vigila los límites legales.
- **Leads** busca empresas e instituciones en el Registro de Contratos checo.

### Image Studio

La imagen se crea por rondas que forman un árbol: texto → imagen, y luego retoques de la variante elegida. Diecinueve modelos (FLUX, SDXL, líneas anime), más de trescientos **estilos** artísticos (culturas y épocas, artistas, medios), plantillas de **poses**, **LoRA** del servidor y un prompt negativo escrito en mayúsculas.

- **Mantener pose** y **Mantener cara** — un personaje nuevo en la postura de la referencia y, si quieres, también con su cara.
- **Mapa de estilos** — cientos de imágenes del mismo tema ordenadas por parecido; deslizas el dedo por el mosaico y el estilo cambia como una animación, y se usa el que elijas.
- **Inpaint** — pintas una zona y describes lo que debe haber en ella.
- **Peluquero** — un peinado o color de pelo nuevo sin dibujar ninguna máscara.
- **Animar** — un vídeo corto a partir de una imagen: bailes y gestos del servidor, o tu propia descripción del movimiento.
- **3D** — un modelo para imprimir (STL) o una figura bailarina con esqueleto.

### Story Studio

Eliges un cuento entre diez guiones, repartes los papeles con tus propias imágenes y el servidor lo convierte en un vídeo animado de un minuto con narrador, música y subtítulos. Puedes revisar las tomas antes de animarlas y pedir que se redibujen las que no hayan salido bien.

### Music Studio

Dale al estudio una muestra musical — de un archivo o grabada con el micrófono — y deducirá el género, el tempo y la tonalidad. **Vibe** compone una pieza nueva con el mismo espíritu, **Groove** rearregla la original en otro género.

### Voice Studio

A partir de una grabación corta — incluso de la pista de audio de un vídeo — nace tu propia **voz**. Cualquier voz se puede probar con cualquier frase y asignar a un rol del chat. El altavoz bajo la respuesta la leerá entonces con la voz de ese rol.

### Historial

Las conversaciones, sesiones, proyectos y cuentos se quedan en el móvil. Las tareas largas se ejecutan en el servidor: puedes cerrar la app y, al volver, se reconecta a ellas sola.

Hecha con Flutter, funciona en móvil y escritorio. La app es un cliente de tu propio servidor de modelos; sin él no genera nada.
