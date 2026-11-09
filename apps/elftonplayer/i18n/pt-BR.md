---
tagline: Player bit-perfect para DAC USB — arquivo, RAM, ASIO e nada no meio
---
O Elfton Player é um player de música local para Windows 11 com uma única
prioridade: que cheguem ao DAC USB exatamente as amostras que estão no arquivo.
O caminho do sinal é **arquivo → decodificador → RAM → ASIO → DAC**. Sem controle de
volume, sem equalizador, sem reamostragem, sem streaming. O volume você ajusta no
conversor ou no amplificador.

### O que ele faz

- **Saída bit-perfect** via ASIO, ou WASAPI no modo exclusivo. Ao lado da faixa aparece
  a cadeia inteira (`FLAC 24/96k → 32-bit · bit-perfect`), e o ponto verde apaga no
  momento em que qualquer coisa interfere no sinal.
- **Reprodução a partir da memória.** A faixa inteira é decodificada na RAM, então o
  disco fica parado enquanto toca; a próxima faixa é carregada antes e entra **sem
  intervalo**.
- **Loop A-B com precisão de amostra** e ajuste dos pontos em milissegundos — para
  treinar um trecho ou comparar dois pontos de uma gravação.
- **Biblioteca por pastas**: a árvore de diretórios do jeito que está no seu disco,
  capas, busca, fila, favoritos, histórico, playlists M3U, álbuns em um único arquivo
  com CUE, letras sincronizadas a partir de LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg e DSD** (nativo, DoP ou convertido para PCM).
- **Mono (L+R)/2** como a única intervenção no sinal, sempre indicada de forma visível.
- **Os botões E e D** tocam só uma caixa e silenciam a outra. Com o mono ligado, as duas
  tocam a mesma coisa, então da poltrona você compara na hora, pelo celular, o lado
  esquerdo e o direito do seu sistema (cabos, componentes); sem mono, toca só o canal
  esquerdo ou só o direito da gravação.
- **Uma barra de progresso desenhada como o volume da faixa** em toda a largura da
  janela: uma introdução silenciosa fica visível e dá para pular com um clique.
- **Um coração em cada faixa** e um filtro “só favoritos” direto no álbum.
- **Três temas**: escuro, preto e claro.
- **Controle no celular**: o Elfton Remote é pareado por QR code pela sua rede
  doméstica e faz tudo o que a janela no computador faz.

### Modo de reprodução

Se você quiser, durante a reprodução ele troca o plano de energia, desativa a suspensão
seletiva de USB e o core parking, e no final volta tudo ao que era. Sendo honesto: com um
DAC USB assíncrono, quem segura o clock é o conversor, então esses ajustes não têm efeito
mensurável no som. São opcionais, cada um é registrado no log e nenhum deles é necessário.

O mesmo vale para os “rituais” herdados do player Bug head, que ficam nas configurações
e vêm desativados por padrão: travar a música na RAM, uma pausa depois de carregar a
faixa e abrir seu próprio programa auxiliar (por exemplo, o MinorityClean) junto com o
player. O MinorityClean não está incluído.

### Status

**Versão 0.2, pré-lançamento.** A primeira versão rodou no Windows 11 na casa de um
ouvinte via ASIO (Behringer UMC204HD e SMSL D200): o WAV 24/192 saiu como ASIO de 32 bits
sem conversão e sem falhas, e o controle pelo celular funciona. Isso é o que o próprio
player relata sobre o caminho do sinal; ninguém capturou a saída ainda nem comparou bit a
bit. As novidades da versão 0.2 estão cobertas por testes, mas ainda não rodaram no
Windows. As capturas de tela são da primeira versão, de um build de desenvolvimento para
macOS com uma biblioteca de exemplo — a barra de volume e o seletor E/D ainda não
aparecem nelas.

O build para Windows é um zip: descompacte e execute o `Elfton Player.exe`, ou rode o
`install.ps1` incluído, que adiciona um atalho no menu Iniciar. Nada mais é instalado.
Para ASIO, o driver do conversor precisa estar instalado; sem ele, o player oferece
WASAPI. O controle para celular por enquanto existe só para Android (APK); a versão para
iOS está pronta no código, mas não tem build público.

O motor é escrito em Go sobre o FFmpeg (LGPL, vinculado dinamicamente), e a interface em
Flutter.
