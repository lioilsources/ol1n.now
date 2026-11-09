---
tagline: Una fábrica de accesorios para Roblox: del prompt al modelo 3D sin modelar a mano
---
UGC Factory fabrica accesorios para avatares del Roblox Marketplace. Escribes lo que quieres
—*«un casco samurái ornamentado con detalles de neón»*— y por el otro lado sale un
modelo 3D texturizado listo para subir. Sin modelado a mano.

## Cómo funciona

El trabajo se reparte entre tres máquinas. Un **DGX Spark** con GPU dibuja el concepto (Illustrious para objetos,
Juggernaut XL para lo que se lleva puesto; se elige según la categoría), quita el fondo y convierte la imagen
en un modelo 3D. Un **NAS** guarda la cola, el catálogo y un Blender headless que ajusta el modelo a los
límites de Roblox: menos de 4000 triángulos, UV, textura horneada y el punto de anclaje
correcto. El **móvil** sirve para clasificar.

La vía rápida (SF3D) construye un modelo en segundo y medio, así que se puede probar a lo
grande. El TRELLIS, más lento y fino, solo se lanza al empaquetar una pieza que ha pasado
por tu ojo: el cálculo caro se gasta solo en lo que de verdad quieres vender.
Las piezas ornamentadas como tiaras y cascos van directamente por TRELLIS.

## La app

El cliente móvil es el núcleo de todo. **Composer** lanza un lote: categoría × estilo ×
variantes, hasta cincuenta piezas de una vez. **Cola** muestra en directo qué se está fabricando y
en qué fase. **Triage** es lo principal: una pieza en pantalla, un conmutador entre el
concepto y el modelo 3D giratorio, tres botones: aprobar, rechazar, reintentar
con otra semilla. Se recorre más rápido de lo que se lee. **Review** muestra la
pieza convertida: número de triángulos frente al límite, UV, si la malla está cerrada,
la textura y el veredicto PASS, WARN o FAIL. Desde ahí la pieza se puede volver a convertir o
empaquetar para subirla. Volver a empaquetar no sobrescribe el nombre, las descripciones, el precio ni las etiquetas
que rellenaste en la app.

Funciona en Android, iOS, macOS y en el navegador. El servidor la sirve desde su propio
origen, así que la versión web siempre está al día.

## Decorado todo alrededor

El modelo sale de una sola imagen, así que nadie ha visto la parte de atrás y queda
plana y sin adornos. En las piezas que son realmente de simetría radial (una tarta,
una corona), se copia el sector frontal todo alrededor y se suelda la costura. Se activa
en Composer o en una pieza terminada al volver a convertirla, sin generar nada más.
No sirve para piezas planas: se deshacen en un mosaico de sectores.

## Categorías

Lo que mejor sale son cosas que también existen **por sí solas** en los datos de entrenamiento:
mochilas, bolsos, tiaras, sombreros, tartas, máscaras, escudos, anillos.
Tocados con plumas y flores, bolsos acolchados con monograma, coronas
con perlas y ágatas, máscaras inspiradas en cinco culturas, colas peludas de zorro y
mapache, mascotas kawaii para el hombro.

Las imágenes quedan bien casi siempre; con los modelos no ocurre ni de lejos, y lo que decide
es el modelo. Las formas compactas con volumen (mochila, tarta, anillo) aguantan bien. Las estructuras
caladas y finas se rompen en la vía rápida, así que las tiaras van directamente por la vía lenta.
Y una entrada dibujada tiene pocas sombras, así que sale relieve en vez de volumen: los animalitos
pastel necesitan un prompt que fuerce un sombreado suave.

La ropa y el pelo son un hueso duro: el modelo solo los conoce puestos en una figura, así que con el prompt
*«vestido de dragón»* dibuja un dragón. Ayuda cambiar a un modelo fotorrealista y
formularlo como foto de producto: *«vestido sobre un maniquí invisible»*.

Además, Roblox trata vestidos, zapatos y guantes como ropa por capas con malla de jaula,
algo que la fábrica aún no sabe hacer. Para dedos y manos Roblox no tiene ningún punto de anclaje.
