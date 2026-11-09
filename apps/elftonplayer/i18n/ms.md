---
tagline: Pemain bit-perfect untuk USB DAC — fail, RAM, ASIO dan tiada apa-apa di antaranya
---
Elfton Player ialah pemain muzik setempat untuk Windows 11 dengan satu keutamaan:
sampel yang sampai ke USB DAC mestilah sama tepat dengan yang ada dalam fail.
Laluan isyaratnya **fail → penyahkod → RAM → ASIO → DAC**. Tiada kawalan kelantangan,
tiada penyama, tiada pensampelan semula, tiada penstriman. Kelantangan dilaraskan
pada DAC atau penguat.

### Ciri-ciri

- **Output bit-perfect** melalui ASIO, atau WASAPI dalam mod eksklusif. Di sebelah
  lagu dipaparkan seluruh rantaian (`FLAC 24/96k → 32-bit · bit-perfect`), dan titik
  hijau padam sebaik sahaja ada apa-apa yang mengubah isyarat.
- **Main dari memori.** Seluruh lagu dinyahkod ke dalam RAM, jadi cakera tidak bekerja
  semasa main; lagu seterusnya dimuat lebih awal dan bersambung **tanpa jurang**.
- **Gelung A-B tepat ke sampel** dengan anjakan titik mengikut milisaat — untuk berlatih
  satu petikan atau membandingkan dua tempat dalam rakaman.
- **Pustaka mengikut folder**: pepohon direktori sama seperti dalam cakera anda, kulit
  album, carian, baris gilir, kegemaran, sejarah, senarai main M3U, album satu fail
  dengan CUE, lirik segerak daripada LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg dan DSD** (asli, DoP, atau ditukar ke PCM).
- **Mono (L+R)/2** sebagai satu-satunya campur tangan pada isyarat, sentiasa ditanda jelas.
- **Butang L dan R** hanya membunyikan satu pembesar suara dan membisukan yang satu lagi.
  Dengan mono dihidupkan, kedua-duanya memainkan perkara yang sama, jadi dari kerusi
  anda boleh terus membandingkan sisi kiri dan kanan sistem anda dengan telefon (kabel,
  komponen); tanpa mono, hanya saluran kiri atau hanya saluran kanan rakaman yang dimainkan.
- **Bar cari yang dilukis mengikut kekuatan bunyi lagu** merentasi seluruh lebar tetingkap:
  intro yang senyap kelihatan dan boleh dilangkau dengan satu klik.
- **Hati pada setiap lagu** dan penapis "kegemaran sahaja" terus dalam album.
- **Tiga tema**: gelap, hitam dan cerah.
- **Alat kawalan di telefon**: Elfton Remote berpasangan melalui kod QR dalam rangkaian
  rumah dan boleh melakukan semua yang dilakukan tetingkap di komputer.

### Mod main

Jika mahu, semasa main ia menukar pelan kuasa, mematikan penggantungan terpilih USB
dan core parking, lalu memulihkan semuanya selepas selesai. Terus terang: pada USB DAC
tak segerak, jam dipegang oleh DAC, jadi pelarasan ini tiada kesan yang boleh diukur
pada bunyi. Semuanya pilihan, setiap satu dicatat dalam log, dan tiada satu pun diperlukan.

Begitu juga dengan "ritual" yang diambil daripada pemain Bug head, yang ada dalam
tetapan dan dimatikan secara lalai: mengunci muzik dalam RAM, jeda selepas lagu dimuat,
dan melancarkan program pembantu anda sendiri (contohnya MinorityClean) bersama pemain.
MinorityClean tidak disertakan.

### Status

**Versi 0.2, pra-keluaran.** Versi pertama berjalan pada Windows 11 milik seorang
pendengar melalui ASIO (Behringer UMC204HD dan SMSL D200): WAV 24/192 keluar sebagai
ASIO 32-bit tanpa penukaran dan tanpa putus, dan kawalan dari telefon berfungsi.
Itu laporan pemain sendiri tentang laluan isyarat; belum ada sesiapa yang merakam
output dan membandingkannya bit demi bit. Ciri baharu versi 0.2 diliputi ujian,
tetapi belum dijalankan pada Windows. Tangkapan skrin adalah daripada versi pertama,
daripada binaan pembangunan untuk macOS dengan pustaka contoh — bar kekuatan bunyi
dan suis L/R belum ada padanya.

Binaan Windows ialah zip: nyahzip dan jalankan `Elfton Player.exe`, atau jalankan
`install.ps1` yang disertakan untuk menambah pintasan pada menu Start. Tiada apa-apa
lagi yang dipasang. Untuk ASIO, pemacu DAC mesti dipasang; tanpanya pemain
menawarkan WASAPI. Alat kawalan telefon buat masa ini hanya untuk Android (APK);
versi iOS sudah siap dalam kod tetapi belum ada binaan awam.

Enjin ditulis dalam Go di atas FFmpeg (LGPL, dipaut secara dinamik), antara muka dalam Flutter.
