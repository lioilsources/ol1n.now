---
tagline: Um deck de DJ com playlist inteligente e modo festa em que os convidados escolhem a música no telemóvel
---
O DJfy é uma app de DJ para telemóvel que gera playlists de forma inteligente. Escreves um artista e a app reúne faixas à volta dele com base no andamento e em recomendações. Depois mistura-as nos decks com pitch, efeitos e crossfader.

Integra **Last.fm** (recomendações, scrobbling), **GetSongBPM** (dados de BPM) e **SoundCloud** (streaming).

### Modo festa

Numa festa, a música costuma ser posta por quem está ao pé do telemóvel, enquanto os outros lhe gritam pedidos ao ouvido. No DJfy, o telemóvel do anfitrião passa a ser a cabine de DJ e a coluna limita-se a tocar. Os convidados leem um código QR e abrem a festa no browser. Não precisam de app nem de conta, basta escrever o nome.

- **Os convidados sugerem e votam.** Qualquer pessoa pode procurar faixas, adicioná-las à fila e dar um polegar para cima ou para baixo. Para que um só convidado não ocupe a fila toda, cada um pode ter lá no máximo três faixas de cada vez.
- **Fila inteligente.** A ordem não depende só dos votos. A app tem também em conta há quanto tempo a faixa está à espera, se o mesmo artista tocou há pouco e se o andamento condiz com a faixa que está a tocar.
- **Mood lock.** O anfitrião define um intervalo de BPM, por exemplo 110–130, e as faixas fora dele vão para o fim da fila. Assim a noite mantém o ritmo, mesmo que alguém sugira uma balada.
- **Auto-DJ.** As faixas encadeiam-se com um crossfade suave. Quando os andamentos diferem no máximo 8 %, a app acerta o BPM durante a transição e depois regressa à velocidade original.
- **A festa não acaba.** Quando a fila fica vazia, a app junta sozinha outra faixa, parecida com as últimas que tocaram, e marca-a como Auto. As faixas dos convidados têm sempre prioridade e as vetadas não voltam. Podes desligar isto no interruptor ao lado do Auto-DJ.
- **O anfitrião tem a última palavra.** Pode vetar uma faixa, nomear um co-DJ que pode mexer na fila ou expulsar um convidado.
- **Som para onde quiseres.** O telemóvel toca para auscultadores, para uma coluna por Bluetooth ou por AirPlay, por exemplo para uma Sonos.

O telemóvel do anfitrião aguenta a festa toda. Um pequeno servidor em Go entre ele e os convidados limita-se a reencaminhar mensagens e não guarda nada.

Feita em Flutter. Funciona no telemóvel e no macOS.
