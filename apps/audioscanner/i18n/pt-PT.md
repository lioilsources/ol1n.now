---
tagline: Um mapa acústico da tua sala a partir do microfone do telemóvel
---
Pões as colunas a tocar um sinal de teste, percorres a sala com o telemóvel e
em cada ponto é medido o espetro. Entretanto, o seguimento AR regista onde estás.
O resultado é um mapa de calor sobre a planta: onde os graves ribombam, onde
desaparecem, onde pôr as colunas e onde pôr o ouvinte.

**Não substitui o REW com um microfone calibrado.** É uma ferramenta relativa —
diferenças entre pontos da mesma sala. SPL absoluto a partir de um telemóvel não
calibrado não existe, e a app nunca o afirma.

### Medição

Sonómetro SPL e RTA em trinta e uma bandas de terço de oitava de 20 Hz a 20 kHz,
FFT 8192 com janela de Hann e média energética. Os sinais de teste exportam-se em
WAV — ruído rosa e varrimento logarítmico, canal esquerdo e direito em separado.

O RTA tem retenção de picos, traços de máximo e mínimo e congelamento; uma
captura congelada pode ser guardada como ponto. É possível carregar um ficheiro
de calibração do microfone (UMIK ou REW) e um offset de SPL, mas nunca alteram
os dados guardados.

Medes um ponto com um toque, com três segundos de média, ou deixas a app medir
continuamente a cada meio metro. Dos pontos nasce um mapa de calor IDW com um
cursor para percorrer as bandas e a recomendação do lugar mais linear para te
sentares.

A partir do varrimento logarítmico, a desconvolução de Farina calcula a resposta
a impulso: som direto, primeira reflexão e resposta em frequência com fase, com
janela de gating ajustável e suavização de 1/3 a 1/24 de oitava. Além disso,
decaimento por oitava (EDT, T20, T30), C50 e C80, curva de Schroeder, gráfico do
impulso, ETC e espetrograma. Do mesmo varrimento sai também a distorção HD2 e
HD3. Quando uma reflexão chega antes de o impulso deixar de ressoar, não é
possível separá-la — a app prefere não devolver nada a confundir um lóbulo
lateral com uma parede.

Podes comparar quaisquer dois pontos, mesmo entre sessões. Exporta-se FRD para
REW e VituixCAD, os impulsos e a sessão inteira em JSON.

### Conceção do sistema

Com LiDAR, obtém a geometria da sala através do RoomPlan, calcula os modos por
soma modal, faz por software um «subwoofer crawl», encontra por espelhamento os
pontos de primeira reflexão e verifica os ângulos face ao Dolby. A partir daí
consegue gerar as definições para o Integra DRX-8.4, incluindo as suas quinze
bandas de EQ.

Na posição de escuta, cada canal é medido com o seu próprio varrimento. O EQ
parte da média dos pontos à volta do ouvinte; uma banda que varia entre eles
mais de 6 dB recebe apenas metade da correção. Corta-se à vontade, reforça-se
muito pouco e acima da frequência de Schroeder não se mexe em nada. A
pré-visualização mostra o antes, o alvo e a previsão do depois, e a curva-alvo
pode ser ajustada. Uma segunda medição, depois de introduzires o EQ no recetor,
mostra o que o filtro dele fez realmente.

### O que a app diz sem rodeios

Um só microfone não consegue localizar uma fonte, por isso guarda-se apenas a
posição do telemóvel, nunca a orientação como direção do som. Quando o sistema
processa o sinal às escondidas — AGC, supressão de ruído, cancelamento de eco —,
a camada nativa indica o que realmente ativou: uma medição através do AGC não é
uma medição pior, é uma medição do AGC. Um microfone Bluetooth é detetado e
assinalado com um aviso.

### O que falta de propósito

Reproduzir o sinal a partir do telemóvel. O altifalante do telemóvel acaba por
volta dos 500 Hz, ou seja, acima de qualquer modo que valha a pena procurar —
exportar um WAV para um sistema a sério é o único caminho que faz sentido.

O RoomPlan não existe no Android. Em vez disso, os planos verticais do ARCore
são encaixados numa caixa: veem as paredes para onde a câmara olhou, raramente
os cantos, nunca atrás dos móveis. Chega para dar nome a um modo, não para os
pontos de reflexão — e a geometria traz essa informação sobre si própria.

Correção de fase, EQ paramétrico e vários subwoofers. O recetor só aceita a
distância e quinze bandas gráficas; para mais é preciso um DSP externo e a
exportação FRD para o REW.
