---
tagline: Komik vertikal yang bisa dibaca tanpa internet — cerita gratis, gamebook yang pilihannya di tanganmu, dan panel yang hidup
visuals: {n} gambar — panel dari lima cerita anak, perbandingan dua gaya, dan character sheet.
---
Toonfork (nama sementara Webtoon) adalah pembaca komik vertikal yang juga berfungsi tanpa internet. Begitu dipasang, sudah ada 15 cerita gratis di dalamnya, tanpa akun dan tanpa pendaftaran. Cerita-ceritanya dibuat di server GPU sendiri: model bahasa menulis naskah, model gambar menggambar panel, dan balon kata berisi teks baru ditambahkan oleh pembaca, jadi teks bisa diperbaiki tanpa membuat ulang gambarnya.

Strip jadi dari lima cerita anak ada di subhalaman Strips, dan alur permainan dengan pilihan di akhir episode ada di subhalaman Gamebook.

### Pembaca

Sebuah cerita adalah satu lajur panjang berisi panel dengan balon kata, pikiran, teriakan, dan efek suara yang kamu gulir dengan jempol dari atas ke bawah. Beberapa panel menjadi hidup dalam loop singkat: hujan di jendela, cahaya di permukaan air, angin di rambut. Di akhir episode kamu melihat apa yang dipilih dan tombol **Episode berikutnya**. Setelah episode terakhir muncul **Tamat** dan saran cerita berikutnya.

### Gamebook

Di gamebook, kamu sendiri yang menentukan alur cerita. Di akhir setiap bagian kamu memilih apa selanjutnya, dan cerita pun bercabang. Aplikasi mengingat di mana kamu berada, jalan mana yang kamu ambil, dan akhir mana saja yang sudah kamu temukan; peta perjalanan hanya menampilkan yang sudah kamu kunjungi. Kamu bisa mulai dari awal atau mundur satu langkah. Gamebook-nya gratis: untuk anak-anak **Sara and the Black Crown**, untuk dewasa misalnya drama kamar di ruang konseling psikologi **Learning to Be Silent**, **Metal Sky Above Us**, atau **The Blooming Meadow That Turned Grey**. Drama-drama ini mengangkat tema berat, dan profil anak menyembunyikannya.

Dalam versi beta ada editor cabang: di pilihan mana pun kamu bisa menambahkan kelanjutanmu sendiri, menyusunnya dari gambar-gambar gamebook, dan menulis balon katanya. Cabangnya bisa langsung kamu mainkan dan kirim ke penulis lewat fitur berbagi, tanpa server.

### Paket

Paket opsional menambahkan hingga 50 cerita: **Romansa** (kisah cinta ringan untuk dewasa, tanpa adegan eksplisit), **Anak-anak**, dan **Superhero**. Paket diunduh setelah dibeli dan dibaca secara offline. Satu kali pembelian membuka semuanya, termasuk paket yang terbit nanti.

### Profil dan kunci orang tua

Saat pertama kali dibuka, kamu memilih profil **Anak** atau **Dewasa**. Profil anak menyembunyikan romansa dan drama di perpustakaan maupun di toko. Setiap pembelian dan setiap peralihan ke Dewasa dijaga oleh kunci orang tua dengan soal perkalian.

### 12 bahasa

Cerita, gamebook, dan teks pembaca tersedia dalam 12 bahasa: Ceko, Inggris, Jerman, Prancis, Italia, Polandia, Portugis Brasil, Jepang, Korea, Vietnam, Rusia, dan Ukraina. Bahasa balon kata diganti di Pengaturan.

### Privasi

Tanpa akun, tanpa iklan, tanpa pelacakan. Toonfork tidak mengumpulkan data pribadi; apa yang sudah kamu beli diingat oleh perangkat, dan pembelian bisa dipulihkan di Pengaturan.

## Studio: bagaimana cerita dibuat

