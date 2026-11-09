---
tagline: Alquilar un piso, desde la búsqueda en el mapa hasta el alquiler pagado — para propietarios, inquilinos y el operador
---
TerraReality es una plataforma de alquiler de larga duración de pisos y habitaciones. Empieza en Praga y alrededores, pero sus datos están preparados desde el principio para otros países de Europa Central (jurisdicción del contrato, moneda, idioma). A diferencia de un portal de anuncios, no termina en el contacto: acompaña al propietario y al inquilino durante todo el alquiler — búsqueda, mensajes, solicitud, visita, contrato y firma, hasta los pagos y su seguimiento.

La plataforma tiene cuatro caras. **Quien busca** busca en el mapa o simplemente escribe lo que quiere. **El propietario o administrador** tiene un panel al estilo de una tienda online: anuncios, interesados, contratos, banco, cartera y facturación. **El inquilino** tiene su portal con el contrato, los pagos y los códigos QR. **El operador** tiene un backoffice para aprobaciones, moderación y ajustes. Además, una app móvil para iOS y Android.

Las capturas son del entorno de desarrollo con datos de prueba: los nombres son inventados, las fotos de los pisos son ilustrativas y las sugerencias de la IA se generaron en modo offline, sin modelo de lenguaje.

### Búsqueda en el mapa y por chat

El mapa va desde la región, pasando por el municipio y el distrito, hasta la calle, y en cada nivel de zoom muestra cuántas ofertas hay en cada sitio. Al lado están los filtros (tipo, precio, superficie, distribución, equipamiento, mascotas, transporte) con el número de resultados de cada opción. Quien no quiera hacer clic puede escribir, por ejemplo, «2+kk hasta 25 000 en Praga 6 con perro y balcón»: la plataforma ajusta los filtros y el encuadre del mapa a partir de la frase y muestra cómo la ha entendido. Las búsquedas se pueden guardar y las nuevas ofertas llegan con un aviso.

### Anuncios con ayuda de la IA — siempre con el visto bueno de una persona

El propietario introduce la dirección del registro oficial de direcciones (RÚIAN), los parámetros, las fotos y el texto. La IA puede proponer parámetros a partir de la descripción y las fotos (ascensor, balcón, tipo de edificio…) y redactar el texto del anuncio en checo y en inglés. Pero una propuesta nunca se guarda sola: el propietario ve lo que sugiere la IA, marca lo que es correcto y solo entonces se aplica. Antes de publicarse, una persona aprueba el anuncio en el backoffice. Para cada anuncio, el propietario puede añadir preguntas para los interesados (por ejemplo, «¿Tienes mascota?»).

### Mensajes

El interesado escribe al propietario directamente desde el anuncio; los mensajes llegan en tiempo real, con confirmación de lectura y archivos adjuntos. Hasta la firma del contrato, la plataforma oculta los números de teléfono y los correos del texto para que ni el acuerdo ni los pagos salgan de ella — y el interesado ve el aviso «no pagues nada antes de la visita». Quien no está conectado recibe una notificación push o un correo. Una conversación sospechosa se puede denunciar con un clic.

### Solicitudes, pisos compartidos y elección del inquilino

El interesado presenta la solicitud solo o en nombre de un grupo de compañeros de piso: crea un grupo, invita a los demás por correo, se ponen de acuerdo en el chat del grupo y la solicitud llega al propietario solo cuando todos están de acuerdo. El propietario ve un resumen de los interesados con sus respuestas a sus preguntas, el estado de verificación y un breve resumen de la IA (de nuevo, solo una propuesta). La plataforma no recoge datos protegidos como la edad, el sexo o la nacionalidad. Cuando el propietario elige a alguien, los demás reciben una respuesta automática educada.

### Visitas

El propietario publica horarios de visita con aforo y una nota («nos vemos delante del portal»); los interesados los reservan, cambian o cancelan directamente en la solicitud y reciben un recordatorio.

### Contrato digital y firma

