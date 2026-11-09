---
tagline: Chat de IA com papéis, Bibliotecário e Advogado, um estúdio de imagens, vídeo, contos, música e voz
---
O Ol1nLLM é uma só aplicação por cima do teu próprio servidor: conversa, pesquisa numa biblioteca e nas leis, desenha, transforma uma imagem em vídeo, filma um conto de fadas, compõe música e lê as respostas com uma voz gravada.
Um guia pormenorizado com capturas de ecrã está na página [O que a aplicação faz](ol1nllm-features.html).

### Chat

A conversa começa pela escolha de um **papel** — dez personalidades, de uma criança de cinco anos a um avô, e quatro assistentes com dados próprios. A resposta vai sendo escrita à medida, a conversa pode **ramificar-se** e o papel pode mudar a meio.

- **Bibliotecário** responde a partir de um corpus de filosofia e textos sagrados nas línguas originais e mostra as passagens de onde tirou a resposta, com tradução para checo.
- **Advogado** responde com base nas leis checas em vigor e cita os artigos.
- **Advogado – contratos** redige um contrato a partir de um modelo: pergunta cartão a cartão e vigia os limites legais.
- **Leads** procura empresas e instituições no Registo de Contratos checo.

### Image Studio

A imagem nasce em rondas que formam uma árvore: texto → imagem, depois retoques da variante escolhida. Dezanove modelos (FLUX, SDXL, linhas anime), mais de trezentos **estilos** artísticos (culturas e épocas, artistas, técnicas), modelos de **poses**, **LoRA** do servidor e um prompt negativo escrito em maiúsculas.

- **Manter pose** e **Manter rosto** — uma personagem nova na postura da referência e, se quiseres, também com o rosto dela.
- **Mapa de estilos** — centenas de imagens do mesmo tema ordenadas por semelhança; o dedo desliza pelo mosaico, o estilo muda como numa animação, e é usado o escolhido.
- **Inpaint** — pintas uma zona e descreves o que lá deve estar.
- **Cabeleireiro** — um penteado ou uma cor de cabelo novos sem desenhar máscara.
- **Animar** — um vídeo curto a partir de uma imagem: danças e gestos do servidor, ou a tua própria descrição do movimento.
- **3D** — um modelo para imprimir (STL), ou uma figura dançante com esqueleto.

### Story Studio

Escolhes um conto entre dez guiões, distribuis os papéis com as tuas próprias imagens e o servidor faz dele um vídeo animado de um minuto, com narrador, música e legendas. Podes verificar os planos antes da animação e mandar redesenhar os que correram mal.

### Music Studio

Dá ao estúdio uma amostra de música — de um ficheiro ou gravada com o microfone — e ele deduz o género, o andamento e a tonalidade. **Vibe** compõe uma faixa nova no mesmo espírito, **Groove** faz um novo arranjo do original noutro género.

### Voice Studio

De uma gravação curta — até da faixa de áudio de um vídeo — nasce uma **voz** tua. Qualquer voz pode ser experimentada em qualquer frase e atribuída a um papel no chat. O altifalante por baixo da resposta lê-a então com a voz desse papel.

### Histórico

Conversas, sessões, projetos e contos ficam no telemóvel. As tarefas longas correm no servidor: podes fechar a aplicação e, quando voltares, ela volta a ligar-se sozinha.

Feita em Flutter, funciona no telemóvel e no computador. A aplicação é um cliente do teu próprio servidor de modelos; sem ele, não gera nada.
