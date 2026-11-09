---
tagline: Komik menegak yang boleh dibaca tanpa internet — cerita percuma, gamebook yang anda pilih sendiri dan panel yang hidup
visuals: {n} imej — panel daripada lima cerita kanak-kanak, perbandingan dua gaya dan character sheet.
---
Toonfork (nama sementara Webtoon) ialah pembaca komik menegak yang berfungsi juga tanpa internet. Sebaik sahaja dipasang, terdapat 15 cerita percuma di dalamnya, tanpa akaun dan tanpa pendaftaran. Cerita-cerita ini dihasilkan pada pelayan GPU sendiri: model bahasa menulis skrip, model imej melukis panel, dan belon dialog berisi teks hanya ditambah oleh pembaca, jadi teks boleh dibetulkan tanpa menjana semula imej.

Jalur siap daripada lima cerita kanak-kanak ada di subhalaman Strips, dan gelung permainan dengan pilihan di hujung episod di subhalaman Gamebook.

### Pembaca

Sebuah cerita ialah satu jalur panjang panel dengan belon dialog, fikiran, jeritan dan kesan bunyi yang anda tatal dengan ibu jari dari atas ke bawah. Sesetengah panel menjadi hidup dalam gelung pendek: hujan di tingkap, cahaya di permukaan air, angin di rambut. Di hujung episod anda nampak apa yang dipilih dan butang **Episod seterusnya**. Selepas episod terakhir muncul **Tamat** dan cadangan cerita seterusnya.

### Gamebook

Dalam gamebook, anda sendiri yang menentukan jalan cerita. Di hujung setiap bahagian anda memilih apa yang berlaku seterusnya, dan cerita pun bercabang. Aplikasi mengingati di mana anda berada, laluan mana yang anda ambil dan pengakhiran mana yang telah anda temui; peta laluan hanya menunjukkan tempat yang sudah anda lawati. Anda boleh bermula semula atau berundur satu langkah. Gamebook adalah percuma: untuk kanak-kanak **Sara and the Black Crown**, untuk dewasa contohnya drama kamar di bilik kaunseling psikologi **Learning to Be Silent**, **Metal Sky Above Us** atau **The Blooming Meadow That Turned Grey**. Drama-drama ini menyentuh tema berat dan profil kanak-kanak menyembunyikannya.

Dalam versi beta ada editor cabang: pada mana-mana pilihan anda boleh menambah sambungan sendiri, menyusunnya daripada imej gamebook dan menulis belon dialognya. Cabang itu boleh terus dimainkan dan dihantar kepada pengarang melalui fungsi kongsi, tanpa sebarang pelayan.

### Pek

Pek pilihan menambah sehingga 50 cerita: **Romantik** (kisah cinta ringan untuk dewasa, tanpa adegan eksplisit), **Kanak-kanak** dan **Adiwira**. Pek dimuat turun selepas dibeli dan dibaca di luar talian. Satu pembelian membuka semuanya, termasuk pek yang keluar kemudian.

### Profil dan kunci ibu bapa

Kali pertama aplikasi dibuka, anda memilih profil **Kanak-kanak** atau **Dewasa**. Profil kanak-kanak menyembunyikan cerita romantik dan drama di perpustakaan dan di kedai. Setiap pembelian dan setiap pertukaran ke Dewasa dilindungi oleh kunci ibu bapa dengan soalan sifir darab.

### 12 bahasa

Cerita, gamebook dan teks pembaca tersedia dalam 12 bahasa: Czech, Inggeris, Jerman, Perancis, Itali, Poland, Portugis Brazil, Jepun, Korea, Vietnam, Rusia dan Ukraine. Bahasa belon dialog ditukar dalam Tetapan.

### Privasi

Tiada akaun, tiada iklan, tiada penjejakan. Toonfork tidak mengumpul data peribadi; apa yang telah anda beli diingati oleh peranti, dan pembelian boleh dipulihkan dalam Tetapan.

## Studio: bagaimana cerita dihasilkan

