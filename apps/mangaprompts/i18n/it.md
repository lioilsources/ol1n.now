---
tagline: Bot Telegram per manga a blocchi, restyle delle foto, nuova acconciatura e foto animate
---
TsumikiMangaBot (prima MangaPrompts) compone prompt per la generazione di
immagini con l'IA in stile LEGO: scegli dei blocchi su circa venticinque assi
(medium, tradizione artistica, stile della testa, stile manga, periodo storico)
e da questi nasce un prompt completo. E non si ferma lì: manda subito il
prompt in generazione e ti rimanda l'immagine.

### Altre schede

Oltre al compositore, la Mini App ha un selettore di schede:

- **Restyle foto** — carichi una foto, scegli uno stile e ottieni la stessa
  persona nella stessa posa in quello stile. Con l'interruttore foto /
  illustrazione scegli il medium; gli stili sono più di novanta in sei gruppi
  (popolari, pittori, tradizioni artistiche per regione).
- **Prova un taglio** — ridisegna solo i capelli in un ritratto, se vuoi
  anche con un colore nuovo. Ogni acconciatura ha un'anteprima sullo stesso
  viso, così confronti solo i capelli.
- **Anima la foto** — da una foto e da una scena scelta nasce un breve video
  che arriva in chat.

### Come iniziare

Non c'è niente da installare, funziona come Telegram Mini App:

1. In Telegram apri [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) —
   oppure cercalo con il nome **Tsumiki**.
2. Scrivi `/start`. Il bot risponde con il pulsante **🎨 Open Tsumiki**.
3. Toccalo, componi i blocchi e avvia la generazione.

L'immagine finita compare direttamente nell'app **e arriva anche in chat**,
così ce l'hai nella cronologia e puoi inoltrarla subito. Se salti `/start` e
apri l'app direttamente, la generazione funziona lo stesso — solo che
l'immagine non ti arriva in chat, perché Telegram non permette a un bot di
scrivere per primo.

### Quanto costa

**Tre generazioni gratis ogni 24 ore.** Poi 1 credito = 1 immagine, e i crediti
si comprano con le **Telegram Stars** direttamente nell'app — 10 crediti per
25 ⭐, 50 per 100 ⭐, 250 per 400 ⭐. Restyle e acconciatura costano come
un'immagine, l'acconciatura solo dopo che l'analisi ha accettato la foto.
L'animazione ha un contatore a parte: una al giorno gratis, le altre a 10 ⭐.
Se una generazione fallisce, il credito torna indietro. Per problemi con il
pagamento c'è il comando `/paysupport`, i rimborsi li gestisco entro 48 ore.

### Cosa c'è sotto il cofano

La Mini App è Flutter web su Cloudflare Pages. Da lì il prompt va a un backend
(FastAPI + aiogram) che gira su un NAS di casa e poi a **ComfyUI** — in base
al modello scelto si seleziona il workflow (FLUX, Pony, Juggernaut XL
Lightning o WAI Illustrious). Il restyle mantiene il viso con PuLID o
InstantID e la posa con un depth ControlNet, l'animazione gira su Wan 2.2.
Crediti e pagamenti stanno in SQLite sul backend.

### App native

Le build qui sotto per macOS, Windows, Linux, Android e iOS sono il
compositore di prompt completo e in più hanno la modalità **Repose**, che in
Telegram non c'è: carichi un viso, scegli una posa e l'app genera
un'immagine di quella persona in quella posa con un viso fedele (InstantID +
depth ControlNet + hi-res + FaceDetailer). Repose però si collega direttamente
a ComfyUI, quindi l'app nativa deve poterlo raggiungere.

Fatto con Flutter.
