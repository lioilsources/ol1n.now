---
tagline: Bot Telegram untuk manga daripada blok, restyle foto, gaya rambut baharu dan animasi foto
---
TsumikiMangaBot (dahulu MangaPrompts) menyusun prompt untuk penjanaan imej AI gaya LEGO — anda memilih blok binaan pada kira-kira dua puluh lima paksi (medium, tradisi seni, gaya kepala, gaya manga, zaman sejarah) dan daripadanya terhasil prompt yang lengkap. Bukan setakat itu: prompt terus dihantar untuk dijana dan imej dihantar semula kepada anda.

### Kad lain

Selain penyusun, Mini App mempunyai penukar kad:

- **Restyle foto** — muat naik foto, pilih gaya dan dapatkan orang yang sama dalam pose yang sama dengan gaya itu. Suis foto / ilustrasi memilih medium, dan terdapat lebih sembilan puluh gaya dalam enam kumpulan (popular, pelukis, tradisi seni mengikut wilayah).
- **Cuba gaya rambut** — melukis semula rambut sahaja pada potret, jika mahu dengan warna baharu juga. Setiap gaya rambut ada pratonton pada wajah yang sama, jadi anda hanya membandingkan rambut.
- **Hidupkan foto** — daripada foto dan babak pilihan terhasil video pendek yang dihantar ke sembang.

### Cara bermula

Tiada apa-apa untuk dipasang, ia berjalan sebagai Telegram Mini App:

1. Dalam Telegram, buka [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — atau cari dengan nama **Tsumiki**.
2. Taip `/start`. Bot membalas dengan butang **🎨 Open Tsumiki**.
3. Ketik butang itu, susun blok dan mulakan penjanaan.

Imej siap terus muncul dalam aplikasi **dan pada masa yang sama dihantar ke sembang**, jadi ia ada dalam sejarah dan boleh terus dimajukan. Jika anda langkau `/start` dan buka aplikasi terus, penjanaan tetap berfungsi — cuma imej tidak sampai ke sembang, kerana Telegram tidak membenarkan bot menulis dahulu.

### Berapa kosnya

**Tiga penjanaan percuma setiap 24 jam.** Selepas itu 1 kredit = 1 imej, dan kredit dibeli dengan **Telegram Stars** terus dalam aplikasi — 10 kredit untuk 25 ⭐, 50 untuk 100 ⭐, 250 untuk 400 ⭐. Restyle dan gaya rambut berharga sama seperti imej, gaya rambut hanya selepas analisis menerima foto. Animasi ada pembilangnya sendiri: satu sehari percuma, seterusnya 10 ⭐. Jika penjanaan gagal, kredit dikembalikan. Untuk masalah pembayaran, gunakan arahan `/paysupport`; bayaran balik saya uruskan dalam 48 jam.

### Apa yang berjalan di sebalik tabir

Mini App ialah Flutter web di Cloudflare Pages. Prompt bergerak dari situ ke backend (FastAPI + aiogram) yang berjalan pada NAS di rumah dan dari sana ke **ComfyUI** — workflow dipilih mengikut templat yang dipilih (FLUX, Pony, Juggernaut XL Lightning atau WAI Illustrious). Restyle mengekalkan wajah melalui PuLID atau InstantID dan pose melalui depth ControlNet, manakala animasi berjalan pada Wan 2.2. Kredit dan pembayaran disimpan dalam SQLite di bahagian backend.

### Aplikasi asli

Build di bawah untuk macOS, Windows, Linux, Android dan iOS ialah penyusun prompt versi penuh dan turut mempunyai mod **Repose** yang tiada dalam Telegram: muat naik wajah, pilih pose dan aplikasi menjana imej orang itu dalam pose tersebut dengan wajah yang tepat (InstantID + depth ControlNet + hi-res + FaceDetailer). Namun Repose bersambung terus ke ComfyUI, jadi aplikasi asli mesti dapat mencapainya.

Dibina dengan Flutter.