Wajah kedua aplikasi yang sama ialah Studio untuk pengarang. Pengarang membina dunia: lore, watak, tempat dan kanon yang mesti dilalui oleh setiap cerita. Dalam Studio anda juga boleh bermain secara interaktif: di hujung episod pembaca memilih apa yang watak akan lakukan seterusnya, atau menulisnya dengan kata-kata sendiri, dan daripada pilihan itu lahirlah episod seterusnya. Teks bebas melalui moderasi dahulu; dalam dunia kanak-kanak ia lebih ketat dan jika ragu-ragu lebih rela menolak. Tangkapan skrin di halaman ini adalah daripada Studio.

### Editor dunia

Pengarang mempunyai tab **Cipta** dalam aplikasi:

- **Asas:** tajuk, sinopsis, nada, bahasa, khalayak (Untuk kanak-kanak, 13 tahun ke atas, Untuk dewasa), keterlihatan dan gaya lukisan yang terpakai untuk seluruh dunia.
- **Lore dan kanon:** peraturan dunia, puak, nod kanon dalam susunan tetap dan batasan, iaitu perkara yang tidak boleh berlaku.
- **Watak dan lokasi:** penerangan dengan kata-kata sendiri. Daripadanya LLM mencadangkan tag booru tetap untuk model imej. Tag yang tidak dikenali model disingkirkan berdasarkan perbendaharaan kata WD14, dan pengarang memperhalusi selebihnya.
- **Character sheet:** empat varian watak dengan latar putih. Yang paling sepadan dengan tag menjadi imej rujukan.
- **Gambaran keseluruhan:** kempen, di mana pembaca berhenti, pilihan yang mereka buat dan sejauh mana mereka sampai dalam kanon.

### Model

- **Skrip dan moderasi:** Qwen3.6-35B-A3B melalui vLLM. Ia mencadangkan tag untuk watak dan lokasi serta menulis papan cerita untuk episod (6–8 panel, 2–3 pilihan dan ruangan teks bebas). Kemudian pengesah menyemak watak, tempat dan peraturan dunia.
- **Panel:** SDXL melalui ComfyUI. Lalainya NoobAI-XL eps 1.1, gaya kedua Hassaku XL (Illustrious) 3.4. Hanya model-model ini yang melukis watak manusia.
- **Panel hidup:** Wan 2.2 menukar panel siap kepada gelung 1–3 saat, paling banyak dua panel bergerak bagi setiap episod.
- **Semakan kandungan:** penanda WD14 (SmilingWolf/wd-swinv2-tagger-v3). Ia menyemak setiap panel dan, bergantung pada khalayak, membuangnya lalu melukis semula dengan seed baharu. Untuk kanak-kanak, ia juga menolak pakaian ketat dan mendedahkan. Penanda yang sama mengukur sama ada watak dalam panel sepadan dengan reka bentuknya.

Identiti watak dikekalkan oleh tag semata-mata. IP-Adapter sudah tersedia, tetapi dalam pengukuran pertama ia lebih banyak merosakkan imej. Model tidak mampu mengekalkan dua watak manusia dalam satu syot; rambut dan pakaian mereka tertukar. Sebab itu cerita kanak-kanak memberi setiap watak panelnya sendiri.

### Gaya

Gaya ialah praset bernama: checkpoint, sampler, bilangan langkah, CFG dan tag estetik. Pengarang memilihnya sekali untuk seluruh dunia. **clean_webtoon_noartist** mempunyai warna rata dan garisan bersih, **hassaku_soft** lorekan lembut dan warna pastel. Dalam bahagian visual, episod yang sama dipaparkan bersebelahan dalam kedua-dua gaya.

### Status

Toonfork masih dalam alfa: binaan untuk macOS dan Android boleh dimuat turun dari GitHub, App Store dan Google Play sedang disediakan. Studio hanya berjalan dengan backend sendiri (Go dengan baris gilir tugas dalam Postgres) dan tidak tersedia kepada umum. Imej dan teks dihasilkan pada pelayan GPU sendiri.

Tangkapan skrin diambil daripada versi web Studio selebar telefon dengan backend tempatan. Episod 2 di situ baru ada skrip; panelnya masih menunggu untuk dilukis. Kod sumber ada di [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon).
