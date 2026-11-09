---
tagline: Reproductor bit-perfect para DAC USB — archivo, RAM, ASIO y nada entre medias
---
Elfton Player es un reproductor de música local para Windows 11 con una sola
prioridad: que al DAC USB lleguen exactamente las muestras que hay en el archivo.
La ruta de la señal es **archivo → decodificador → RAM → ASIO → DAC**. Sin control de
volumen, sin ecualizador, sin remuestreo, sin streaming. El volumen lo ajustas en el
conversor o en el amplificador.

### Qué hace

- **Salida bit-perfect** por ASIO, o WASAPI en modo exclusivo. Junto a la pista se ve
  toda la cadena (`FLAC 24/96k → 32-bit · bit-perfect`), y el punto verde se apaga en
  cuanto algo interviene en la señal.
- **Reproducción desde memoria.** La pista entera se decodifica en la RAM, así que el
  disco no trabaja mientras suena; la siguiente pista se carga por adelantado y enlaza
  **sin pausas**.
- **Bucle A-B con precisión de muestra** y ajuste de los puntos al milisegundo — para
  practicar un pasaje o comparar dos momentos de una grabación.
- **Biblioteca por carpetas**: el árbol de directorios tal como lo tienes en el disco,
  carátulas, búsqueda, cola, favoritos, historial, listas M3U, álbumes en un solo archivo
  con CUE, letras sincronizadas desde LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg y DSD** (nativo, DoP o convertido a PCM).
- **Mono (L+R)/2** como única intervención en la señal, siempre señalado de forma visible.
- **Los botones I y D** hacen sonar solo un altavoz y silencian el otro. Con el mono
  activado, ambos suenan igual, así que desde el sillón puedes comparar al instante con el
  móvil el lado izquierdo y el derecho de tu equipo (cables, componentes); sin mono suena
  solo el canal izquierdo o solo el derecho de la grabación.
- **Una barra de progreso dibujada con el volumen de la pista** a todo lo ancho de la
  ventana: una introducción silenciosa se ve y se salta con un clic.
- **Un corazón en cada pista** y un filtro «solo favoritos» dentro del propio álbum.
- **Tres temas**: oscuro, negro y claro.
- **Mando en el móvil**: Elfton Remote se empareja con un código QR a través de tu red
  doméstica y hace lo mismo que la ventana del ordenador.

### Modo de reproducción

Si quieres, durante la reproducción cambia el plan de energía, desactiva la suspensión
selectiva de USB y el aparcamiento de núcleos, y al terminar lo deja todo como estaba.
Siendo sinceros: con un DAC USB asíncrono el reloj lo lleva el conversor, así que estos
ajustes no tienen un efecto medible en el sonido. Son opcionales, cada uno queda
registrado en el log y ninguno es necesario.

Lo mismo vale para los «rituales» tomados del reproductor Bug head, que están en los
ajustes y vienen desactivados por defecto: bloquear la música en la RAM, una pausa tras
cargar la pista y lanzar tu propio programa auxiliar (por ejemplo, MinorityClean) junto
con el reproductor. MinorityClean no está incluido.

### Estado

**Versión 0.2, prelanzamiento.** La primera versión funcionó en Windows 11 con un
oyente a través de ASIO (Behringer UMC204HD y SMSL D200): el WAV 24/192 salió como ASIO
de 32 bits sin conversión y sin cortes, y el control desde el móvil funciona. Es lo que
informa el propio reproductor sobre la ruta de la señal; nadie ha capturado todavía la
salida ni la ha comparado bit a bit. Las novedades de la 0.2 están cubiertas por tests,
pero aún no se han ejecutado en Windows. Las capturas de pantalla son de la primera
versión, de una compilación de desarrollo para macOS con una biblioteca de ejemplo — la
barra de volumen y el selector I/D todavía no aparecen.

La versión para Windows es un zip: descomprímelo y ejecuta `Elfton Player.exe`, o lanza
el `install.ps1` incluido, que añade un acceso directo al menú Inicio. No se instala nada
más. Para ASIO tiene que estar instalado el driver del conversor; sin él, el reproductor
ofrece WASAPI. El mando para el móvil de momento solo existe para Android (APK); la
versión para iOS está terminada en el código, pero no tiene compilación pública.

El motor está escrito en Go sobre FFmpeg (LGPL, enlazado dinámicamente), y la interfaz en
Flutter.
