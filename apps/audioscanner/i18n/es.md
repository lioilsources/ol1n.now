---
tagline: Un mapa acústico de tu sala con el micrófono del móvil
---
Reproduces una señal de prueba por los altavoces, recorres la sala con el móvil
y en cada punto se mide el espectro. Mientras tanto, el seguimiento AR registra
dónde estás. El resultado es un mapa de calor sobre la planta: dónde retumban
los graves, dónde desaparecen, dónde poner los altavoces y dónde al oyente.

**No sustituye a REW con un micrófono calibrado.** Es una herramienta relativa:
diferencias entre puntos de una misma sala. El SPL absoluto desde un móvil sin
calibrar no existe, y la app no lo afirma en ningún sitio.

### Medición

Sonómetro SPL y RTA en treinta y una bandas de tercio de octava de 20 Hz a
20 kHz, FFT 8192 con ventana de Hann y promediado energético. Las señales de
prueba se exportan a WAV: ruido rosa y barrido logarítmico, canal izquierdo
y derecho por separado.

El RTA tiene retención de picos, trazas de máximo y mínimo y congelación; una
captura congelada se puede guardar como punto. Puedes cargar un archivo de
calibración del micrófono (UMIK o REW) y un offset de SPL, pero nunca modifican
los datos guardados.

Mides un punto con un toque, con tres segundos de promediado, o dejas que la app
mida de forma continua cada medio metro. Con los puntos se genera un mapa de
calor IDW con un control deslizante por bandas y una recomendación del asiento
más plano.

A partir del barrido logarítmico, la deconvolución de Farina calcula la
respuesta al impulso: sonido directo, primera reflexión y respuesta en
frecuencia con fase, con ventana de gating ajustable y suavizado de 1/3 a 1/24
de octava. Además, decaimiento por octavas (EDT, T20, T30), C50 y C80, curva de
Schroeder, gráfica del impulso, ETC y espectrograma. Del mismo barrido sale
también la distorsión HD2 y HD3. Si una reflexión llega antes de que el impulso
deje de resonar, no se puede separar: la app prefiere no devolver nada antes que
marcar un lóbulo lateral como pared.

Puedes comparar dos puntos cualesquiera, incluso entre sesiones. Se exporta FRD
para REW y VituixCAD, los impulsos y la sesión completa en JSON.

### Diseño del sistema

Con LiDAR obtiene la geometría de la sala mediante RoomPlan, calcula los modos
por suma modal, hace un «subwoofer crawl» por software, encuentra por reflejo
especular los puntos de primera reflexión y comprueba los ángulos frente a
Dolby. Con todo ello puede generar la configuración para el Integra DRX-8.4,
incluidas sus quince bandas de EQ.

En la posición de escucha se mide cada canal con su propio barrido. La EQ parte
del promedio de los puntos alrededor del oyente; una banda que varía entre ellos
más de 6 dB recibe solo la mitad de la corrección. Se recorta con generosidad,
se realza apenas y por encima de la frecuencia de Schroeder no se toca nada. La
vista previa muestra el antes, el objetivo y la predicción del después, y la
curva objetivo se puede ajustar. Una segunda medición tras introducir la EQ en
el receptor muestra lo que su filtro hizo de verdad.

### Lo que la app dice claramente

Un solo micrófono no puede localizar una fuente, así que solo se guarda la
posición del móvil, nunca su orientación como dirección del sonido. Cuando el
sistema procesa la señal sin avisar —AGC, supresión de ruido, cancelación de
eco—, la capa nativa informa de lo que realmente ha permitido: una medición con
AGC no es una medición peor, es una medición del AGC. Un micrófono Bluetooth se
detecta y genera un aviso.

### Lo que falta a propósito

Reproducir la señal desde el móvil. El altavoz del móvil termina hacia los
500 Hz, es decir, por encima de cualquier modo que valga la pena buscar:
exportar un WAV a un equipo de verdad es la única opción con sentido.

RoomPlan no existe en Android. En su lugar, se encajan en una caja los planos
verticales de ARCore: ven las paredes que ha mirado la cámara, rara vez las
esquinas y nunca detrás de los muebles. Basta para identificar un modo, no para
los puntos de reflexión, y la geometría lleva consigo esa información.

Corrección de fase, EQ paramétrica y varios subwoofers. El receptor solo admite
distancia y quince bandas gráficas; para más hace falta un DSP externo y la
exportación FRD a REW.
