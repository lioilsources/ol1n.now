---
tagline: Shorts verticais a partir de modelos de memes, com as tuas próprias personagens
visuals: {n} retratos da biblioteca de personagens — quatro personagens, cada uma em doze emoções.
---
Uma ferramenta de linha de comandos que transforma um modelo de meme num short vertical de seis a quinze segundos. O meme original serve apenas de molde para a estrutura da piada — nunca chega ao resultado. Em vez dele, entram em cena personagens próprias.

Nem um prompt nem uma seed conseguem manter uma personagem coerente, por isso as imagens não são geradas para cada short. São criadas uma única vez, como uma biblioteca aprovada de *personagem × emoção*: Kiro, Mei, Taro e Yuki, cada uma em doze expressões, da presunção à exaustão.

O short passa depois pela cadeia `classify → storyboard → generate → animate → compose → qa`. Cada passo é guardado separadamente e identificado por um hash das suas opções, por isso voltar a correr não custa nada e uma alteração ao texto só recalcula o que é preciso. A piada é escrita por um LLM ou introduze-la tu à mão; as legendas são renderizadas diretamente em Go.

O resultado é 1080×1920, H.264, 30 fps, sonoridade de −14 LUFS e a indicação «AI generated» na imagem e nos metadados.

Por agora só corre localmente e não tem nenhuma versão publicada, por isso aqui não há nada para descarregar.
Escrito em Go; as imagens são geradas pelo FLUX.1-schnell na minha própria máquina.