El contrato se crea a partir de una plantilla (piso de duración determinada o indefinida, alquiler conjunto de compañeros de piso, habitación) y se rellena con los datos de la oferta. Del formulario sale un PDF, ambas partes lo firman online y cada evento — propuesta, firma, pago, rescisión — se registra en una cadena de auditoría en la que cada registro está enlazado al anterior mediante un hash. Así, una modificación posterior del historial no se puede ocultar; la página del contrato muestra que la cadena está intacta. La plataforma también gestiona la rescisión y la liquidación de la fianza.

Las plantillas llevan la marca de agua BORRADOR hasta que las revise un abogado, y la firma es por ahora una firma electrónica simple con registro de pruebas (hora, dirección IP, huella del documento). La firma mediante Bank iD está preparada como siguiente paso y espera el contrato con Bank iD.

### Pagos — el dinero va directamente al propietario

Del contrato sale un calendario de pagos: fianza, alquiler y anticipos de gastos, repartidos por cuotas entre compañeros de piso. El inquilino paga con un código QR en su app bancaria o con tarjeta mediante un enlace de Revolut Business que lleva a la cuenta de comerciante propia del propietario. El propietario puede conectar su cuenta bancaria (solo lectura) y los pagos entrantes se concilian solos según el símbolo variable, el símbolo específico y el importe; lo que no cuadra queda como propuesta para conciliar a mano. Tras el vencimiento llegan recordatorios y, a los siete días, una escalada.

**TerraReality nunca guarda ni reenvía el dinero de los inquilinos.** Sin depósito en garantía, sin criptomonedas: los pagos van directamente de la cuenta del inquilino a la del propietario.

### Traspaso de alquileres existentes

El propietario que ya tiene pisos alquilados con un contrato en papel no tiene que volver a firmar nada. Incorpora el alquiler como firmado fuera de la plataforma, sube el contrato escaneado y los pagos se siguen desde la fecha del traspaso: la deuda anterior pasa al saldo inicial, la fianza depositada queda registrada y se mantiene también el símbolo variable de siempre. Los inquilinos no reciben nada hasta que el propietario los invita al portal del inquilino. Se pueden importar varios alquileres a la vez desde una hoja de cálculo.

### Cartera en varias ciudades y riesgo de los alquileres

Para propietarios y administradores con varios pisos: resumen de todos los alquileres por municipio, lo que se espera cobrar cada mes y lo que realmente ha llegado, la tendencia de doce meses, la lista de lo que requiere atención (deuda, escalada, rescisión, unidad vacía), la concentración de ingresos y un rent roll exportable a CSV y Excel. Cada alquiler tiene una puntuación de riesgo calculada a partir de reglas (deuda, pagos antiguos pendientes, cobertura de la fianza, fin de contrato próximo…). La puntuación es solo informativa y nunca decide sobre nadie; el inquilino ve de qué se calcula. Las reglas (recordatorios, escaladas, fianza, plazo de preaviso) se pueden configurar por municipio, y un inversor puede tener acceso de solo lectura en el que los inquilinos aparecen solo con sus iniciales.

### Promoción y facturación

El propietario puede destacar o resaltar su anuncio. Paga con tarjeta a través de Stripe, la factura con IVA se emite sola, llega por correo y se puede descargar en el panel. Los anuncios destacados aparecen marcados como «Destacado» en los resultados.

### Backoffice, moderación y DSA

El operador tiene un resumen de métricas, una cola de anuncios por aprobar, la moderación de conversaciones y anuncios denunciados, una cola de propuestas de la IA para nuevos parámetros, la tarifa de promoción, las plantillas de contratos, interruptores de funciones y un registro de auditoría. Cualquiera puede denunciar un anuncio, incluso sin cuenta (según el Reglamento europeo de Servicios Digitales, DSA); cada caso lo decide una persona y la justificación se envía por correo tanto a quien denuncia como al anunciante. Iniciar sesión «como el usuario» durante el soporte exige indicar un motivo y queda registrado en la auditoría.

### App móvil

