---
tagline: Chat IA con ruoli, Bibliotecario e Avvocato, uno studio per immagini, video, fiabe, musica e voce
---
Ol1nLLM è un'unica app sopra il tuo server: chiacchiera, cerca in una biblioteca e nelle leggi, disegna, trasforma un'immagine in video, gira una fiaba, compone musica e legge le risposte con una voce registrata.
Una guida dettagliata con screenshot è nella pagina [Cosa sa fare l'app](ol1nllm-features.html).

### Chat

La conversazione inizia con la scelta di un **ruolo** — dieci personalità, dal bambino di cinque anni al nonno, e quattro assistenti con dati propri. La risposta si scrive man mano, la conversazione si può **ramificare** e il ruolo si può cambiare a metà.

- **Bibliotecario** risponde da un corpus di filosofia e testi sacri nelle lingue originali e mostra i passi da cui ha attinto, con la traduzione in ceco.
- **Avvocato** risponde dalle leggi ceche in vigore e cita gli articoli.
- **Avvocato – contratti** redige un contratto da un modello: fa domande scheda per scheda e controlla i limiti di legge.
- **Leads** cerca aziende e istituzioni nel Registro ceco dei contratti.

### Image Studio

L'immagine nasce a turni che formano un albero: testo → immagine, poi ritocchi della variante scelta. Diciannove modelli (FLUX, SDXL, linee anime), oltre trecento **stili** artistici (culture ed epoche, artisti, tecniche), modelli di **pose**, **LoRA** dal server e un prompt negativo scritto in maiuscolo.

- **Mantieni posa** e **Mantieni volto** — un nuovo personaggio nella postura del riferimento, volendo anche con il suo volto.
- **Mappa degli stili** — centinaia di immagini dello stesso soggetto ordinate per somiglianza; il dito scorre sul mosaico e lo stile cambia come un'animazione, e viene usato quello scelto.
- **Inpaint** — dipingi sopra un'area e descrivi cosa deve esserci.
- **Parrucchiere** — una nuova acconciatura o un nuovo colore di capelli senza disegnare maschere.
- **Animare** — da un'immagine un breve video: balli e gesti dal server, o una tua descrizione del movimento.
- **3D** — un modello da stampare (STL), o una figurina danzante con scheletro.

### Story Studio

Scegli una fiaba tra dieci sceneggiature, assegni i ruoli con le tue immagini e il server ne ricava un video animato di un minuto con narratore, musica e sottotitoli. Puoi controllare le inquadrature prima dell'animazione e far ridisegnare quelle venute male.

### Music Studio

Dai allo studio un campione musicale — da un file o registrato col microfono — e lui ne ricava genere, tempo e tonalità. **Vibe** compone un nuovo brano con lo stesso spirito, **Groove** riarrangia l'originale in un altro genere.

### Voice Studio

Da una breve registrazione — anche dalla traccia audio di un video — nasce una tua **voce**. Qualsiasi voce si può provare su qualsiasi frase e assegnare a un ruolo nella chat. L'altoparlante sotto la risposta la legge poi con la voce di quel ruolo.

### Cronologia

Conversazioni, sessioni, progetti e fiabe restano sul telefono. Le attività lunghe girano sul server: puoi chiudere l'app e al ritorno si ricollega da sola.

Realizzata in Flutter, funziona su mobile e desktop. L'app è un client per il tuo server di modelli; senza di esso non genera nulla.
