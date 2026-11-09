---
tagline: Chat de IA com papéis, Bibliotecário e Advogado, um estúdio de imagens, vídeo, contos, música e voz
---
O Ol1nLLM é um app só, em cima do seu próprio servidor: ele conversa, pesquisa numa biblioteca e nas leis, desenha, transforma uma imagem em vídeo, filma um conto de fadas, compõe música e lê as respostas com uma voz gravada.
Um guia detalhado com capturas de tela está na página [O que o app faz](ol1nllm-features.html).

### Chat

A conversa começa com a escolha de um **papel** — dez personalidades, de uma criança de cinco anos a um avô, e quatro assistentes com dados próprios. A resposta vai sendo escrita na hora, a conversa pode se **ramificar** e dá para trocar de papel no meio.

- **Bibliotecário** responde a partir de um acervo de filosofia e textos sagrados nos idiomas originais e mostra os trechos de onde tirou a resposta, com tradução para o tcheco.
- **Advogado** responde com base nas leis tchecas em vigor e cita os artigos.
- **Advogado – contratos** redige um contrato a partir de um modelo: pergunta cartão por cartão e cuida dos limites legais.
- **Leads** procura empresas e instituições no Registro de Contratos tcheco.

### Image Studio

A imagem nasce em rodadas que formam uma árvore: texto → imagem, depois ajustes da variante escolhida. Dezenove modelos (FLUX, SDXL, linhas anime), mais de trezentos **estilos** artísticos (culturas e épocas, artistas, técnicas), modelos de **poses**, **LoRAs** do servidor e um prompt negativo escrito em maiúsculas.

- **Manter pose** e **Manter rosto** — um personagem novo na postura da referência e, se quiser, também com o rosto dela.
- **Mapa de estilos** — centenas de imagens do mesmo tema organizadas por semelhança; o dedo desliza pelo mosaico, o estilo muda como uma animação, e o escolhido é usado.
- **Inpaint** — você pinta uma área e descreve o que deve haver ali.
- **Cabeleireiro** — um penteado ou cor de cabelo novos sem desenhar máscara.
- **Animar** — um vídeo curto a partir de uma imagem: danças e gestos do servidor, ou sua própria descrição do movimento.
- **3D** — um modelo para imprimir (STL), ou um bonequinho dançante com esqueleto.

### Story Studio

Você escolhe um conto entre dez roteiros, escala os papéis com suas próprias imagens e o servidor transforma tudo num vídeo animado de um minuto, com narrador, música e legendas. Dá para conferir as cenas antes da animação e mandar redesenhar as que não ficaram boas.

### Music Studio

Dê ao estúdio uma amostra de música — de um arquivo ou gravada no microfone — e ele identifica o gênero, o andamento e a tonalidade. **Vibe** compõe uma faixa nova no mesmo clima, **Groove** rearranja a original em outro gênero.

### Voice Studio

De uma gravação curta — até da trilha de áudio de um vídeo — nasce uma **voz** sua. Qualquer voz pode ser testada em qualquer frase e atribuída a um papel no chat. O alto-falante embaixo da resposta então a lê com a voz desse papel.

### Histórico

Conversas, sessões, projetos e contos ficam no celular. Tarefas longas rodam no servidor: você pode fechar o app e, quando voltar, ele se reconecta sozinho.

Feito em Flutter, roda no celular e no desktop. O app é um cliente do seu próprio servidor de modelos; sem ele, não gera nada.
