---
tagline: Shorturi verticale din șabloane de meme, cu personajele tale
visuals: {n} portrete din biblioteca de personaje — patru personaje, fiecare în douăsprezece emoții.
---
Un instrument în linie de comandă care transformă un șablon de meme într-un short vertical de șase până la cincisprezece secunde. Meme-ul original servește doar ca model pentru structura glumei — nu ajunge niciodată în rezultat. În locul lui joacă personaje proprii.

Nici un prompt, nici un seed nu păstrează un personaj consecvent, așa că imaginile nu se generează pentru fiecare short. Se creează o singură dată, ca bibliotecă aprobată *personaj × emoție*: Kiro, Mei, Taro și Yuki, fiecare în douăsprezece expresii, de la îngâmfare la epuizare.

Apoi shortul trece prin fluxul `classify → storyboard → generate → animate → compose → qa`. Fiecare pas se salvează separat și are drept cheie un hash al opțiunilor sale, așa că o rulare repetată nu costă nimic, iar o schimbare de text recalculează doar ce e necesar. Gluma o scrie un LLM sau o introduci tu de mână; subtitrările se randează direct în Go.

Rezultatul: 1080×1920, H.264, 30 fps, intensitate −14 LUFS și marcajul „AI generated” în imagine și în metadate.

Deocamdată rulează doar local și nu are nicio versiune lansată, așa că aici nu e nimic de descărcat.
Scris în Go; imaginile le generează FLUX.1-schnell pe propria mea mașină.
