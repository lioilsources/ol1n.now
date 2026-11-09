---
tagline: Bot de Telegram per a manga amb blocs, restyle de fotos, un pentinat nou i fotos animades
---
TsumikiMangaBot (abans MangaPrompts) munta prompts per generar imatges amb IA a l'estil LEGO: tries blocs en uns vint-i-cinc eixos (mitjà, tradició artística, estil de cap, estil manga, època històrica) i en surt un prompt complet. I no s'hi queda: envia el prompt directament a generar i et torna la imatge.

### Més targetes

A més del constructor, la Mini App té un selector de targetes:

- **Restyle de foto**: puges una foto, tries un estil i obtens la mateixa persona en la mateixa postura amb aquest estil. Amb l'interruptor foto / il·lustració tries el mitjà; hi ha més de noranta estils en sis grups (populars, pintors, tradicions artístiques per regions).
- **Prova un pentinat**: redibuixa només els cabells d'un retrat, si vols també amb un color nou. Cada pentinat té una previsualització sobre la mateixa cara, així només compares els cabells.
- **Dona vida a la foto**: a partir d'una foto i d'una escena triada es crea un vídeo curt que arriba al xat.

### Com començar

No cal instal·lar res, funciona com a Telegram Mini App:

1. A Telegram obre [@tsumikimanga_bot](https://t.me/tsumikimanga_bot), o cerca'l pel nom **Tsumiki**.
2. Escriu `/start`. El bot respon amb el botó **🎨 Open Tsumiki**.
3. Toca'l, ajunta els blocs i fes generar.

La imatge acabada apareix directament a l'app **i alhora arriba al xat**, així la tens a l'historial i la pots reenviar de seguida. Si et saltes `/start` i obres l'app directament, la generació també funciona, però la imatge no t'arribarà al xat, perquè Telegram no deixa que un bot escrigui primer.

### Quant costa

**Tres generacions gratis cada 24 hores.** Després, 1 crèdit = 1 imatge, i els crèdits es compren amb **Telegram Stars** dins l'app: 10 crèdits per 25 ⭐, 50 per 100 ⭐, 250 per 400 ⭐. El restyle i el pentinat costen el mateix que una imatge; el pentinat, només quan l'anàlisi accepta la foto. L'animació té un comptador propi: una al dia gratis, les altres per 10 ⭐. Si una generació falla, el crèdit es retorna. Per a problemes amb el pagament hi ha l'ordre `/paysupport`; els reemborsaments els gestiono en 48 hores.

### Què hi ha a sota

La Mini App és Flutter web a Cloudflare Pages. D'allà el prompt va a un backend (FastAPI + aiogram) que corre en un NAS de casa i d'allà a **ComfyUI**: segons la plantilla triada s'escull el workflow (FLUX, Pony, Juggernaut XL Lightning o WAI Illustrious). El restyle manté la cara amb PuLID o InstantID i la postura amb depth ControlNet, i l'animació funciona amb Wan 2.2. Els crèdits i els pagaments es guarden en SQLite al backend.

### Apps natives

Les builds de sota per a macOS, Windows, Linux, Android i iOS són el constructor de prompts complet i, a més, tenen el mode **Repose**, que no existeix a Telegram: puges una cara, tries una postura i l'app genera una imatge d'aquesta persona en aquesta postura amb una cara fidel (InstantID + depth ControlNet + hi-res + FaceDetailer). Això sí, Repose es connecta directament a ComfyUI, així que l'app nativa hi ha de poder arribar.

Fet amb Flutter.
