---
tagline: Uma cozinha tranquila na hora de ponta — os cozinheiros ouvem os pedidos, a sala vê daqui a quantos minutos chega cada prato
---
Na hora de ponta, um restaurante perde tempo entre a cozinha e a sala. Os talões acumulam-se na linha, os empregados de mesa vão à cozinha perguntar quando sai a mesa sete, e a comida que já está pronta arrefece no passe porque ninguém deu por ela. O Předávka resolve isto sem obrigar ninguém a olhar para mais ecrãs: **os cozinheiros ouvem os pedidos**, **a sala vê num único ecrã daqui a quantos minutos chega o quê e a que mesa**, e o prato pronto no passe pede sozinho para ser levantado ao fim de alguns minutos.

Tudo corre no restaurante num único computador pequeno: sem nuvem, sem mensalidade de servidores e em checo. Se a internet falhar, o serviço continua.

### A cozinha ouve, não precisa de ler

Quando chega um pedido, um altifalante no passe diz uma frase curta, por exemplo «Mesa sete: duas svíčková, um panado.» Os números e os nomes dos pratos seguem a gramática checa correta («jedna svíčková, dvě svíčkové, pět svíčkových»). A voz é gerada no próprio restaurante e, nos testes, estava pronta a tocar em 0,2 s após o evento. Os avisos nunca se sobrepõem: têm uma ordem de importância, uma pausa entre eles, e um pedido antigo que o ecrã já mostra não é lido sem necessidade. O botão «Mais uma vez» repete o último aviso.

### Uma fila de onde o cozinheiro tira

Cada secção (grelhador, quente, fria, sobremesas) tem a sua própria fila num tablet ou televisor. O cozinheiro pega num prato com um toque ou com um botão da bump bar. Assim o sistema sabe quem está a cozinhar o quê e desde quando, e se ninguém pegar num pedido durante dois minutos, avisa: «Mesa sete, grelhador, à espera de cozinheiro.»

### A sala sabe quando e para onde levar

O ecrã da sala mostra as mesas, o que vai para elas e daqui a quantos minutos. A estimativa não está sempre a mudar (no máximo uma vez a cada meio minuto), para se poder planear com ela. No topo está sempre o que é preciso levantar. No passe, a comida «envelhece»: ao fim de três minutos ouve-se «Mesa sete pronta, três minutos no passe», e o aviso repete-se até alguém a levar.

### As estimativas aprendem com a tua cozinha

No início, o chefe de cozinha indica uma vez quanto tempo demora cada coisa. Depois, o Předávka mede cada prato desde que é pegado até estar pronto e, após cinco medições, passa a usar os tempos reais desta cozinha. A estimativa para o cliente tem assim em conta quanto há na fila à frente dele e quantos cozinheiros da secção estão a cozinhar ao mesmo tempo.

### Funciona com qualquer sistema de faturação

Os pedidos podem ser recebidos da impressora de talões: o Předávka liga-se entre a caixa e a impressora, o talão é impresso como antes e ele lê nele a mesa e os pratos. Por isso não precisa de qualquer integração com um sistema de caixa específico. Os pedidos também podem ser registados diretamente no tablet da sala.

### Imagens dos pratos

Um item da ementa pode ter uma imagem ou um emoji. Os ecrãs no navegador mostram-nos nos botões de pedido, nos cartões da cozinha, no passe e na sala. O mesmo sistema também pode correr em casa como jogo de restaurante para crianças: uma cozinha, uma ementa infantil com imagens, um computador que serve ao mesmo tempo de servidor e de altifalante, e os outros aparelhos só abrem o navegador na mesma rede Wi-Fi.

A descrição detalhada das funções e de um serviço do princípio ao fim está na página [Como funciona](predavka-features.html) (em checo), incluindo três momentos da noite: a fila vazia, algumas mesas e «não estamos a dar conta!».

### Estado

O Předávka é um protótipo funcional concluído: servidor, voz, escuta da impressora, fila, estimativas, saída dos pratos por tempos e ecrãs (uma app para Android TV e tablets e uma versão para navegador) estão construídos e testados numa simulação de serviço. **Ainda não funcionou num restaurante a sério.** O passo seguinte é um piloto numa cozinha: a inteligibilidade da voz com o ruído do exaustor, a sonorização da cozinha com vários altifalantes e a legibilidade dos ecrãs em televisores reais.

As capturas de ecrã são de ecrãs reais. O que mostram foi gerado ao simular um serviço: ementa e mesas inventadas, com o tempo parado num determinado momento da noite.
