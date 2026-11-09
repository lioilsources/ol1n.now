---
tagline: Dogfight voxel entre ilhas flutuantes (jogo independente para Luanti)
---
Você é o caça. Não o piloto dentro do caça — a própria máquina. Em DoggioWars
não se anda a pé, não se minera nem se constrói: você voa desde o primeiro
segundo.

Abaixo de você se estende um céu cheio de **ilhas flutuantes** em doze
biomas — vulcões com lava transbordando da cratera, mesas glaciais com
pingentes de gelo, lagunas de atol, cogumelos gigantes, torres de cristal
brilhantes. Elas são geradas a partir de um número chamado seed, então nenhum
mundo é igual ao outro, e as ilhas são **destrutíveis**: seus tiros arrancam
pedaços delas, que depois despencam no vazio.

### Quem voa por aí

O céu não está vazio. Ao redor de suas ilhas circulam **dragões-serpente** de
cinco elementos — de fogo sobre vulcões e cinzas, de gelo sobre geleiras, de
água sobre atóis, de lama sobre pântanos e elétricos sobre cristais. Pelos
desertos, **vermes da areia** nadam como golfinhos, sobre as ilhas áridas vigia
um **guardião de pedra**, sobre as verdes flutuam **águas-vivas** luminosas e,
com um pouco de sorte, você encontra uma **baleia celeste**. Por enquanto todos
são pacíficos: não fazem mal a você e você também não a eles. A mesma seed
gera os mesmos habitantes.

A tecla **Z** ou o comando `/map` abre um mapa do mundo em tela cheia: ilhas
coloridas por bioma, pontos para as criaturas e sua nave com a direção de voo.

### Duas máquinas em uma

Você alterna entre elas com o comando `/mode`, e elas voam de jeitos
completamente diferentes.

O **submarino** é o padrão e perdoa erros. Ele fica parado no ar — solte os
controles e ele para suavemente, então dá para olhar uma ilha com calma ou
manobrar entre as rochas milímetro a milímetro. Também sabe se desviar para o
lado sem mudar de rumo.

O **caça** nunca para. Ele mantém a velocidade que você define e faz curvas
**inclinando** — o analógico esquerdo deita ele sobre a asa e o nariz vira
sozinho, com mais vontade quanto mais inclinado você estiver. Um mergulho
íngreme leva ele além da velocidade máxima, já subir tira velocidade, então
você está sempre trocando altitude por velocidade e vice-versa. Ele faz
parafuso (barrel roll), looping e curva Immelmann — e passar raspando por uma
rocha carrega o boost, então arriscar compensa.

### Atrás do coelho dourado

O comando `/race` inicia uma corrida de galgos: um coelho dourado dispara pelo
céu, faz as mesmas manobras que você, se enfia por túneis perfurados através
das ilhas e não espera ninguém. Ou você fica na cola dele o percurso inteiro,
ou não.

### Controles

Mouse e teclado funcionam, mas o jogo foi feito para **controle** — Xbox 360 e
PS4 DualShock pelo suporte nativo a joystick do Luanti, sem mapeador externo.
O analógico esquerdo pilota o avião, o direito mira a arma independentemente
de para onde você está voando. A inclinação lateral e a arfagem aparecem num
nível de bolha no HUD, porque o Luanti não consegue inclinar o horizonte.

### Chat da Twitch

O jogo tem uma integração opcional com a Twitch pelo serviço
[chatbridge](https://github.com/lioilsources/chatbridge): os espectadores usam
comandos no chat (`!drak`, `!velryba`, `!meduzy`…) para invocar criaturas no
mundo do streamer. O chat só pode adicionar criaturas que se limpam sozinhas,
nunca mexe no terreno, e `/chatoff` desliga tudo na hora. Sem configurações no
`minetest.conf`, a integração fica desligada.

### Instalação

Você precisa do **Luanti 5.12 ou mais recente** e de **mais nada** — desde a
versão 2.0, DoggioWars é um jogo independente, não um mod, então o Minetest
Game não é mais necessário.

Descompacte o arquivo na pasta `games/` do diretório de dados do Luanti. No
Windows é `%APPDATA%\Minetest\games\`, na versão zip portátil é `games\`
direto na pasta do jogo. No macOS `~/Library/Application Support/minetest/games/`,
no Linux `~/.minetest/games/`.

A pasta descompactada precisa se chamar **`doggiowars_game`**. Depois abra o
Luanti, escolha DoggioWars na barra inferior do menu principal e clique em
**New**.

Se você ainda tem uma versão antiga instalada como **mod** na pasta `mods/`,
apague — desde a versão 2.0 é um jogo, e ter os dois ao mesmo tempo não faz
sentido.
