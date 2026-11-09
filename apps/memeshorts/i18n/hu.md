---
tagline: Függőleges shortok mémsablonokból, saját szereplőkkel
visuals: {n} portré a szereplőkönyvtárból — négy szereplő, mindegyik tizenkét érzelemben.
---
Parancssori eszköz, amely egy mémsablonból hat–tizenöt másodperces függőleges shortot készít. Az eredeti mém csak a poén szerkezetének mintájául szolgál — a kimenetbe soha nem kerül bele. Helyette saját szereplők játszanak.

Egy szereplőt sem prompt, sem seed nem tart meg egységesnek, ezért a képek nem minden shorthoz külön készülnek. Egyszer jönnek létre, jóváhagyott *szereplő × érzelem* könyvtárként: Kiro, Mei, Taro és Yuki, mindegyik tizenkét arckifejezésben az önelégültségtől a kimerültségig.

A short ezután végigmegy a `classify → storyboard → generate → animate → compose → qa` folyamaton. Minden lépés külön mentődik, és a beállításai hash-ével van kulcsolva, így az újrafuttatás ingyenes, a szöveg módosítása pedig csak azt számolja újra, amit muszáj. A poént egy LLM írja, vagy te adod meg kézzel; a feliratok közvetlenül Go-ban renderelődnek.

A kimenet 1080×1920, H.264, 30 fps, −14 LUFS hangosság, és „AI generated” jelölés a képen és a metaadatokban is.

Egyelőre csak helyben fut, és nincs kiadott verziója, így itt nincs mit letölteni.
Go-ban írva, a képeket a FLUX.1-schnell generálja a saját gépemen.
