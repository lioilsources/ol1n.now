---
tagline: Quadrinhos na vertical, até sem internet — histórias grátis, livros-jogo em que você escolhe e quadros que ganham vida
visuals: {n} imagens — quadros de cinco histórias infantis, uma comparação de dois estilos e character sheets.
---
Toonfork (antes chamado provisoriamente de Webtoon) é um leitor de quadrinhos na vertical que funciona também sem internet. Logo depois de instalar, ele já traz 15 histórias grátis, sem conta e sem cadastro. As histórias são criadas num servidor GPU próprio: um modelo de linguagem escreve o roteiro, um modelo de imagem desenha os quadros e os balões com o texto só são colocados pelo leitor, então dá para corrigir o texto sem gerar a imagem de novo.

As tiras prontas de cinco histórias infantis estão na subpágina Strips, e o ciclo de jogo com uma escolha no fim do episódio, na subpágina Gamebook.

### Leitor

Uma história é uma única faixa longa de quadros com balões, pensamentos, gritos e efeitos sonoros que você rola com o polegar de cima para baixo. Alguns quadros ganham vida em loops curtos: chuva na janela, luz na água, vento no cabelo. No fim do episódio você vê o que foi escolhido e o botão **Próximo episódio**. Depois do último episódio vem **Fim** e a sugestão de outra história.

### Livros-jogo

No livro-jogo quem decide a trama é você. No fim de cada parte você escolhe o que vem depois, e a história se ramifica. O app lembra onde você está, por onde passou e quais finais encontrou; o mapa do caminho mostra só o que você já visitou. Dá para recomeçar ou voltar um passo. Os livros-jogo são grátis: para crianças **Sara e a coroa negra**, para adultos, por exemplo, o drama intimista num consultório de psicologia **Aprender a calar**, **Céu de metal sobre nós** ou **O prado florido que ficou cinza**. Os dramas abordam temas difíceis e o perfil infantil os esconde.

Em beta há um editor de ramificações: em qualquer escolha você adiciona sua própria continuação, monta com as imagens do livro-jogo e escreve os balões. Você joga a ramificação na hora e pode mandá-la para o autor pelo compartilhamento, sem servidor nenhum.

### Pacotes

Pacotes opcionais acrescentam até 50 histórias: **Romance** (histórias de amor leves para adultos, sem cenas explícitas), **Infantil** e **Super-heróis**. O pacote é baixado depois da compra e lido offline. Uma única compra desbloqueia tudo, inclusive os pacotes que saírem depois.

### Perfil e bloqueio para pais

Na primeira abertura você escolhe o perfil **Infantil** ou **Adultos**. O perfil Infantil esconde o romance e os dramas na biblioteca e na loja. Toda compra e toda troca para Adultos são protegidas por um bloqueio para pais com uma conta de tabuada.

### 12 idiomas

Histórias, livros-jogo e textos do leitor estão em 12 idiomas: tcheco, inglês, alemão, francês, italiano, polonês, português brasileiro, japonês, coreano, vietnamita, russo e ucraniano. O idioma dos balões se troca em Ajustes.

### Privacidade

Sem conta, sem anúncios, sem rastreamento. O Toonfork não coleta dados pessoais; o que você comprou fica guardado no aparelho, e as compras podem ser restauradas em Ajustes.

## Studio: como as histórias nascem

A outra face do mesmo app é o Studio para o autor. O autor monta um mundo: lore, personagens, lugares e um cânone pelo qual toda história tem de passar. No Studio também dá para jogar de forma interativa: no fim do episódio o leitor escolhe o que o personagem faz em seguida, ou escreve com as próprias palavras, e da escolha nasce o próximo episódio. O texto livre passa antes pela moderação; num mundo infantil ela é mais rígida e, na dúvida, prefere recusar. As capturas de tela desta página são do Studio.

### Editor de mundo

O autor tem no app a aba **Criar**:

- **Básico:** título, sinopse, tom, idioma, público (Para crianças, A partir de 13 anos, Para adultos), visibilidade e um estilo visual que vale para o mundo inteiro.
- **Lore e cânone:** regras do mundo, facções, nós canônicos em ordem fixa e limites, ou seja, o que não pode acontecer.
- **Personagens e locais:** uma descrição com as próprias palavras. A partir dela, um LLM sugere tags booru fixas para o modelo de imagem. As tags que o modelo não conhece são descartadas com base no vocabulário do WD14, e o autor ajusta o resto.
- **Character sheet:** quatro variações do personagem em fundo branco. A que mais combina com as tags vira a imagem de referência.
- **Visão geral:** campanhas, onde os leitores pararam, quais escolhas fizeram e até onde chegaram no cânone.

### Modelos

- **Roteiro e moderação:** Qwen3.6-35B-A3B via vLLM. Sugere tags para personagens e locais e escreve o storyboard dos episódios (6–8 quadros, 2–3 escolhas e um campo de texto livre). Depois um validador confere personagens, lugares e regras do mundo.
- **Quadros:** SDXL via ComfyUI. O padrão é NoobAI-XL eps 1.1, o segundo estilo é Hassaku XL (Illustrious) 3.4. Só esses modelos desenham personagens humanos.
- **Quadros vivos:** o Wan 2.2 transforma um quadro pronto num loop de 1–3 s, no máximo dois quadros animados por episódio.
- **Controle de conteúdo:** o tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Ele confere cada quadro e, conforme o público, descarta e redesenha com uma nova seed. Para crianças, recusa também roupas justas e reveladoras. O mesmo tagger mede se o personagem no quadro corresponde ao seu design.

A identidade do personagem é mantida só pelas tags. O IP-Adapter está pronto, mas na primeira medição mais estragava a imagem. O modelo não segura dois personagens humanos na mesma cena: troca o cabelo e a roupa deles. Por isso as histórias infantis dão a cada personagem um quadro só seu.

### Estilos

Um estilo é um preset com nome: checkpoint, sampler, número de passos, CFG e tags estéticas. O autor escolhe uma vez para o mundo inteiro. **clean_webtoon_noartist** tem cores chapadas e traço limpo, **hassaku_soft** sombreamento suave e cores pastel. Nos visuais, o mesmo episódio aparece nos dois estilos lado a lado.

### Status

O Toonfork está em alfa: a versão para Android está no Google Play, o build para macOS pode ser baixado no GitHub e a App Store está em preparação. O Studio roda só contra o próprio backend (Go com fila de tarefas no Postgres) e não está disponível publicamente. Imagens e textos são criados num servidor GPU próprio.

As capturas de tela são da versão web do Studio na largura de um celular, com backend local. Nelas o episódio 2 tem só o roteiro; os quadros ainda esperam para ser desenhados. O código-fonte está em [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
