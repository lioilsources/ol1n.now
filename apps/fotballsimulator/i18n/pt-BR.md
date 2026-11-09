---
tagline: Um voleio com um só deslize do dedo — onde o peito do pé encontra a bola, com quanto efeito e em qual milissegundo
---
Fotball Simulator simula um único movimento: o voleio. A bola quica na sua frente, cada vez de um jeito, e com um só deslize do dedo você chuta para o gol. Sem time, sem partida, só a questão de onde e quando o peito do pé encontra a bola. Todo o resto, o voo, o efeito, o quique e se vai ser gol, vem daí pela física.

### Um gesto, quatro decisões

Na parte de baixo da tela tem uma bola grande, e um deslize sobre ela diz tudo de uma vez:

- **Onde você põe o dedo** é onde o peito do pé acerta a bola. Abaixo do centro a bola sobe, acima do centro você a chuta no chão, pelo lado ela ganha rotação.
- **A curva do deslize** é o efeito. Quanto mais você curva o gesto, mais a bola faz curva no ar.
- **A velocidade do deslize** é a força do chute.
- **O momento em que você solta o dedo** é o instante do contato. O voleio tem uma janela: depois do quique a bola sobe, para e cai, e o momento ideal é quando ela desce até a altura do peito do pé. O jogo sabe disso de antemão, porque calcula o voo da bola no lançamento.

O desvio é medido em milissegundos. Até ±30 ms é PERFECT, depois GOOD, LATE e EARLY. Atrasado é atrasado: o peito do pé acerta por cima a bola que está caindo, ela ganha topspin e vai para o chão ou não chega. Quem erra de vez chuta o ar.

### Freeze-frame e voo

No instante do contato o mundo para por uma fração de segundo. Na bola brilha o ponto onde o pé a acertou, e uma seta mostra para onde ela vai. No alto aparecem a velocidade em km/h, a rotação em voltas por segundo e a avaliação do timing com o desvio exato. Aí a bola voa deixando um rastro, então dá para ver como ela faz curva. O resultado é GOL, FORA ou CURTO, e logo depois chega quicando a próxima bola.

Se precisar de mais tempo, ative o **slow-mo**: quando o dedo toca a tela, o jogo desacelera para você terminar o gesto. Mas o timing é medido no tempo do jogo, então desacelerar não ajuda a trapacear.

### Física

O voo da bola é um cálculo próprio, não a física de um motor: gravidade, resistência do ar, efeito Magnus (é por isso que a bola girando faz curva) e perda gradual de rotação. O quique na grama tira altura, e a rotação se transforma em direção. O contato leva em conta a velocidade com que a bola chegou, então uma bola chutada fraco simplesmente rebate em vez de ficar parada no ar. Os resultados são garantidos por testes automáticos contra uma implementação de referência independente do mesmo modelo em Python.

O jogo nasceu no Godot 4.7, e no celular roda a sua reescrita em Flutter, com as mesmas constantes e os mesmos testes. A cena é desenhada por uma projeção em perspectiva própria, sem motor 3D.

### Status

A primeira fase está pronta: um ciclo jogável de lançamento, chute, freeze-frame, voo e resultado. O campo e o gol ainda são simples; faltam uma perna que faça o movimento, uma rede que estufe no gol e uma câmera que acompanhe a bola. Depois vêm o ajuste da sensação de jogo, um mapa de calor dos chutes ao gol e estatísticas.

O APK abaixo é uma versão de teste (alfa). No iPhone, por enquanto só pelo TestFlight para testadores.