Wajah kedua dari aplikasi yang sama adalah Studio untuk penulis. Penulis membangun dunia: lore, tokoh, tempat, dan kanon yang harus dilalui setiap cerita. Di Studio kamu juga bisa bermain secara interaktif: di akhir episode, pembaca memilih apa yang akan dilakukan tokoh selanjutnya, atau menuliskannya dengan kata-katanya sendiri, dan dari pilihan itu lahirlah episode berikutnya. Teks bebas lebih dulu melewati moderasi; di dunia anak moderasinya lebih ketat dan kalau ragu lebih memilih menolak. Tangkapan layar di halaman ini berasal dari Studio.

### Editor dunia

Di aplikasi, penulis punya tab **Buat**:

- **Dasar:** judul, sinopsis, nada, bahasa, pembaca (Untuk anak, 13+, Untuk dewasa), visibilitas, dan gaya gambar yang berlaku untuk seluruh dunia.
- **Lore dan kanon:** aturan dunia, faksi, simpul kanon dalam urutan tetap, dan batasan, yaitu hal yang tidak boleh terjadi.
- **Tokoh dan lokasi:** deskripsi dengan kata-kata sendiri. Dari situ LLM mengusulkan tag booru tetap untuk model gambar. Tag yang tidak dikenal model dibuang berdasarkan kosakata WD14, dan penulis menyempurnakan sisanya.
- **Character sheet:** empat varian tokoh dengan latar putih. Yang paling cocok dengan tag menjadi gambar referensi.
- **Ikhtisar:** kampanye, di mana pembaca berhenti, pilihan apa yang mereka ambil, dan seberapa jauh mereka sampai di kanon.

### Model

- **Naskah dan moderasi:** Qwen3.6-35B-A3B melalui vLLM. Model ini mengusulkan tag untuk tokoh dan lokasi serta menulis storyboard untuk tiap episode (6–8 panel, 2–3 pilihan, dan kolom teks bebas). Lalu sebuah validator memeriksa tokoh, tempat, dan aturan dunia.
- **Panel:** SDXL melalui ComfyUI. Bawaannya NoobAI-XL eps 1.1, gaya kedua Hassaku XL (Illustrious) 3.4. Hanya model-model ini yang menggambar tokoh manusia.
- **Panel hidup:** Wan 2.2 mengubah panel jadi menjadi loop 1–3 detik, paling banyak dua panel bergerak per episode.
- **Pemeriksaan konten:** tagger WD14 (SmilingWolf/wd-swinv2-tagger-v3). Tagger ini memeriksa setiap panel dan, tergantung pembacanya, membuangnya lalu menggambar ulang dengan seed baru. Untuk anak-anak, ia juga menolak pakaian ketat dan terbuka. Tagger yang sama mengukur apakah tokoh dalam panel sesuai dengan desainnya.

Identitas tokoh dijaga oleh tag saja. IP-Adapter sudah disiapkan, tetapi pada pengukuran pertama justru lebih sering merusak gambar. Model tidak sanggup menampilkan dua tokoh manusia dalam satu bidikan; rambut dan pakaian mereka tertukar. Karena itu cerita anak memberi setiap tokoh panelnya sendiri.

### Gaya

Gaya adalah preset bernama: checkpoint, sampler, jumlah langkah, CFG, dan tag estetika. Penulis memilihnya sekali untuk seluruh dunia. **clean_webtoon_noartist** punya warna datar dan garis bersih, **hassaku_soft** bayangan lembut dan warna pastel. Di bagian visual, episode yang sama ditampilkan berdampingan dalam kedua gaya.

### Status

Toonfork masih alfa: versi Android ada di Google Play, build untuk macOS bisa diunduh di GitHub, dan App Store sedang disiapkan. Studio hanya berjalan dengan backend sendiri (Go dengan antrean tugas di Postgres) dan tidak tersedia untuk umum. Gambar dan teks dibuat di server GPU sendiri.

Tangkapan layar diambil dari versi web Studio selebar ponsel dengan backend lokal. Episode 2 di sana baru berupa naskah; panelnya masih menunggu digambar. Kode sumbernya ada di [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
