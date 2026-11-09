---
tagline: Leitor bit-perfect para DAC USB — ficheiro, RAM, ASIO e nada pelo meio
---
O Elfton Player é um leitor de música local para Windows 11 com uma única
prioridade: que cheguem ao DAC USB exatamente as amostras que estão no ficheiro.
O percurso do sinal é **ficheiro → descodificador → RAM → ASIO → DAC**. Sem volume,
sem equalizador, sem reamostragem, sem streaming. O volume ajusta-se no
conversor ou no amplificador.

### O que faz

- **Saída bit-perfect** por ASIO, ou WASAPI em modo exclusivo. Ao lado da faixa
  vê-se toda a cadeia (`FLAC 24/96k → 32-bit · bit-perfect`) e o ponto verde
  apaga-se no momento em que algo interfere com o sinal.
- **Reprodução a partir da memória.** A faixa é descodificada inteira para a RAM,
  por isso o disco não trabalha durante a reprodução; a faixa seguinte é carregada
  antecipadamente e segue-se **sem pausas**.
- **Loop A-B preciso à amostra** com ajuste dos pontos ao milissegundo — para
  praticar uma passagem ou comparar dois pontos de uma gravação.
- **Biblioteca por pastas**: a árvore de diretórios tal como a tens no disco, capas,
  pesquisa, fila, favoritos, histórico, listas de reprodução M3U, álbuns num único
  ficheiro com CUE, letras sincronizadas a partir de LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg e DSD** (nativo, DoP ou convertido para PCM).
- **Mono (L+R)/2** como única intervenção no sinal, sempre assinalada de forma visível.
- **Os botões E e D** põem a tocar só uma coluna e silenciam a outra. Com o mono
  ligado, ambas tocam o mesmo, por isso podes comparar de imediato, do sofá e com
  o telemóvel, o lado esquerdo e o direito do teu sistema (cabos, componentes);
  sem mono, ouve-se só o canal esquerdo ou só o canal direito da gravação.
- **Barra de posição desenhada como a intensidade da faixa** em toda a largura da
  janela: uma introdução silenciosa vê-se e salta-se com um clique.
- **Coração em cada faixa** e filtro "só favoritos" diretamente no álbum.
- **Três temas**: escuro, preto e claro.
- **Comando no telemóvel**: o Elfton Remote emparelha por código QR através da rede
  doméstica e faz tudo o que faz a janela no computador.

### Modo de reprodução

A pedido, durante a reprodução muda o plano de energia, desliga a suspensão
seletiva de USB e o estacionamento de núcleos, e no fim repõe tudo. Com toda a
honestidade: num DAC USB assíncrono é o conversor que segura o relógio, por isso
estes ajustes não têm efeito mensurável no som. São opcionais, cada um fica
registado no log e nenhum é necessário.

O mesmo vale para os "rituais" herdados do leitor Bug head, que estão nas
definições e vêm desligados por omissão: bloquear a música na RAM, uma pausa
depois de carregar a faixa e lançar um programa auxiliar teu (por exemplo o
MinorityClean) juntamente com o leitor. O MinorityClean não está incluído.

### Estado

**Versão 0.2, pré-lançamento.** A primeira versão correu em Windows 11 no
computador de um ouvinte via ASIO (Behringer UMC204HD e SMSL D200): WAV 24/192
saiu como ASIO de 32 bits sem conversão e sem falhas, e o controlo pelo telemóvel
funciona. Isto é o que o próprio leitor reporta sobre o percurso do sinal; ninguém
capturou ainda a saída nem a comparou bit a bit. As novidades da versão 0.2 estão
cobertas por testes, mas ainda não correram em Windows. As capturas de ecrã são
da primeira versão, de uma build de desenvolvimento para macOS com uma biblioteca
de exemplo — a barra com o perfil de volume e o seletor E/D ainda não aparecem nelas.

A build para Windows é um zip: descompacta e executa `Elfton Player.exe`, ou corre
o `install.ps1` incluído, que adiciona um atalho ao menu Iniciar. Não se instala
mais nada. Para ASIO, o controlador do conversor tem de estar instalado; sem ele,
o leitor oferece WASAPI. O comando para o telemóvel é, por agora, só para
Android (APK); a versão para iOS está pronta no código, mas não tem build pública.

O motor é escrito em Go sobre o FFmpeg (LGPL, ligado dinamicamente), a interface em Flutter.
