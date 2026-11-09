---
tagline: Pemutar bit-perfect untuk USB DAC — file, RAM, ASIO, dan tak ada apa pun di antaranya
---
Elfton Player adalah pemutar musik lokal untuk Windows 11 dengan satu prioritas:
sampel yang sampai ke USB DAC harus persis sama dengan yang ada di file.
Jalur sinyalnya **file → dekoder → RAM → ASIO → DAC**. Tanpa pengatur volume,
tanpa equalizer, tanpa resampling, tanpa streaming. Volume diatur di
DAC atau amplifier.

### Fitur

- **Output bit-perfect** lewat ASIO, atau WASAPI dalam mode eksklusif. Di samping
  lagu tampil seluruh rantainya (`FLAC 24/96k → 32-bit · bit-perfect`), dan titik
  hijau padam begitu ada apa pun yang mengubah sinyal.
- **Pemutaran dari memori.** Seluruh lagu didekode ke RAM, jadi disk diam selama
  diputar; lagu berikutnya dimuat lebih dulu dan menyambung **tanpa jeda**.
- **Loop A-B akurat per sampel** dengan penggeseran titik per milidetik — untuk
  melatih satu bagian atau membandingkan dua titik dalam rekaman.
- **Pustaka berbasis folder**: pohon direktori persis seperti di disk-mu, sampul,
  pencarian, antrean, favorit, riwayat, playlist M3U, album satu file dengan CUE,
  lirik sinkron dari LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg, dan DSD** (native, DoP, atau dikonversi ke PCM).
- **Mono (L+R)/2** sebagai satu-satunya perubahan pada sinyal, selalu ditandai jelas.
- **Tombol L dan R** hanya membunyikan satu speaker dan membisukan yang lain. Dengan
  mono aktif, keduanya memutar hal yang sama, jadi dari kursi kamu bisa langsung
  membandingkan sisi kiri dan kanan sistemmu lewat ponsel (kabel, komponen); tanpa
  mono, yang terdengar hanya kanal kiri atau hanya kanal kanan rekaman.
- **Bilah geser yang digambar sebagai kekerasan suara lagu** selebar jendela: intro
  yang pelan terlihat dan bisa dilewati dengan satu klik.
- **Hati di setiap lagu** dan filter "hanya favorit" langsung di dalam album.
- **Tiga tema**: gelap, hitam, dan terang.
- **Remote di ponsel**: Elfton Remote dipasangkan lewat kode QR di jaringan rumah
  dan bisa melakukan semua yang bisa dilakukan jendela di komputer.

### Mode pemutaran

Jika diminta, saat memutar ia mengganti power plan, mematikan USB selective suspend
dan core parking, lalu mengembalikan semuanya setelah selesai. Jujur saja: pada USB
DAC asinkron, clock dipegang oleh DAC, jadi penyesuaian ini tidak berpengaruh terukur
pada suara. Semuanya opsional, masing-masing dicatat di log, dan tidak ada yang wajib.

Hal yang sama berlaku untuk "ritual" yang diambil dari pemutar Bug head, yang ada di
pengaturan dan mati secara default: mengunci musik di RAM, jeda setelah lagu dimuat,
dan menjalankan program bantu milikmu sendiri (misalnya MinorityClean) bersama
pemutar. MinorityClean tidak disertakan.

### Status

**Versi 0.2, pra-rilis.** Versi pertama berjalan di Windows 11 milik satu pendengar
lewat ASIO (Behringer UMC204HD dan SMSL D200): WAV 24/192 keluar sebagai ASIO
32-bit tanpa konversi dan tanpa putus-putus, dan kontrol dari ponsel berfungsi.
Itu laporan pemutar sendiri tentang jalur sinyal; belum ada yang merekam output
dan membandingkannya bit demi bit. Fitur baru versi 0.2 sudah dicakup tes,
tetapi belum dijalankan di Windows. Tangkapan layar berasal dari versi pertama,
dari build pengembangan untuk macOS dengan pustaka contoh — bilah kekerasan suara
dan sakelar L/R belum ada di sana.

Build Windows berupa zip: ekstrak lalu jalankan `Elfton Player.exe`, atau jalankan
`install.ps1` yang disertakan untuk menambahkan pintasan ke menu Start. Tidak ada
lagi yang diinstal. Untuk ASIO, driver DAC harus terpasang; tanpanya pemutar
menawarkan WASAPI. Remote untuk ponsel sementara hanya untuk Android (APK);
versi iOS sudah selesai di kode, tetapi belum punya build publik.

Engine ditulis dengan Go di atas FFmpeg (LGPL, ditautkan dinamis), antarmukanya dengan Flutter.
