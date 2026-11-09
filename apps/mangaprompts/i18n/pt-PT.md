---
tagline: Bot do Telegram para manga em blocos, restyle de fotografias, novo penteado e fotos animadas
---
O TsumikiMangaBot (antes MangaPrompts) monta prompts para gerar imagens com IA ao estilo LEGO — escolhes blocos em cerca de vinte e cinco eixos (meio, tradição artística, estilo de cabeça, estilo de manga, período histórico) e deles nasce um prompt completo. E não fica por aí: envia logo o prompt para a geração e devolve-te a imagem.

### Mais cartões

Além do montador, a Mini App tem um seletor de cartões:

- **Restyle de fotografia** — carregas uma fotografia, escolhes um estilo e recebes a mesma pessoa na mesma pose nesse estilo. Com o interruptor fotografia / ilustração escolhes o meio, e há mais de noventa estilos em seis grupos (populares, pintores, tradições artísticas por região).
- **Experimenta um penteado** — redesenha apenas o cabelo num retrato, se quiseres também com uma cor nova. Cada penteado tem uma pré-visualização no mesmo rosto, por isso comparas só o cabelo.
- **Dá vida à fotografia** — a partir de uma fotografia e de uma cena escolhida nasce um vídeo curto que chega ao chat.

### Como começar

Não é preciso instalar nada, funciona como Telegram Mini App:

1. No Telegram, abre [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — ou procura-o pelo nome **Tsumiki**.
2. Escreve `/start`. O bot responde com o botão **🎨 Open Tsumiki**.
3. Toca nele, junta os blocos e manda gerar.

A imagem pronta aparece diretamente na app **e chega também ao chat**, por isso fica no teu histórico e podes reencaminhá-la de imediato. Se saltares o `/start` e abrires a app diretamente, a geração também funciona — só que a imagem não te chega ao chat, porque o Telegram não deixa um bot escrever primeiro.

### Quanto custa

**Três gerações gratuitas a cada 24 horas.** Depois, 1 crédito = 1 imagem, e os créditos compram-se com **Telegram Stars** diretamente na app — 10 créditos por 25 ⭐, 50 por 100 ⭐, 250 por 400 ⭐. O restyle e o penteado custam o mesmo que uma imagem, o penteado só depois de a análise aceitar a fotografia. A animação tem um contador próprio: uma por dia gratuita, as seguintes por 10 ⭐. Se uma geração falhar, o crédito é devolvido. Para problemas com pagamentos existe o comando `/paysupport`, e trato dos reembolsos no prazo de 48 horas.

### O que corre por baixo

A Mini App é Flutter web no Cloudflare Pages. O prompt segue dela para um backend (FastAPI + aiogram) que corre num NAS em casa e daí para o **ComfyUI** — consoante o modelo escolhido, é selecionado o workflow (FLUX, Pony, Juggernaut XL Lightning ou WAI Illustrious). O restyle mantém o rosto com PuLID ou InstantID e a pose com depth ControlNet, e a animação corre no Wan 2.2. Os créditos e os pagamentos ficam em SQLite no backend.

### Apps nativas

As builds abaixo para macOS, Windows, Linux, Android e iOS são o montador de prompts completo e têm ainda o modo **Repose**, que não existe no Telegram: carregas um rosto, escolhes uma pose e a app gera uma imagem dessa pessoa nessa pose com um rosto fiel (InstantID + depth ControlNet + hi-res + FaceDetailer). Mas o Repose liga-se diretamente ao ComfyUI, por isso a app nativa tem de conseguir chegar até ele.

Feito com Flutter.
