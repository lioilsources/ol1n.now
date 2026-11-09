---
tagline: Uma cozinha tranquila no horário de pico — os cozinheiros ouvem os pedidos, o salão vê em quantos minutos chega cada prato
---
No horário de pico, o restaurante perde tempo entre a cozinha e o salão. As comandas se acumulam na linha, os garçons entram na cozinha para perguntar quando sai a mesa sete, e a comida que já está pronta esfria no passe porque ninguém viu. O Předávka resolve isso sem ninguém precisar olhar para mais telas: **os cozinheiros ouvem os pedidos**, **o salão vê em uma única tela em quantos minutos chega o quê e para qual mesa**, e o prato pronto no passe pede sozinho para ser retirado depois de alguns minutos.

Tudo roda no restaurante em um único computador pequeno: sem nuvem, sem mensalidade de servidores e em tcheco. Se a internet cair, o serviço continua.

### A cozinha escuta, não precisa ler

Quando chega um pedido, uma caixa de som no passe diz uma frase curta, por exemplo “Mesa sete: duas svíčková, um schnitzel.” Os números e os nomes dos pratos seguem a gramática tcheca correta (“jedna svíčková, dvě svíčkové, pět svíčkových”). A voz é gerada no próprio restaurante e, nos testes, ficou pronta para tocar em até 0,2 s depois do evento. Os avisos nunca se atropelam: têm ordem de importância, uma pausa entre eles, e um pedido antigo que a tela já mostra não é lido à toa. O botão “Mais uma vez” repete o último aviso.

### Uma fila de onde o cozinheiro puxa

Cada praça (grelha, quente, fria, sobremesas) tem sua própria fila em um tablet ou TV. O cozinheiro pega um prato com um toque ou com um botão da bump bar. Assim o sistema sabe quem está fazendo o quê e desde quando, e se ninguém pegar um pedido por dois minutos, ele avisa: “Mesa sete, grelha, aguardando cozinheiro.”

### O salão sabe quando e para onde levar

A tela do salão mostra as mesas, o que está indo para cada uma e em quantos minutos. A estimativa não fica mudando toda hora (no máximo uma vez a cada meio minuto), para dar para planejar com ela. No topo fica sempre o que precisa ser retirado. No passe, a comida “envelhece”: depois de três minutos, toca “Mesa sete pronta, três minutos no passe”, e o aviso se repete até alguém levar.

### As estimativas aprendem com a sua cozinha

No começo, o chef informa uma vez quanto tempo cada coisa leva. Depois, o Předávka mede cada prato desde que é pego até ficar pronto e, após cinco medições, passa a usar os tempos reais dessa cozinha. Assim, a estimativa para o cliente leva em conta quanto há na fila antes dele e quantos cozinheiros da praça estão cozinhando ao mesmo tempo.

### Funciona com qualquer sistema de PDV

Os pedidos podem vir da impressora de comandas: o Předávka é ligado entre o PDV e a impressora, a comanda é impressa como antes e ele lê dela a mesa e os pratos. Por isso, não precisa de nenhuma integração com um PDV específico. Os pedidos também podem ser lançados direto no tablet do garçom.

### Fotos dos pratos

Um item do cardápio pode ter uma imagem ou um emoji. As telas no navegador mostram isso nos botões de pedido, nos cartões da cozinha, no passe e no salão. O mesmo sistema também pode rodar em casa como brincadeira de restaurante para crianças: uma cozinha, um cardápio infantil com figuras, um computador servindo ao mesmo tempo de servidor e de caixa de som, e os outros aparelhos só abrem o navegador no mesmo Wi-Fi.

A descrição detalhada das funções e de um serviço do começo ao fim está na página [Como funciona](predavka-features.html) (em tcheco), incluindo três momentos da noite: fila vazia, algumas mesas e “não estamos dando conta!”.

### Status

O Předávka é um protótipo funcional pronto: servidor, voz, escuta da impressora, fila, estimativas, saída dos pratos por etapa e telas (um app para Android TV e tablets e uma versão para navegador) estão construídos e testados em uma simulação de serviço. **Ainda não rodou em um restaurante de verdade.** O próximo passo é um piloto em uma cozinha: a clareza da voz no barulho da coifa, a sonorização da cozinha com várias caixas de som e a legibilidade das telas em TVs de verdade.

As capturas de tela são de telas reais. O que elas mostram foi gerado simulando um serviço: cardápio e mesas inventados, com o tempo parado em um momento específico da noite.
