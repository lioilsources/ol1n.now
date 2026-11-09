---
tagline: Um mapa acústico da sua sala pelo microfone do celular
---
Você toca um sinal de teste nas caixas, percorre a sala com o celular e em cada
ponto o espectro é medido. Enquanto isso, o rastreamento AR acompanha onde você
está. O resultado é um mapa de calor na planta: onde o grave embola, onde some,
onde colocar as caixas e onde colocar o ouvinte.

**Não substitui o REW com microfone calibrado.** É uma ferramenta relativa —
diferenças entre pontos de uma mesma sala. SPL absoluto de um celular sem
calibração não existe, e o app não afirma isso em lugar nenhum.

### Medição

Medidor de SPL e RTA em trinta e uma bandas de terço de oitava de 20 Hz a
20 kHz, FFT 8192 com janela de Hann e média energética. Os sinais de teste são
exportados em WAV — ruído rosa e sweep logarítmico, canal esquerdo e direito
separados.

O RTA tem peak hold, traços de máximo e mínimo e congelamento; uma captura
congelada pode ser salva como ponto. Dá para carregar um arquivo de calibração
do microfone (UMIK ou REW) e um offset de SPL, mas eles nunca alteram os dados
salvos.

Você mede um ponto com um toque, com três segundos de média, ou deixa o app
medir continuamente a cada meio metro. Dos pontos sai um mapa de calor IDW com
um controle deslizante pelas bandas e a recomendação do lugar mais plano para
sentar.

A partir do sweep logarítmico, a deconvolução de Farina calcula a resposta ao
impulso: som direto, primeira reflexão e resposta em frequência com fase, com
janela de gating ajustável e suavização de 1/3 a 1/24 de oitava. Além disso,
decaimento por oitava (EDT, T20, T30), C50 e C80, curva de Schroeder, gráfico
do impulso, ETC e espectrograma. Do mesmo sweep sai também a distorção HD2 e
HD3. Quando uma reflexão chega antes de o impulso parar de soar, ela não pode
ser separada — o app prefere não devolver nada a marcar um lóbulo lateral como
parede.

Dá para comparar quaisquer dois pontos, inclusive entre sessões. Exporta FRD
para REW e VituixCAD, impulsos e a sessão inteira em JSON.

### Projeto do sistema

Com LiDAR, ele pega a geometria da sala pelo RoomPlan, calcula os modos por soma
modal, faz um “subwoofer crawl” por software, encontra por espelhamento os pontos
de primeira reflexão e confere os ângulos com o Dolby. Com isso, consegue gerar
as configurações para o Integra DRX-8.4, incluindo suas quinze bandas de EQ.

Na posição de escuta, cada canal é medido separadamente com um sweep. O EQ parte
da média dos pontos ao redor do ouvinte; uma banda que varia mais de 6 dB entre
eles recebe só metade da correção. Corta-se à vontade, reforça-se quase nada e
acima da frequência de Schroeder nada é mexido. A prévia mostra o antes, o alvo
e a previsão do depois, e a curva-alvo pode ser ajustada. Uma segunda medição,
depois de você inserir o EQ no receiver, mostra o que o filtro dele realmente
fez.

### O que o app diz abertamente

Um único microfone não consegue localizar uma fonte, então só a posição do
celular é salva, nunca a orientação como direção do som. Quando o sistema
processa o sinal sem avisar — AGC, supressão de ruído, cancelamento de eco —,
a camada nativa informa o que realmente foi ativado: uma medição com AGC não é
uma medição pior, é uma medição do AGC. Um microfone Bluetooth é detectado e
gera um aviso.

### O que falta de propósito

Tocar o sinal pelo celular. O alto-falante do celular termina por volta de
500 Hz, ou seja, acima de qualquer modo que valha a pena procurar — exportar um
WAV para um sistema de verdade é o único caminho que faz sentido.

O RoomPlan não existe no Android. No lugar dele, planos verticais do ARCore são
encaixados numa caixa: eles enxergam as paredes para onde a câmera olhou,
raramente os cantos, nunca atrás dos móveis. Dá para nomear um modo, não para
os pontos de reflexão — e a geometria carrega essa informação sobre si mesma.

Correção de fase, EQ paramétrico e vários subwoofers. O receiver só aceita
distância e quinze bandas gráficas; para mais que isso, é preciso um DSP externo
e a exportação FRD para o REW.
