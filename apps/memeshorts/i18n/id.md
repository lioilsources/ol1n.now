---
tagline: Short vertikal dari template meme, dibintangi karaktermu sendiri
visuals: {n} potret dari pustaka karakter — empat karakter, masing-masing dalam dua belas emosi.
---
Alat baris perintah yang mengubah template meme menjadi short vertikal berdurasi enam sampai lima belas detik. Meme aslinya hanya dipakai sebagai cetakan struktur lelucon — tidak pernah masuk ke hasil akhir. Sebagai gantinya, karakter sendiri yang berperan.

Prompt maupun seed tidak bisa menjaga karakter tetap konsisten, jadi gambar tidak dibuat ulang untuk setiap short. Gambar dibuat sekali sebagai pustaka *karakter × emosi* yang sudah disetujui: Kiro, Mei, Taro, dan Yuki, masing-masing dengan dua belas ekspresi, dari sok puas sampai kelelahan.

Setelah itu short melewati pipeline `classify → storyboard → generate → animate → compose → qa`. Setiap langkah disimpan terpisah dan diberi kunci berupa hash dari opsinya, jadi menjalankan ulang tidak memakan biaya dan perubahan teks hanya menghitung ulang yang perlu. Leluconnya ditulis LLM atau kamu ketik sendiri; subtitel dirender langsung di Go.

Hasilnya 1080×1920, H.264, 30 fps, kenyaringan −14 LUFS, dan label “AI generated” di gambar maupun di metadata.

Untuk saat ini hanya berjalan secara lokal dan belum punya versi rilis, jadi belum ada yang bisa diunduh di sini.
Ditulis dalam Go; gambarnya dibuat oleh FLUX.1-schnell di mesin saya sendiri.
