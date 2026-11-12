---
tagline: Banda desenhada na vertical, mesmo sem internet — histórias grátis, livros-jogo em que escolhes tu e vinhetas que ganham vida
visuals: {n} imagens — vinhetas de cinco histórias infantis, uma comparação de dois estilos e character sheets.
---
O Toonfork (antes com o nome provisório Webtoon) é um leitor de banda desenhada na vertical que funciona também sem internet. Logo após a instalação traz 15 histórias grátis, sem conta e sem registo. As histórias são criadas num servidor GPU próprio: um modelo de linguagem escreve o argumento, um modelo de imagem desenha as vinhetas e os balões com o texto só são acrescentados pelo leitor, por isso o texto pode ser corrigido sem voltar a gerar a imagem.

As tiras acabadas de cinco histórias infantis estão na subpágina Strips, e o ciclo de jogo com uma escolha no fim do episódio, na subpágina Gamebook.

### Leitor

Uma história é uma única tira comprida de vinhetas com balões, pensamentos, gritos e efeitos sonoros que deslizas com o polegar de cima para baixo. Algumas vinhetas ganham vida em loops curtos: chuva na janela, luz na água, vento no cabelo. No fim do episódio vês o que foi escolhido e o botão **Episódio seguinte**. Depois do último episódio aparece **Fim** e uma sugestão da história seguinte.

### Livros-jogo

Num livro-jogo és tu quem decide o enredo. No fim de cada parte escolhes o que vem a seguir, e a história ramifica-se. A app lembra-se de onde estás, por onde foste e que finais encontraste; o mapa do percurso mostra apenas o que já visitaste. Podes recomeçar ou recuar um passo. Os livros-jogo são grátis: para crianças **Sara and the Black Crown**, para adultos, por exemplo, o drama intimista num consultório de psicologia **Learning to Be Silent**, **Metal Sky Above Us** ou **The Blooming Meadow That Turned Grey**. Os dramas abordam temas difíceis e o perfil infantil esconde-os.

Em beta há um editor de ramificações: a qualquer escolha juntas a tua própria continuação, montas-la com as imagens do livro-jogo e escreves os balões. Jogas a ramificação de imediato e podes enviá-la ao autor através da partilha, sem servidor nenhum.

### Pacotes

Pacotes opcionais acrescentam até 50 histórias: **Romance** (histórias de amor leves para adultos, sem cenas explícitas), **Infantil** e **Super-heróis**. O pacote é descarregado após a compra e lê-se offline. Uma só compra desbloqueia tudo, incluindo os pacotes que saírem mais tarde.

### Perfil e controlo parental

Ao abrir a app pela primeira vez escolhes o perfil **Crianças** ou **Adultos**. O perfil infantil esconde o romance e os dramas na biblioteca e na loja. Cada compra e cada mudança para Adultos é protegida por um controlo parental com uma pergunta da tabuada.

### 12 idiomas

As histórias, os livros-jogo e os textos do leitor existem em 12 idiomas: checo, inglês, alemão, francês, italiano, polaco, português do Brasil, japonês, coreano, vietnamita, russo e ucraniano. O idioma dos balões muda-se nas Definições.

### Privacidade

Sem conta, sem anúncios, sem rastreio. O Toonfork não recolhe dados pessoais; o que compraste fica guardado no dispositivo, e as compras podem ser restauradas nas Definições.

## Studio: como nascem as histórias

A outra face da mesma app é o Studio para o autor. O autor constrói um mundo: lore, personagens, lugares e um cânone pelo qual cada história tem de passar. No Studio também se pode jogar de forma interativa: no fim do episódio o leitor escolhe o que a personagem faz a seguir, ou escreve-o por palavras suas, e da escolha nasce o episódio seguinte. O texto livre passa primeiro pela moderação; num mundo infantil é mais rigorosa e, na dúvida, prefere recusar. As capturas de ecrã desta página são do Studio.

### Editor de mundo

O autor tem na app o separador **Criar**:

- **Base:** título, sinopse, tom, idioma, público (Para crianças, A partir dos 13 anos, Para adultos), visibilidade e um estilo visual que vale para todo o mundo.
- **Lore e cânone:** regras do mundo, fações, nós canónicos por ordem fixa e limites, ou seja, o que não pode acontecer.
- **Personagens e locais:** uma descrição por palavras próprias. A partir dela, um LLM propõe tags booru fixas para o modelo de imagem. As tags que o modelo não conhece são eliminadas com base no vocabulário do WD14, e o autor afina o resto.
- **Character sheet:** quatro variantes da personagem em fundo branco. A que melhor corresponde às tags passa a ser a imagem de referência.
- **Resumo:** campanhas, onde os leitores pararam, que escolhas fizeram e até onde chegaram no cânone.

### Modelos

- **Argumento e moderação:** Qwen3.6-35B-A3B via vLLM. Propõe tags para personagens e locais e escreve o storyboard dos episódios (6–8 vinhetas, 2–3 escolhas e um campo de texto livre). Depois, um validador verifica personagens, lugares e regras do mundo.
- **Vinhetas:** SDXL via ComfyUI. O predefinido é o NoobAI-XL eps 1.1, o segundo estilo é o Hassaku XL (Illustrious) 3.4. Só estes modelos desenham personagens humanas.
- **Vinhetas vivas:** o Wan 2.2 transforma uma vinheta acabada num loop de 1–3 s, no máximo duas vinhetas animadas por episódio.
- **Controlo de conteúdo:** o tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Verifica cada vinheta e, consoante o público, descarta-a e volta a desenhá-la com uma nova seed. Para crianças recusa também roupa justa e reveladora. O mesmo tagger mede se a personagem na vinheta corresponde ao seu design.

A identidade da personagem é mantida apenas pelas tags. O IP-Adapter está preparado, mas na primeira medição mais estragava a imagem do que ajudava. O modelo não consegue manter duas personagens humanas no mesmo plano: troca-lhes o cabelo e a roupa. Por isso as histórias infantis dão a cada personagem a sua própria vinheta.

### Estilos

Um estilo é um preset com nome: checkpoint, sampler, número de passos, CFG e tags estéticas. O autor escolhe-o uma vez para todo o mundo. **clean_webtoon_noartist** tem cores planas e traço limpo, **hassaku_soft** sombreado suave e cores pastel. Nos visuais, o mesmo episódio aparece nos dois estilos lado a lado.

### Estado

O Toonfork está em alfa: a versão para Android está no Google Play, a build para macOS pode ser descarregada do GitHub e a App Store está em preparação. O Studio só funciona com o seu próprio backend (Go com uma fila de tarefas em Postgres) e não está disponível publicamente. As imagens e os textos são criados num servidor GPU próprio.

As capturas de ecrã são da versão web do Studio com a largura de um telemóvel, com um backend local. Nelas, o episódio 2 tem apenas argumento; as vinhetas ainda esperam para ser desenhadas. O código-fonte está em [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
