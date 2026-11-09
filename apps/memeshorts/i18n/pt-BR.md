---
tagline: Shorts verticais a partir de templates de memes, com seus próprios personagens
visuals: {n} retratos da biblioteca de personagens — quatro personagens, cada um em doze emoções.
---
Uma ferramenta de linha de comando que transforma um template de meme em um short vertical de seis a quinze segundos. O meme original serve só como modelo da estrutura da piada — ele nunca chega ao resultado. No lugar dele, atuam personagens próprios.

Nem um prompt nem uma seed mantêm um personagem consistente, então as imagens não são geradas para cada short. Elas são criadas uma única vez, como uma biblioteca aprovada de *personagem × emoção*: Kiro, Mei, Taro e Yuki, cada um em doze expressões, da presunção à exaustão.

Depois o short passa pelo pipeline `classify → storyboard → generate → animate → compose → qa`. Cada etapa é salva separadamente e indexada por um hash das suas opções, então rodar de novo não custa nada e uma mudança no texto recalcula só o necessário. A piada é escrita por um LLM ou você digita na mão; as legendas são renderizadas direto em Go.

A saída é 1080×1920, H.264, 30 fps, loudness de −14 LUFS e o selo “AI generated” na imagem e nos metadados.

Por enquanto roda só localmente e não tem versão lançada, então não há nada para baixar aqui.
Escrito em Go; as imagens são geradas pelo FLUX.1-schnell na minha própria máquina.
