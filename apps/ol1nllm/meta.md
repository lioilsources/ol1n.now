---
slug: ol1nllm
name: Ol1nLLM
repo: lioilsources/Ol1nLLM
icon_src: ios/Runner/Assets.xcassets/AppIcon.appiconset/Icon-App-1024x1024@1x.png
tagline: AI chat s rolemi, Knihovník a Právník, studio na obrázky, video, pohádky, hudbu a hlas
order: 8
featured: false
langs: cs,en,ar,bn,ca,da,de,el,es,fi,fr,gu,he,hi,hr,hu,id,it,ja,kn,ko,ml,mr,ms,nb,nl,or,pa,pl,pt-BR,pt-PT,ro,ru,sk,sl,sv,ta,te,th,tr,uk,ur,vi,zh-Hans,zh-Hant
desktop: macos,windows,linux
mobile: android,ios
appstore:
playstore:
testflight:
---
Ol1nLLM je jedna appka nad vlastním serverem: povídá si, hledá v knihovně
a v zákonech, kreslí, rozhýbe obrázek do videa, natočí pohádku, složí hudbu
a odpovědi přečte nahraným hlasem.
Podrobný průvodce se screenshoty je na stránce
[Co appka umí](ol1nllm-features.html).

### Chat

Konverzace začíná výběrem **role** — deset povah od pětiletého dítěte po
dědečka, a čtyři asistenti s vlastními daty. Odpověď se píše průběžně,
konverzace se dá **větvit** a roli jde změnit uprostřed.

- **Knihovník** odpovídá z korpusu filosofie a posvátných textů v původních
  jazycích a ukazuje pasáže, ze kterých čerpal, s českým překladem.
- **Právník** odpovídá z účinných zákonů ČR a cituje paragrafy.
- **Právník – smlouvy** sepíše smlouvu ze šablony: ptá se po kartách a hlídá
  zákonné limity.
- **Leads** hledá firmy a instituce v Registru smluv.

### Image Studio

Obrázek vzniká po kolech, která tvoří strom: text → obraz, pak úpravy
vybrané varianty. Devatenáct modelů (FLUX, SDXL, anime linie), přes
tři sta výtvarných **stylů** (kultury a epochy, umělci, média), šablony
**póz**, **LoRA** ze serveru a negativní prompt psaný velkými písmeny.

- **Zachovej pózu** a **Zachovat tvář** — nová postava v postoji z předlohy,
  volitelně i s jejím obličejem.
- **Mapa stylů** — stovky obrázků téhož námětu srovnané podle podobnosti;
  prst jede po mozaice a styl se mění jako animace, vybraný se použije.
- **Inpaint** — zamaluješ oblast a popíšeš, co tam má být.
- **Kadeřník** — nový účes nebo barva vlasů bez kreslení masky.
- **Rozhýbat** — z obrázku krátké video: tance a gesta ze serveru, nebo
  vlastní popis pohybu.
- **3D** — model k tisku (STL), nebo tančící figurka s kostrou.

### Story Studio

Vybereš pohádku z deseti scénářů, obsadíš role vlastními obrázky a server
z ní udělá minutové animované video s vypravěčem, hudbou a titulky. Záběry
jde před animací zkontrolovat a nepovedené nechat překreslit.

### Music Studio

Dáš studiu hudební ukázku — ze souboru nebo nahranou mikrofonem — a ono
z ní vyčte žánr, tempo a tóninu. **Vibe** složí novou skladbu ve stejném
duchu, **Groove** přearanžuje tu původní do jiného žánru.

### Voice Studio

Z krátké nahrávky — i ze zvukové stopy videa — vznikne vlastní **hlas**.
Kterýkoli hlas jde vyzkoušet na libovolné větě a přiřadit roli v chatu.
Reproduktor pod odpovědí ji pak přečte hlasem té role.

### Historie

Konverzace, sezení, projekty i pohádky zůstávají v telefonu. Dlouhé úlohy
běží na serveru: appku jde zavřít a po návratu se k nim sama připojí.

Postaveno ve Flutteru, běží na mobilu i desktopu. Appka je klient k vlastnímu
serveru s modely; bez něj nic negeneruje.
