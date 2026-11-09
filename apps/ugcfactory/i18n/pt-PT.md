---
tagline: Uma fábrica de acessórios para Roblox — do prompt ao modelo 3D sem modelação manual
---
O UGC Factory produz acessórios de avatar para o Roblox Marketplace. Escreves o que queres —
*«um elmo de samurai ornamentado com apontamentos em néon»* — e do outro lado sai um
modelo 3D texturizado pronto a carregar. Nada de modelação manual.

## Como funciona

O trabalho está dividido por três máquinas. Um **DGX Spark** com GPU desenha o conceito (Illustrious para objetos,
Juggernaut XL para o que se usa no corpo — escolhido conforme a categoria), remove o fundo e transforma a imagem
num modelo 3D. Um **NAS** guarda a fila, o catálogo e um Blender headless que ajusta o modelo aos
limites do Roblox — menos de 4000 triângulos, UV, textura pré-calculada, o ponto de fixação
certo. O **telemóvel** serve para a triagem.

A via rápida (SF3D) constrói um modelo em segundo e meio, por isso dá para experimentar em
grande escala. O TRELLIS, mais lento e mais fino, só arranca ao empacotar uma peça que passou
pelo teu olho — a computação cara gasta-se apenas no que queres mesmo vender.
Peças ornamentadas como tiaras e elmos vão diretamente pelo TRELLIS.

## A app

O cliente móvel é o núcleo de tudo. O **Composer** lança um lote — categoria × estilo ×
variantes, até cinquenta peças de uma vez. A **Fila** mostra em direto o que está a ser feito e
em que fase. O **Triage** é o essencial: uma peça no ecrã, um comutador entre o
conceito e o modelo 3D rotativo, três botões — aprovar, rejeitar, tentar
outra vez com outra seed. Percorre-se mais depressa do que se lê. O **Review** mostra a
peça convertida: número de triângulos face ao limite, UV, se a malha está fechada,
a textura e o veredicto PASS, WARN ou FAIL. Daí a peça pode ser convertida de novo ou
empacotada para carregar. Voltar a empacotar não substitui o nome, as descrições, o preço e as etiquetas
preenchidos na app.

Funciona em Android, iOS, macOS e no browser. O servidor serve-a na sua própria
origem, por isso a versão web está sempre atualizada.

## Decorado a toda a volta

O modelo nasce de uma única imagem, por isso ninguém viu a parte de trás, que sai
plana e sem adornos. Nas peças que são mesmo de simetria radial (um bolo,
uma coroa), o setor da frente é copiado a toda a volta e a costura é soldada. Liga-se
no Composer ou numa peça acabada ao convertê-la de novo, sem gerar mais nada.
Não serve para peças planas — desfazem-se numa manta de retalhos de setores.

## Categorias

O que sai melhor são coisas que também existem **por si só** nos dados de treino:
mochilas, malas de mão, tiaras, chapéus, bolos, máscaras, escudos, anéis.
Criações de chapelaria com penas e flores, malas acolchoadas com monograma, coroas
com pérolas e ágatas, máscaras inspiradas em cinco culturas, caudas felpudas de raposa e
guaxinim, bichinhos kawaii para o ombro.

As imagens ficam bem quase sempre — com os modelos isso está longe de acontecer, e quem decide
é o modelo. Formas compactas com volume (mochila, bolo, anel) aguentam-se bem. Estruturas
finas e rendilhadas rasgam-se na via rápida, por isso as tiaras seguem logo pelo caminho mais lento.
E uma entrada desenhada tem poucas sombras, o que dá relevo em vez de volume — os bichinhos
em tons pastel precisam de um prompt que force um sombreado suave.

Roupa e cabelo são um osso duro de roer: o modelo só os conhece numa figura, por isso com o prompt
*«vestido de dragão»* desenha um dragão. Ajuda mudar para um modelo fotorrealista e
formular como fotografia de produto — *«vestido num manequim invisível»*.

Além disso, o Roblox trata vestidos, sapatos e luvas como roupa em camadas com malha de gaiola,
o que a fábrica ainda não sabe fazer. Para dedos e mãos o Roblox não tem nenhum ponto de fixação.
