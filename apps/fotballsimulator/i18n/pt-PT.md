---
tagline: Um remate de primeira com um só deslizar do dedo — onde o peito do pé encontra a bola, com quanto efeito e em que milissegundo
---
Fotball Simulator simula um único movimento: o remate de primeira, a volée. A bola ressalta à tua frente, de cada vez de forma diferente, e com um só deslizar do dedo rematas à baliza. Sem equipa, sem jogo, só a questão de onde e quando o peito do pé encontra a bola. Tudo o resto, o voo, o efeito, o ressalto e se é golo, resulta daí pela física.

### Um gesto, quatro decisões

Na parte de baixo do ecrã há uma bola grande, e um deslizar sobre ela diz tudo de uma vez:

- **Onde pões o dedo** é onde o peito do pé acerta na bola. Abaixo do centro a bola sobe, acima do centro rematas contra o relvado, de lado ganha rotação.
- **A curva do gesto** é o efeito. Quanto mais curvares o gesto, mais a bola faz curva no ar.
- **A velocidade do gesto** é a força do remate.
- **O momento em que levantas o dedo** é o instante do contacto. A volée tem uma janela: depois do ressalto a bola sobe, para e cai, e o momento ideal é quando desce até à altura do peito do pé. O jogo sabe-o de antemão, porque calcula o voo da bola no lançamento.

O desvio mede-se em milissegundos. Até ±30 ms é PERFECT, depois GOOD, LATE e EARLY. Tarde é tarde: o peito do pé acerta por cima na bola que está a cair, ela ganha efeito para baixo e acaba no chão ou fica curta. Quem falha por completo chuta o ar.

### Freeze-frame e voo

No instante do contacto o mundo para durante uma fração de segundo. Na bola brilha o ponto onde o pé lhe acertou, e uma seta mostra para onde vai. Em cima aparecem a velocidade em km/h, a rotação em rotações por segundo e a avaliação do timing com o desvio exato. Depois a bola voa com um rasto atrás, por isso vê-se como faz curva. O resultado é GOLO, FORA ou CURTA, e pouco depois chega a ressaltar a bola seguinte.

Se precisares de mais tempo, liga o **slow-mo**: quando o dedo toca no ecrã, o jogo abranda para conseguires terminar o gesto. Mas o timing é medido em tempo de jogo, por isso abrandar não ajuda a fazer batota.

### Física

O voo da bola é um cálculo próprio, não a física de um motor: gravidade, resistência do ar, efeito Magnus (é por isso que uma bola a rodar faz curva) e perda gradual de rotação. O ressalto na relva tira altura e a rotação transforma-se em direção. O contacto tem em conta a velocidade a que a bola chegou, por isso uma bola rematada sem força simplesmente ressalta em vez de ficar suspensa no ar. Os resultados são garantidos por testes automáticos contra uma implementação de referência independente do mesmo modelo em Python.

O jogo nasceu no Godot 4.7, e no telemóvel corre a sua reescrita em Flutter, com as mesmas constantes e os mesmos testes. A cena é desenhada por uma projeção em perspetiva própria, sem motor 3D.

### Estado

A primeira fase está concluída: um ciclo jogável de lançamento, remate, freeze-frame, voo e resultado. O campo e a baliza ainda são simples; faltam uma perna que faça o movimento, uma rede que se enfune com o golo e uma câmara que siga a bola. Depois virão o afinar da sensação de jogo, um mapa de calor dos remates à baliza e estatísticas.

O APK abaixo é uma versão de teste (alfa). No iPhone, para já só através do TestFlight para testadores.
