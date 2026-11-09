---
tagline: Vertikalni shortovi iz predložaka memova, s vlastitim likovima
visuals: {n} portreta iz knjižnice likova — četiri lika, svaki u dvanaest emocija.
---
Alat za naredbeni redak koji od predloška mema napravi vertikalni short od šest do petnaest sekundi. Izvorni mem služi samo kao predložak za strukturu šale — u rezultat nikad ne dospije. Umjesto njega glume vlastiti likovi.

Lik ne može zadržati ni prompt ni seed, pa se slike ne generiraju za svaki short posebno. Nastaju jednom, kao odobrena knjižnica *lik × emocija*: Kiro, Mei, Taro i Yuki, svaki u dvanaest izraza, od samodopadnosti do iscrpljenosti.

Short zatim prolazi kroz cjevovod `classify → storyboard → generate → animate → compose → qa`. Svaki se korak sprema zasebno i ključan je hashem svojih opcija, pa je ponovno pokretanje besplatno, a promjena teksta preračuna samo ono što mora. Šalu napiše LLM ili je upišeš ručno; titlovi se renderiraju izravno u Go-u.

Izlaz je 1080×1920, H.264, 30 fps, glasnoća −14 LUFS i oznaka „AI generated” u slici i u metapodacima.

Zasad radi samo lokalno i nema objavljenu verziju, pa ovdje nema što preuzeti.
Napisano u Go-u, slike generira FLUX.1-schnell na mom vlastitom računalu.
