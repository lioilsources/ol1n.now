---
slug: memeshorts
name: MemeShorts
repo:
tagline: Z meme šablon vertikální shorty s vlastními postavami
order: 21
featured: false
desktop: macos,linux
mobile:
visuals: {n} portrétů z knihovny postav — čtyři postavy, každá ve dvanácti emocích.
appstore:
playstore:
testflight:
---
Nástroj pro příkazovou řádku, který z meme šablony udělá šesti- až
patnáctivteřinový vertikální short. Originál memu slouží jen jako předloha
struktury vtipu — do výstupu se nikdy nedostane. Místo něj hrají vlastní
postavy.

Postavu neudrží prompt ani seed, takže se obrázky negenerují pro každý short
zvlášť. Vznikají jednou jako schválená knihovna *postava × emoce*: Kiro, Mei,
Taro a Yuki, každý ve dvanácti výrazech od samolibosti po vyčerpání.

Short pak projde rourou `classify → storyboard → generate → animate → compose
→ qa`. Každý krok se ukládá zvlášť a je klíčovaný hashem svých voleb, takže
opakovaný běh je zadarmo a změna textu přepočítá jen to, co musí. Vtip napíše
LLM nebo ho zadáš ručně; titulky se renderují přímo v Go.

Výstup je 1080×1920, H.264, 30 fps, hlasitost −14 LUFS a označení
„AI generated“ v obraze i v metadatech.

Zatím běží jen lokálně a zdrojáky nejsou veřejné, takže tu není co stáhnout.
Napsáno v Go, obrázky generuje FLUX.1-schnell na vlastním stroji.
