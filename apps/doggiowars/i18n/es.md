---
tagline: Combates aéreos vóxel entre islas flotantes (juego independiente para Luanti)
---
Eres el caza. No el piloto dentro del caza: la máquina misma. En DoggioWars no
se camina, no se pica ni se construye: vuelas desde el primer segundo.

Bajo tus alas se extiende un cielo lleno de **islas flotantes** en doce
biomas: volcanes con lava desbordando el cráter, mesetas glaciares con
carámbanos, lagunas de atolón, setas gigantes, torres de cristal
resplandecientes. Se generan a partir de un número llamado semilla, así que no
hay dos mundos iguales, y las islas son **destructibles**: tus disparos les
arrancan trozos que luego caen al vacío.

### Quién vuela por ahí

El cielo no está vacío. Alrededor de sus islas giran **dragones serpiente** de
cinco elementos: de fuego sobre volcanes y ceniza, de hielo sobre glaciares, de
agua sobre atolones, de barro sobre pantanos y eléctricos sobre cristales. Por
los desiertos nadan **gusanos de arena** como delfines, sobre las islas yermas
vigila un **guardián de piedra**, sobre las verdes flotan **medusas**
luminosas y, con un poco de suerte, te cruzarás con una **ballena celeste**.
Por ahora todos son pacíficos: no te hacen daño y tú a ellos tampoco. La misma
semilla da la misma fauna.

La tecla **Z** o el comando `/map` abre un mapa del mundo a pantalla completa:
islas coloreadas por bioma, puntos para las criaturas y tu nave con su rumbo.

### Dos máquinas en una

Se cambia con el comando `/mode` y vuelan de forma totalmente distinta.

El **submarino** es el modo por defecto y perdona los errores. Se queda
suspendido en el sitio: si sueltas los controles, se detiene suavemente, así
que puedes mirar una isla con calma o maniobrar entre rocas milímetro a
milímetro. También sabe desplazarse de lado sin cambiar el rumbo.

El **caza** nunca se detiene. Mantiene la velocidad que le marques y gira
**alabeando**: el stick izquierdo lo inclina sobre un ala y el morro gira solo,
con más ganas cuanto más inclinado vas. Un picado pronunciado lo lanza por
encima de su velocidad máxima y subir le quita velocidad, así que siempre estás
cambiando altura por velocidad. Hace tonel, looping y giro Immelmann, y pasar
rozando una roca carga el boost, así que arriesgar compensa.

### A la caza del conejo dorado

El comando `/race` inicia una carrera de galgos: un conejo dorado cruza el
cielo a toda velocidad, hace los mismos trucos que tú, se cuela por túneles
excavados a través de las islas y no espera. O lo sigues durante todo el
recorrido, o no.

### Controles

El ratón y el teclado funcionan, pero el juego está hecho para **mando**: Xbox
360 y PS4 DualShock mediante el joystick nativo de Luanti, sin mapeador
externo. El stick izquierdo pilota el avión y el derecho apunta el arma, sin
importar hacia dónde vueles. El alabeo y el cabeceo se ven en un nivel de
burbuja en el HUD, porque Luanti no sabe inclinar el horizonte.

### Chat de Twitch

El juego incluye una conexión opcional con Twitch a través del servicio
[chatbridge](https://github.com/lioilsources/chatbridge): los espectadores
invocan criaturas en el mundo del streamer con comandos de chat (`!drak`,
`!velryba`, `!meduzy`…). El chat solo puede añadir criaturas que limpian lo que
dejan, nunca toca el terreno, y `/chatoff` lo apaga al instante. Sin ajustes en
`minetest.conf`, la conexión está desactivada.

### Instalación

Necesitas **Luanti 5.12 o posterior** y **nada más**: desde la versión 2.0,
DoggioWars es un juego independiente, no un mod, así que ya no hace falta
Minetest Game.

Descomprime el archivo en la carpeta `games/` de tu directorio de datos de
Luanti. En Windows es `%APPDATA%\Minetest\games\`, y en la versión zip
portátil, `games\` directamente en la carpeta del juego. En macOS
`~/Library/Application Support/minetest/games/`, en Linux `~/.minetest/games/`.

La carpeta descomprimida debe llamarse **`doggiowars_game`**. Luego abre
Luanti, elige DoggioWars en la barra inferior del menú principal y pulsa
**New**.

Si aún tienes una versión antigua instalada como **mod** en la carpeta `mods/`,
bórrala: desde la versión 2.0 es un juego y tener las dos a la vez no tiene
sentido.
