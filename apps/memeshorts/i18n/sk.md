---
tagline: Z meme šablón vertikálne shorty s vlastnými postavami
visuals: {n} portrétov z knižnice postáv — štyri postavy, každá v dvanástich emóciách.
---
Nástroj pre príkazový riadok, ktorý z meme šablóny urobí šesť- až pätnásťsekundový vertikálny short. Originál memu slúži len ako predloha štruktúry vtipu — do výstupu sa nikdy nedostane. Namiesto neho hrajú vlastné postavy.

Postavu neudrží prompt ani seed, takže sa obrázky negenerujú pre každý short zvlášť. Vznikajú raz ako schválená knižnica *postava × emócia*: Kiro, Mei, Taro a Yuki, každý v dvanástich výrazoch od samoľúbosti po vyčerpanie.

Short potom prejde rúrou `classify → storyboard → generate → animate → compose → qa`. Každý krok sa ukladá zvlášť a je kľúčovaný hashom svojich volieb, takže opakovaný beh je zadarmo a zmena textu prepočíta len to, čo musí. Vtip napíše LLM alebo ho zadáš ručne; titulky sa renderujú priamo v Go.

Výstup je 1080×1920, H.264, 30 fps, hlasitosť −14 LUFS a označenie „AI generated“ v obraze aj v metadátach.

Zatiaľ beží len lokálne a nemá vydanú verziu, takže tu nie je čo stiahnuť.
Napísané v Go, obrázky generuje FLUX.1-schnell na vlastnom stroji.
