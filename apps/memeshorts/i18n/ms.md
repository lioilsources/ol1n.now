---
tagline: Short menegak daripada templat meme, dibintangi watak anda sendiri
visuals: {n} potret daripada perpustakaan watak — empat watak, setiap satu dalam dua belas emosi.
---
Alat baris perintah yang menukar templat meme kepada short menegak sepanjang enam hingga lima belas saat. Meme asal hanya digunakan sebagai acuan struktur jenaka — ia tidak pernah masuk ke dalam hasil akhir. Sebaliknya, watak sendiri yang beraksi.

Prompt atau seed tidak dapat mengekalkan watak secara konsisten, jadi imej tidak dijana untuk setiap short. Imej dicipta sekali sahaja sebagai perpustakaan *watak × emosi* yang telah diluluskan: Kiro, Mei, Taro dan Yuki, setiap seorang dengan dua belas riak wajah, daripada berlagak hingga keletihan.

Kemudian short melalui saluran paip `classify → storyboard → generate → animate → compose → qa`. Setiap langkah disimpan berasingan dan dikunci dengan hash pilihannya, jadi larian semula tidak memakan kos dan perubahan teks hanya mengira semula apa yang perlu. Jenakanya ditulis oleh LLM atau anda taip sendiri; sari kata dirender terus dalam Go.

Hasilnya 1080×1920, H.264, 30 fps, kenyaringan −14 LUFS dan label “AI generated” dalam gambar serta dalam metadata.

Buat masa ini ia hanya berjalan secara setempat dan belum ada versi yang dikeluarkan, jadi tiada apa-apa untuk dimuat turun di sini.
Ditulis dalam Go; imej dijana oleh FLUX.1-schnell pada mesin saya sendiri.
