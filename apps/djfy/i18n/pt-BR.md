---
tagline: Um deck de DJ com playlist inteligente e modo festa em que os convidados escolhem a música pelo celular
---
O DJfy é um app de DJ para celular que gera playlists de forma inteligente. Você digita um artista e o app monta uma seleção de faixas em torno dele com base no andamento e em recomendações. Depois, mixa tudo nos decks com pitch, efeitos e crossfader.

Ele integra **Last.fm** (recomendações, scrobbling), **GetSongBPM** (dados de BPM) e **SoundCloud** (streaming).

### Modo festa

Em festa, quem costuma tocar a música é quem está com o celular na mão, enquanto os outros gritam pedidos no ouvido dele. No DJfy, o celular do anfitrião vira a cabine de DJ e a caixa de som só toca. Os convidados escaneiam um QR code e abrem a festa no navegador. Não precisam de app nem de conta, basta digitar o nome.

- **Convidados sugerem e votam.** Qualquer um pode buscar faixas, adicioná-las à fila e dar joinha para cima ou para baixo. Para um convidado não dominar a fila, cada um pode ter no máximo três faixas nela ao mesmo tempo.
- **Fila inteligente.** A ordem não depende só dos votos. O app também leva em conta há quanto tempo a faixa está esperando, se o mesmo artista acabou de tocar e se o andamento combina com a faixa que está tocando.
- **Mood lock.** O anfitrião define uma faixa de BPM, tipo 110–130, e as músicas fora dela vão para o fim da fila. Assim a noite mantém o ritmo mesmo quando alguém sugere uma balada romântica.
- **Auto-DJ.** As faixas emendam umas nas outras com um crossfade suave. Quando os andamentos diferem em até 8 %, o app ajusta o BPM durante a transição e depois volta à velocidade original.
- **A festa não acaba.** Quando a fila esvazia, o app adiciona sozinho outra faixa, parecida com as últimas que tocaram, e marca como Auto. As faixas dos convidados sempre têm prioridade e as vetadas não voltam. Dá para desligar no botão ao lado do Auto-DJ.
- **O anfitrião dá a palavra final.** Ele pode vetar uma faixa, nomear um co-DJ que pode mexer na fila ou expulsar um convidado.
- **Som em qualquer lugar.** O celular toca no fone de ouvido, numa caixa de som via Bluetooth ou via AirPlay, por exemplo num Sonos.

O celular do anfitrião segura a festa inteira. Um pequeno servidor em Go entre ele e os convidados só repassa mensagens e não guarda nada.

Feito em Flutter. Roda no celular e no macOS.
