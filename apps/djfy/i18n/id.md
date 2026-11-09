---
tagline: Deck DJ dengan playlist pintar dan mode pesta, tempat tamu memilih musik dari ponsel mereka
---
DJfy adalah aplikasi DJ seluler yang bisa membuat playlist secara pintar. Kamu masukkan nama artis, lalu aplikasi menyusun lagu-lagu di sekitarnya berdasarkan tempo dan rekomendasi. Setelah itu lagu-lagu tersebut di-mix di deck dengan pitch, efek, dan crossfader.

Terintegrasi dengan **Last.fm** (rekomendasi, scrobbling), **GetSongBPM** (data BPM), dan **SoundCloud** (streaming).

### Mode pesta

Di pesta, biasanya yang memutar musik adalah siapa pun yang kebetulan pegang ponsel, sementara yang lain meneriakkan request ke telinganya. Di DJfy, ponsel tuan rumah jadi meja DJ dan speaker cukup memutar. Tamu memindai kode QR dan membuka pesta di browser. Tidak perlu aplikasi atau akun, cukup isi nama.

- **Tamu mengusulkan dan memberi suara.** Siapa saja bisa mencari lagu, menambahkannya ke antrean, dan memberi jempol ke atas atau ke bawah. Supaya satu tamu tidak menguasai seluruh antrean, tiap orang hanya boleh punya maksimal tiga lagu di dalamnya sekaligus.
- **Antrean pintar.** Urutan tidak hanya ditentukan oleh jumlah suara. Aplikasi juga memperhitungkan berapa lama sebuah lagu sudah menunggu, apakah artis yang sama baru saja diputar, dan apakah temponya cocok dengan lagu yang sedang diputar.
- **Mood lock.** Tuan rumah mengatur rentang BPM, misalnya 110–130, dan lagu di luar rentang itu pindah ke akhir antrean. Jadi malam tetap terjaga temponya, meskipun ada yang mengusulkan balada.
- **Auto-DJ.** Lagu-lagu bersambung dengan crossfade yang mulus. Jika tempo berbeda paling banyak 8 %, aplikasi menyamakan BPM selama transisi lalu kembali ke kecepatan aslinya.
- **Pesta tak pernah usai.** Saat antrean habis, aplikasi otomatis menambahkan lagu lain yang mirip dengan yang terakhir diputar dan menandainya sebagai Auto. Lagu dari tamu selalu didahulukan, dan lagu yang kena veto tidak akan kembali. Fitur ini bisa dimatikan dengan sakelar di samping Auto-DJ.
- **Tuan rumah punya keputusan akhir.** Tuan rumah bisa memveto lagu, menunjuk co-DJ yang boleh mengatur antrean, atau mengeluarkan tamu.
- **Suara ke mana saja.** Ponsel bisa memutar ke headphone, ke speaker lewat Bluetooth, atau lewat AirPlay, misalnya ke Sonos.

Ponsel tuan rumah menjalankan seluruh pesta. Server Go kecil di antara ponsel itu dan para tamu hanya meneruskan pesan dan tidak menyimpan apa pun.

Dibuat dengan Flutter. Berjalan di ponsel dan macOS.