La app Flutter para iOS y Android cubre lo que el inquilino necesita en el móvil: búsqueda con lista y mapa, detalle del anuncio con mensaje, solicitud y reserva de visita, mis visitas, el alquiler con pago por QR y enlace de Revolut, y apertura directa desde las notificaciones push. Es una primera versión; las compilaciones para testers (TestFlight y el canal interno de Google Play) llegarán con la preparación de las pruebas.

### Operación

El entorno de producción está preparado para Hetzner en la UE: servidores de aplicación y de base de datos separados en una red privada, HTTPS automático, copias de seguridad de la base de datos con recuperación a cualquier momento (como máximo una hora de datos perdidos) y una prueba de restauración verificada, monitorización con alertas (disponibilidad del 99,9 %, respuesta de la búsqueda por debajo de 300 ms, estado de las copias) y notificación de errores. La IA funciona en un servidor GPU propio; si la IA no está disponible, todo funciona igualmente sin ella.

### Estado y pruebas

**El MVP de toda la plataforma está terminado.** Todos los módulos anteriores están programados y cubiertos por pruebas automáticas — unitarias, de integración y end-to-end, que recorren en el navegador escenarios completos (anuncio, mensajes, solicitud en grupo, contrato con firma y pago conciliado, cartera, promoción con factura, denuncia según la DSA, backoffice). También se ha verificado la restauración de la base de datos desde una copia de seguridad.

También están listas las mejoras de seguridad y operación recomendadas en la revisión de código y las notificaciones push para solicitudes, contratos y pagos. Una beta cerrada funciona en un servidor propio con anuncios de muestra para Praga y alrededores, marcados como tales. El despliegue en producción en Hetzner espera las cuentas y los accesos (ver abajo).

Las pruebas con personas reales se hacen en cinco fases. Cada una termina en una puerta en la que se decide en conjunto si se sigue adelante:

1. **T0 — preparación (2 semanas).** Entorno de pruebas en Hetzner con la franja «Entorno de pruebas», socios en modo sandbox (Stripe, Revolut, Bank iD), analítica de producto sin datos personales, un botón «Informar de un problema / idea» en la web y en la app, registro solo por invitación, datos de prueba y compilaciones de la app para testers.
2. **T1 — pruebas internas (1 semana).** 5–8 personas del equipo y su entorno recorren todos los escenarios como propietario y como buscador, en varios dispositivos, incluido un simulacro de incidente y una restauración desde copia de seguridad.
3. **T2 — pruebas de usabilidad moderadas (2 semanas).** 12 participantes: propietarios particulares, un administrador con pisos en varias ciudades, buscadores checos y extranjeros y una pareja de compañeros de piso. Se mide el éxito de las tareas y la satisfacción (SUS ≥ 70).
4. **T3 — piloto cerrado en Praga (6 semanas).** 20 propietarios piloto con onboarding personal y 50–100 buscadores, solo por invitación. Se observa si los anuncios reciben solicitudes, lo rápido que responden los propietarios, cuántos contratos se cierran de forma digital y la fiabilidad del conjunto; una versión por semana.
5. **T4 — beta abierta en Praga (4 semanas).** Registro abierto a todos con la etiqueta beta, sin campaña de pago — y al final, la decisión sobre el lanzamiento público.

En total, unas 15 semanas desde el inicio de la preparación.

**Lo que necesitamos de vosotros:**

- cuentas y accesos para la operación: Hetzner, dominio y DNS, cuentas de desarrollador de Apple y Google, Stripe, Revolut Business, Bank iD y el proveedor de conexión bancaria;
- reclutamiento de testers, 20 propietarios piloto y buscadores, recompensas para los participantes;
- revisión legal de las condiciones de uso, la política de privacidad y las plantillas de contratos, los consentimientos de los testers y la decisión de si en el piloto se firman contratos reales directamente en la plataforma;
- una prueba de penetración antes del piloto, la conducción de las entrevistas en T2 y la primera línea de soporte durante el piloto;
- la decisión en cada puerta entre fases.
