---
tagline: Bot do Telegram para mangá em blocos, restyle de fotos, novo penteado e fotos animadas
---
O TsumikiMangaBot (antes MangaPrompts) monta prompts para geração de imagens com IA no estilo LEGO — você escolhe blocos em uns vinte e cinco eixos (meio, tradição artística, estilo de cabeça, estilo de mangá, período histórico) e deles sai um prompt completo. E não para por aí: ele já manda o prompt para a geração e te devolve a imagem.

### Mais cards

Além do montador, a Mini App tem um seletor de cards:

- **Restyle de foto** — você envia uma foto, escolhe um estilo e recebe a mesma pessoa na mesma pose nesse estilo. Com a chave foto / ilustração você escolhe o meio, e são mais de noventa estilos em seis grupos (populares, pintores, tradições artísticas por região).
- **Teste um penteado** — redesenha só o cabelo de um retrato, se quiser também com uma cor nova. Cada penteado tem uma prévia no mesmo rosto, então você compara só o cabelo.
- **Dê vida à foto** — a partir de uma foto e de uma cena escolhida sai um vídeo curto que chega no chat.

### Como começar

Não precisa instalar nada, funciona como Telegram Mini App:

1. No Telegram, abra [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — ou procure pelo nome **Tsumiki**.
2. Digite `/start`. O bot responde com o botão **🎨 Open Tsumiki**.
3. Toque nele, monte os blocos e mande gerar.

A imagem pronta aparece direto no app **e também chega no chat**, então fica no seu histórico e você pode encaminhar na hora. Se você pular o `/start` e abrir o app diretamente, a geração funciona do mesmo jeito — só que a imagem não chega no chat, porque o Telegram não deixa um bot escrever primeiro.

### Quanto custa

**Três gerações grátis a cada 24 horas.** Depois, 1 crédito = 1 imagem, e os créditos são comprados com **Telegram Stars** direto no app — 10 créditos por 25 ⭐, 50 por 100 ⭐, 250 por 400 ⭐. Restyle e penteado custam o mesmo que uma imagem, o penteado só depois que a análise aceita a foto. A animação tem um contador próprio: uma por dia grátis, as outras por 10 ⭐. Se uma geração falhar, o crédito volta. Para problemas com pagamento existe o comando `/paysupport`, e eu resolvo reembolsos em até 48 horas.

### O que roda por baixo

A Mini App é Flutter web no Cloudflare Pages. O prompt vai dela para um backend (FastAPI + aiogram) rodando num NAS em casa e de lá para o **ComfyUI** — o workflow é escolhido conforme o template selecionado (FLUX, Pony, Juggernaut XL Lightning ou WAI Illustrious). O restyle mantém o rosto com PuLID ou InstantID e a pose com depth ControlNet, e a animação roda no Wan 2.2. Créditos e pagamentos ficam em SQLite no backend.

### Apps nativos

Os builds abaixo para macOS, Windows, Linux, Android e iOS são o montador de prompts completo e ainda têm o modo **Repose**, que não existe no Telegram: você envia um rosto, escolhe uma pose e o app gera uma imagem dessa pessoa nessa pose com o rosto fiel (InstantID + depth ControlNet + hi-res + FaceDetailer). Só que o Repose fala direto com o ComfyUI, então o app nativo precisa conseguir alcançá-lo.

Feito com Flutter.
