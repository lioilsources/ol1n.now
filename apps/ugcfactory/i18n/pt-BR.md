---
tagline: Uma fábrica de acessórios para Roblox — do prompt ao modelo 3D sem modelagem manual
---
O UGC Factory produz acessórios de avatar para o Roblox Marketplace. Você escreve o que quer —
*“um elmo de samurai ornamentado com detalhes em neon”* — e do outro lado sai um
modelo 3D texturizado pronto para enviar. Nada de modelagem manual.

## Como funciona

O trabalho é dividido entre três máquinas. Um **DGX Spark** com GPU desenha o conceito (Illustrious para objetos,
Juggernaut XL para o que se veste no corpo — escolhido pela categoria), remove o fundo e transforma a imagem
em um modelo 3D. Um **NAS** guarda a fila, o catálogo e um Blender headless que ajusta o modelo aos
limites do Roblox — menos de 4.000 triângulos, UV, textura baked, o ponto de fixação
certo. O **celular** serve para a triagem.

A via rápida (SF3D) monta um modelo em um segundo e meio, então dá para testar em
grande escala. O TRELLIS, mais lento e mais refinado, só roda ao empacotar uma peça que passou
pelo seu olho — a computação cara é gasta só no que você quer mesmo vender.
Peças ornamentadas como tiaras e elmos vão direto pelo TRELLIS.

## O app

O cliente mobile é o coração de tudo. O **Composer** dispara um lote — categoria × estilo ×
variantes, até cinquenta peças de uma vez. A **Fila** mostra ao vivo o que está sendo feito agora e
em que etapa. O **Triage** é o principal: uma peça na tela, um seletor entre o
conceito e o modelo 3D giratório, três botões — aprovar, rejeitar, tentar
de novo com outra seed. Você passa por tudo mais rápido do que dá para ler. O **Review** mostra a
peça convertida: número de triângulos em relação ao limite, UV, se a malha está fechada,
a textura e o veredito PASS, WARN ou FAIL. Dali a peça pode ser convertida de novo ou
empacotada para envio. Reempacotar não sobrescreve o nome, as descrições, o preço e as tags
preenchidos no app.

Roda no Android, iOS, macOS e no navegador. O servidor o serve na própria
origem, então a versão web está sempre atualizada.

## Decorado por toda a volta

O modelo nasce de uma única imagem, então ninguém viu a parte de trás, e ela sai
plana e sem enfeites. Nas peças que são de fato radialmente simétricas (um bolo,
uma coroa), o setor da frente é copiado por toda a volta e a emenda é soldada. Você liga isso
no Composer ou numa peça pronta ao convertê-la de novo, sem gerar nada a mais.
Não serve para peças planas — elas se desfazem num remendo de setores.

## Categorias

O que sai melhor são coisas que existem **por si só** também nos dados de treinamento:
mochilinhas, bolsas, tiaras, chapéus, bolos, máscaras, escudos, anéis.
Criações de chapelaria com penas e flores, bolsas matelassê com monograma, coroas
com pérolas e ágatas, máscaras inspiradas em cinco culturas, caudas peludas de raposa e
guaxinim, bichinhos kawaii de ombro.

As imagens ficam boas quase sempre — com os modelos isso está longe de ser verdade, e quem decide
é o modelo. Formas compactas com volume (mochila, bolo, anel) se seguram bem. Estruturas
finas e vazadas se rasgam na via rápida, então as tiaras vão direto pelo caminho mais lento.
E uma entrada desenhada tem poucas sombras, então vira relevo em vez de volume — bichinhos
em tons pastel precisam de um prompt que force um sombreamento suave.

Roupas e cabelo são osso duro de roer: o modelo só os conhece numa figura, então com o prompt
*“vestido de dragão”* ele desenha um dragão. Ajuda trocar para um modelo fotorrealista e
formular como foto de produto — *“vestido num manequim invisível”*.

Além disso, o Roblox trata vestidos, sapatos e luvas como roupa em camadas com malha de gaiola,
o que a fábrica ainda não faz. Para dedos e mãos o Roblox não tem nenhum ponto de fixação.
