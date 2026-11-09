---
tagline: Short verticali dai template dei meme, con i tuoi personaggi
visuals: {n} ritratti dalla libreria dei personaggi — quattro personaggi, ognuno in dodici emozioni.
---
Uno strumento da riga di comando che trasforma un template di meme in uno short verticale da sei a quindici secondi. Il meme originale serve solo come modello per la struttura della battuta: nel risultato non finisce mai. Al suo posto recitano personaggi propri.

Né un prompt né un seed bastano a mantenere coerente un personaggio, quindi le immagini non vengono generate per ogni short. Nascono una volta sola, come libreria approvata *personaggio × emozione*: Kiro, Mei, Taro e Yuki, ognuno in dodici espressioni, dall'autocompiacimento allo sfinimento.

Lo short passa poi per la pipeline `classify → storyboard → generate → animate → compose → qa`. Ogni passaggio viene salvato a parte e indicizzato con un hash delle sue opzioni, quindi rieseguirlo non costa nulla e una modifica al testo ricalcola solo lo stretto necessario. La battuta la scrive un LLM oppure la inserisci tu a mano; i sottotitoli vengono renderizzati direttamente in Go.

Il risultato è 1080×1920, H.264, 30 fps, loudness −14 LUFS e la dicitura «AI generated» sia nell'immagine sia nei metadati.

Per ora funziona solo in locale e non ha una versione pubblicata, quindi qui non c'è niente da scaricare.
Scritto in Go; le immagini le genera FLUX.1-schnell sulla mia macchina.
