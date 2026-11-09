---
tagline: Remata de volea con un solo deslizamiento: dónde el empeine toca el balón, con cuánto efecto y en qué milisegundo
---
Fotball Simulator simula un único movimiento: la volea. El balón bota delante de ti, cada vez de una forma distinta, y con un solo deslizamiento del dedo lo chutas a portería. Sin equipo, sin partido, solo la pregunta de dónde y cuándo tu empeine toca el balón. Todo lo demás, el vuelo, el efecto, el bote y si acaba en gol, sale de ahí gracias a la física.

### Un gesto, cuatro decisiones

Abajo en la pantalla hay un balón grande, y un deslizamiento sobre él lo dice todo a la vez:

- **Donde pones el dedo**, ahí golpea el empeine al balón. Por debajo del centro el balón sube, por encima lo mandas contra el suelo, por un lado coge rotación.
- **La curva del deslizamiento** es el efecto. Cuanto más curves el gesto, más se desvía el balón en el aire.
- **La velocidad del deslizamiento** es la potencia del disparo.
- **El momento en que levantas el dedo** es el instante del contacto. La volea tiene una ventana: tras el bote el balón sube, se para y cae, y el momento ideal es cuando baja a la altura del empeine. El juego lo sabe de antemano, porque calcula el vuelo del balón al lanzarlo.

El desfase se mide en milisegundos. Hasta ±30 ms es PERFECT, luego GOOD, LATE y EARLY. Tarde es tarde: el empeine golpea por arriba el balón que cae, este coge efecto liftado y acaba en el suelo o se queda corto. Si no le das, chutas al aire.

### Freeze-frame y vuelo

En el instante del contacto el mundo se detiene una fracción de segundo. En el balón brilla el punto donde lo golpeó el empeine y una flecha indica hacia dónde va. Arriba aparecen la velocidad en km/h, la rotación en vueltas por segundo y la valoración del timing con el desfase exacto. Luego el balón vuela dejando una estela, así que se ve cómo se curva. El resultado es GOL, FUERA o CORTO, y al poco llega botando el siguiente balón.

Si necesitas más tiempo, activa la **cámara lenta**: al tocar la pantalla el juego se ralentiza para que puedas terminar el gesto. Pero el timing se mide en tiempo de juego, así que ralentizar no sirve para hacer trampa.

### Física

El vuelo del balón es un cálculo propio, no la física de un motor: gravedad, resistencia del aire, efecto Magnus (por eso un balón que gira se curva) y pérdida gradual de rotación. El bote en el césped le quita altura y la rotación se convierte en dirección. El contacto tiene en cuenta la velocidad a la que llegó el balón, así que un balón golpeado sin fuerza simplemente rebota en vez de quedarse flotando. Los resultados están respaldados por tests automáticos contra una implementación de referencia independiente del mismo modelo en Python.

El juego nació en Godot 4.7 y al móvil llega su reescritura en Flutter, con las mismas constantes y los mismos tests. La escena se dibuja con una proyección en perspectiva propia, sin motor 3D.

### Estado

La primera fase está terminada: un bucle jugable de saque, chut, freeze-frame, vuelo y resultado. El campo y la portería son sencillos por ahora; faltan una pierna que haga el gesto, una red que se combe con el gol y una cámara que siga al balón. Después vendrán el ajuste de las sensaciones, un mapa de calor de los tiros a puerta y estadísticas.

El APK de abajo es una versión de prueba (alfa). En iPhone, de momento solo por TestFlight para testers.
