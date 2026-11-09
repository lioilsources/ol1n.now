---
tagline: Control horario por obra que verifica el lugar — y no guarda tu ubicación
---
Las constructoras y los equipos de servicio técnico todavía registran sus horas en papel, por WhatsApp y en Excel. El encargado no tiene forma de comprobar quién estuvo dónde, y el trabajador no tiene forma de demostrar las horas extra. PMTracker mide el tiempo en una obra concreta y sabe, en cada registro, si la persona estuvo de verdad en el lugar.

### La ubicación solo dos veces, y luego se descarta

Las coordenadas se envían **solo al iniciar y al detener** la medición. El servidor comprueba que el punto está dentro de la geovalla de la obra, guarda un único dato, «estuvo / no estuvo en el lugar», y descarta las coordenadas. Sin mapa de movimientos, sin seguimiento en segundo plano. El trabajo fuera de la geovalla se puede permitir con una excepción que queda anotada en el registro de auditoría.

### Los roles los controla la base de datos, no la app

Un miembro del equipo registra tiempo en las obras a las que está asignado. Un responsable además gestiona las obras y la asignación de personal y ve los informes. Un administrador gestiona los usuarios. Los permisos los imponen reglas directamente en la base de datos, así que ni siquiera un cliente modificado puede saltárselos.

### Estado

Es un MVP: están listos el modelo de datos, los roles, la verificación de la geovalla y las pantallas de inicio de sesión, medición, obras, asignación de personal, informes y administración. El modo sin conexión para obras sin cobertura está preparado pero aún no activado, y la app todavía no funciona en ninguna empresa. Para iniciar sesión necesitas una cuenta de tu empresa.

### Para beta testers

Por ahora la versión de prueba es solo para **Android**. Funciona con una empresa de prueba, «Stavby s.r.o.», con personas inventadas y dos obras: la reforma de unas oficinas en la plaza de Wenceslao de Praga y la climatización en la plaza de la Libertad de Brno. Los datos pueden borrarse en cualquier momento. En la app no hay registro: la cuenta te la envía quien te invitó a probarla.

**Instalación**

1. En el móvil, descarga el APK con el botón de la sección **Descargas** de arriba (o desde [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Abre el archivo descargado y permite la instalación desde orígenes desconocidos cuando Android te lo pregunte.
3. Google Play Protect puede avisar de que no conoce la app. Es porque no viene de Google Play; elige instalar de todos modos.
4. Abre **PMTracker** e inicia sesión con la cuenta que te llegó en el mensaje.

**Qué probar como miembro del equipo**

- En la pestaña **Výkaz** (Parte de horas), pulsa **Zahájit výkaz** (Iniciar parte), elige una obra y permite el acceso a la ubicación. En el lugar de la obra aparecerá bajo el tiempo un «Na místě» (En el lugar) en verde.
- Si no estás en el lugar, la app pide un motivo. No pasa nada: escribe, por ejemplo, «test» y el registro se guardará con una nota de que se hizo fuera del lugar.
- Pasado un rato, detén la medición con el botón **Ukončit výkaz** (Finalizar parte). «Dnes celkem» (Total de hoy) aumentará.
- En la pestaña **Zakázky** (Obras), abre el detalle: dirección, tamaño de la geovalla, quién está asignado y la lista de tareas.

**Qué probar como responsable**

- Además ves **Roster** (tu equipo) y **Reporty** (Informes) con el tiempo trabajado por persona y obra. En el informe solo cuentan las mediciones detenidas; el periodo se cambia arriba a la derecha.
- Para cambiar de cuenta, cierra sesión (icono arriba a la derecha en la pestaña **Výkaz**).

**Qué no esperar todavía**

- Sin internet la app no funciona; el modo sin conexión llegará más adelante.
- Una medición olvidada no se detiene sola; detenla a mano.
- Todavía no hay versión de iPhone para testers.

Envía errores o ideas a quien te invitó: qué estabas haciendo, qué pasó y con qué cuenta. Una captura de pantalla ayuda mucho.
