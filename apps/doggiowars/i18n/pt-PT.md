---
tagline: Combate aéreo voxel entre ilhas flutuantes (jogo autónomo para Luanti)
---
Tu és o caça. Não o piloto dentro do caça — a própria máquina. Em DoggioWars
não se anda a pé, não se escava nem se constrói: voas desde o primeiro
segundo.

Por baixo de ti estende-se um céu cheio de **ilhas flutuantes** em doze
biomas — vulcões com lava a transbordar da cratera, mesetas glaciares com
pingentes de gelo, lagoas de atol, cogumelos gigantes, torres de cristal
reluzentes. São geradas a partir de um número chamado seed, por isso não há
dois mundos iguais, e as ilhas são **destrutíveis**: os teus tiros arrancam-lhes
pedaços, que depois caem no vazio.

### Quem anda a voar por aí

O céu não está vazio. À volta das suas ilhas circulam **dragões-serpente** de
cinco elementos — de fogo sobre vulcões e cinza, de gelo sobre glaciares, de
água sobre atóis, de lama sobre pântanos e elétricos sobre cristais. Pelos
desertos, **vermes da areia** nadam como golfinhos, sobre as ilhas áridas vigia
um **guardião de pedra**, sobre as verdes pairam **alforrecas** luminosas e,
com um pouco de sorte, cruzas-te com uma **baleia celeste**. Por agora são
todos pacíficos: não te fazem mal e tu também não lhes fazes. A mesma seed dá
os mesmos habitantes.

A tecla **Z** ou o comando `/map` abre um mapa do mundo em ecrã inteiro: ilhas
coloridas por bioma, pontos para as criaturas e a tua nave com a direção de
voo.

### Duas máquinas numa

Alternas entre elas com o comando `/mode`, e voam de forma completamente
diferente.

O **submarino** é o modo predefinido e perdoa erros. Fica a pairar no sítio —
se largares os comandos, para suavemente, por isso podes observar uma ilha com
calma ou manobrar entre rochas milímetro a milímetro. Também consegue
desviar-se para o lado sem mudar de rumo.

O **caça** nunca para. Mantém a velocidade que lhe definires e curva
**inclinando-se** — o manípulo esquerdo deita-o sobre a asa e o nariz roda
sozinho, com mais vontade quanto mais inclinado estiveres. Um voo picado
íngreme leva-o acima da velocidade máxima, ao passo que subir lhe tira
velocidade, por isso estás sempre a trocar altitude por velocidade e
vice-versa. Faz o tonneau (barrel roll), o looping e a volta Immelmann — e
passar rente a uma rocha carrega o boost, por isso arriscar compensa.

### Atrás do coelho dourado

O comando `/race` arranca uma corrida de galgos: um coelho dourado dispara
pelo céu, faz as mesmas manobras que tu, mete-se por túneis perfurados através
das ilhas e não espera. Ou o segues durante o percurso todo, ou não.

### Controlos

O rato e o teclado funcionam, mas o jogo foi feito para **comando** — Xbox 360
e PS4 DualShock através do suporte nativo de joystick do Luanti, sem
mapeadores externos. O manípulo esquerdo pilota o avião, o direito aponta a
arma independentemente da direção em que voas. A inclinação lateral e a
arfagem aparecem num nível de bolha no HUD, porque o Luanti não consegue
inclinar o horizonte.

### Chat da Twitch

O jogo tem uma ligação opcional à Twitch através do serviço
[chatbridge](https://github.com/lioilsources/chatbridge): os espectadores usam
comandos no chat (`!drak`, `!velryba`, `!meduzy`…) para invocar criaturas no
mundo do streamer. O chat só pode acrescentar criaturas que limpam o que
deixam, nunca mexe no terreno, e `/chatoff` desliga-o de imediato. Sem
definições no `minetest.conf`, a ligação está desativada.

### Instalação

Precisas do **Luanti 5.12 ou mais recente** e de **mais nada** — desde a
versão 2.0, DoggioWars é um jogo autónomo, não um mod, por isso o Minetest Game
já não é necessário.

Extrai o arquivo para a pasta `games/` no diretório de dados do Luanti. No
Windows é `%APPDATA%\Minetest\games\`, na versão zip portátil é `games\`
diretamente na pasta do jogo. No macOS
`~/Library/Application Support/minetest/games/`, no Linux `~/.minetest/games/`.

A pasta extraída tem de se chamar **`doggiowars_game`**. Depois inicia o
Luanti, escolhe DoggioWars na barra inferior do menu principal e carrega em
**New**.

Se ainda tens uma versão antiga instalada como **mod** na pasta `mods/`,
apaga-a — desde a versão 2.0 é um jogo, e ter os dois ao mesmo tempo não faz
sentido.
