---
tagline: Bot Telegram untuk manga dari balok, restyle foto, gaya rambut baru, dan animasi foto
---
TsumikiMangaBot (dulu MangaPrompts) menyusun prompt untuk pembuatan gambar AI ala LEGO — kamu memilih balok penyusun di sekitar dua puluh lima sumbu (medium, tradisi seni, gaya kepala, gaya manga, periode sejarah) dan dari situ jadilah prompt yang lengkap. Tidak berhenti di situ: prompt langsung dikirim untuk dibuat gambarnya, lalu gambarnya dikirim balik ke kamu.

### Kartu lainnya

Selain penyusun, Mini App punya pengalih kartu:

- **Restyle foto** — unggah foto, pilih gaya, dan kamu dapat orang yang sama dalam pose yang sama dengan gaya itu. Sakelar foto / ilustrasi memilih mediumnya, dan ada lebih dari sembilan puluh gaya dalam enam grup (populer, pelukis, tradisi seni per wilayah).
- **Coba gaya rambut** — hanya menggambar ulang rambut pada potret, kalau mau sekalian dengan warna baru. Setiap gaya rambut punya pratinjau di wajah yang sama, jadi kamu cuma membandingkan rambutnya.
- **Hidupkan foto** — dari foto dan adegan pilihan jadilah video pendek yang dikirim ke chat.

### Cara mulai

Tidak ada yang perlu dipasang, semuanya berjalan sebagai Telegram Mini App:

1. Di Telegram, buka [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — atau cari dengan nama **Tsumiki**.
2. Ketik `/start`. Bot membalas dengan tombol **🎨 Open Tsumiki**.
3. Ketuk tombolnya, susun balok, lalu buat gambarnya.

Gambar yang sudah jadi langsung muncul di aplikasi **sekaligus dikirim ke chat**, jadi tersimpan di riwayat dan bisa langsung kamu teruskan. Kalau kamu melewatkan `/start` dan membuka aplikasi langsung, pembuatan gambar tetap jalan — hanya saja gambarnya tidak sampai ke chat, karena Telegram tidak mengizinkan bot mengirim pesan duluan.

### Berapa biayanya

**Tiga kali pembuatan gratis setiap 24 jam.** Setelah itu 1 kredit = 1 gambar, dan kredit dibeli dengan **Telegram Stars** langsung di aplikasi — 10 kredit seharga 25 ⭐, 50 seharga 100 ⭐, 250 seharga 400 ⭐. Restyle dan gaya rambut dihitung sama seperti satu gambar, gaya rambut baru dipotong setelah analisis menerima fotonya. Animasi punya penghitung sendiri: satu per hari gratis, berikutnya 10 ⭐. Kalau pembuatan gagal, kredit dikembalikan. Untuk masalah pembayaran ada perintah `/paysupport`, dan pengembalian dana saya urus dalam 48 jam.

### Apa yang ada di balik layar

Mini App ini Flutter web di Cloudflare Pages. Prompt dikirim dari sana ke backend (FastAPI + aiogram) yang berjalan di NAS rumahan, lalu ke **ComfyUI** — workflow dipilih sesuai templat yang dipilih (FLUX, Pony, Juggernaut XL Lightning, atau WAI Illustrious). Restyle menjaga wajah dengan PuLID atau InstantID dan pose dengan depth ControlNet, sedangkan animasi berjalan di Wan 2.2. Kredit dan pembayaran disimpan di SQLite di sisi backend.

### Aplikasi native

Build di bawah untuk macOS, Windows, Linux, Android, dan iOS adalah versi lengkap penyusun prompt dan punya mode tambahan **Repose** yang tidak ada di Telegram: unggah wajah, pilih pose, dan aplikasi membuat gambar orang itu dalam pose tersebut dengan wajah yang setia (InstantID + depth ControlNet + hi-res + FaceDetailer). Namun Repose terhubung langsung ke ComfyUI, jadi aplikasi native harus bisa menjangkaunya.

Dibuat dengan Flutter.
