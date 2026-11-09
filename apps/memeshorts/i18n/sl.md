---
tagline: Iz predlog memov navpični shorti z lastnimi liki
visuals: {n} portretov iz knjižnice likov — štirje liki, vsak v dvanajstih čustvih.
---
Orodje za ukazno vrstico, ki iz predloge mema naredi šest- do petnajstsekundni navpični short. Izvirni mem služi le kot predloga za zgradbo šale — v izhod nikoli ne pride. Namesto njega igrajo lastni liki.

Lika ne obdrži ne prompt ne seed, zato se slike ne generirajo za vsak short posebej. Nastanejo enkrat, kot odobrena knjižnica *lik × čustvo*: Kiro, Mei, Taro in Yuki, vsak v dvanajstih izrazih, od samovšečnosti do izčrpanosti.

Short nato gre skozi cevovod `classify → storyboard → generate → animate → compose → qa`. Vsak korak se shrani posebej in je označen s hashem svojih nastavitev, zato je ponoven zagon zastonj, sprememba besedila pa preračuna le, kar mora. Šalo napiše LLM ali jo vneseš ročno; podnapisi se izrišejo neposredno v Go.

Izhod je 1080×1920, H.264, 30 fps, glasnost −14 LUFS in oznaka »AI generated« v sliki in v metapodatkih.

Zaenkrat teče le lokalno in nima izdane različice, zato tu ni česa prenesti.
Napisano v Go, slike ustvarja FLUX.1-schnell na mojem lastnem računalniku.
