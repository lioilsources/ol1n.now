---
tagline: Telegram bot za mangu od kockica, restyle fotografija, novu frizuru i animaciju fotografija
---
TsumikiMangaBot (prije MangaPrompts) slaže promptove za AI generiranje slika na LEGO način — biraš kockice na otprilike dvadeset i pet osi (medij, likovna tradicija, stil glave, manga stil, povijesno razdoblje) i od njih nastaje cijeli prompt. Tu ne staje: prompt odmah šalje na generiranje, a sliku ti vraća natrag.

### Još kartica

Uz slagalicu Mini App ima prekidač kartica:

- **Restyle fotografije** — učitaš fotografiju, odabereš stil i dobiješ istu osobu u istoj pozi u tom stilu. Prekidačem fotografija / ilustracija biraš medij, a stilova je više od devedeset u šest skupina (popularni, slikari, likovne tradicije po regijama).
- **Isprobaj frizuru** — na portretu iscrtava samo kosu, po želji i s novom bojom. Svaka frizura ima pregled na istom licu, pa uspoređuješ samo kosu.
- **Pokreni fotografiju** — od fotografije i odabrane scene nastaje kratki video koji stiže u chat.

### Kako početi

Ništa se ne instalira, radi kao Telegram Mini App:

1. U Telegramu otvori [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — ili ga pronađi u pretrazi pod imenom **Tsumiki**.
2. Napiši `/start`. Bot odgovara gumbom **🎨 Open Tsumiki**.
3. Klikni na njega, složi kockice i pokreni generiranje.

Gotova slika pojavi se izravno u aplikaciji **i istovremeno stigne u chat**, pa je imaš u povijesti i možeš je odmah proslijediti. Ako preskočiš `/start` i otvoriš aplikaciju izravno, generiranje također radi — samo ti slika neće stići u chat, jer Telegram botu ne dopušta da se javi prvi.

### Koliko košta

**Tri generiranja besplatno svaka 24 sata.** Nakon toga 1 kredit = 1 slika, a krediti se kupuju za **Telegram Stars** izravno u aplikaciji — 10 kredita za 25 ⭐, 50 za 100 ⭐, 250 za 400 ⭐. Restyle i frizura plaćaju se kao slika, frizura tek kad analiza prihvati fotografiju. Animacija ima vlastiti brojač: jedna dnevno besplatno, svaka sljedeća za 10 ⭐. Ako generiranje ne uspije, kredit se vraća. Kod problema s plaćanjem pomaže naredba `/paysupport`, povrat novca rješavam u roku od 48 sati.

### Što radi ispod haube

Mini App je Flutter web na Cloudflare Pagesu. Prompt iz nje putuje na backend (FastAPI + aiogram) koji radi na kućnom NAS-u, a odande u **ComfyUI** — prema odabranom predlošku bira se workflow (FLUX, Pony, Juggernaut XL Lightning ili WAI Illustrious). Restyle drži lice preko PuLID-a ili InstantID-a, a pozu preko depth ControlNeta, animacija radi na Wan 2.2. Kredite i plaćanja čuva SQLite na strani backenda.

### Nativne aplikacije

Buildovi ispod za macOS, Windows, Linux, Android i iOS puna su verzija slagalice promptova i uz to imaju način **Repose**, kojeg u Telegramu nema: učitaš lice, odabereš pozu i aplikacija generira sliku te osobe u toj pozi s vjernim licem (InstantID + depth ControlNet + hi-res + FaceDetailer). Repose se ipak spaja izravno na ComfyUI, pa mu nativna aplikacija mora moći pristupiti.

Izrađeno u Flutteru.
