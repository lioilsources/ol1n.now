---
tagline: Anakmu menekan “Aku di sini” di tempat les, dan kamu langsung tahu. Tanpa pelacakan lokasi
---
Automatka dibuat untuk orang tua yang anaknya sudah berangkat sendiri ke les
atau kegiatan ekstrakurikuler. Sesampainya di sana, anak menekan satu tombol
besar **Aku di sini**, server memeriksa bahwa ia benar-benar ada di gedung
olahraga atau pusat kegiatan remaja, dan orang tua mendapat notifikasi. Kalau
sampai kegiatan dimulai anak belum check-in, notifikasi juga dikirim. Itu saja:
tanpa peta dan tanpa pelacakan di latar belakang.

### Lokasi hanya saat tombol ditekan

Koordinat hanya keluar dari ponsel tepat saat anak menekan tombol. Server
mencocokkannya dengan lokasi kegiatan, hanya menyimpan “ada / tidak ada di
tempat”, lalu membuang koordinatnya. Jadi orang tua tidak melihat rute yang
dilalui anak, hanya bahwa ia sudah tiba, sudah pergi, dan sudah di rumah.

### Untuk anak

- **Aku di sini**, lalu **Aku pergi** dan **Aku di rumah**. Tombol besar, tanpa
  menu.
- **SOS** harus ditahan dua detik supaya tidak terpencet di saku.
- Tanpa sinyal, tekanan tombol disimpan dan dikirim begitu ponsel tersambung.
- Kalau ponsel tidak mendapat lokasi, check-in tetap bisa. Orang tua lalu
  melihat bahwa kedatangan tidak terverifikasi lewat lokasi.
- Tanpa akun dan kata sandi. Anak dipasangkan dengan kode enam digit atau kode
  QR dari orang tua, dan orang tua bisa memutus pasangan perangkat kapan saja.

### Untuk orang tua

Ringkasan hari ini menampilkan setiap anak dan kegiatannya: menunggu, di
tempat, sudah pergi. Peringatan “belum check-in” hilang begitu anak check-in
atau orang tua menandainya sudah dilihat. Orang tua satunya atau nenek melihat
hal yang sama. Server bisa mengekspor data keluarga atau menghapusnya
seluruhnya beserta akun; tombol untuk itu belum ada di aplikasi.

### Status

Automatka masih di Fase 0: sedang diuji apakah pemasangan perangkat, push, mode
offline, dan GPS di dalam gedung olahraga berfungsi di ponsel dan jam tangan
sungguhan. Backend serta layar untuk anak dan orang tua sudah jadi dan lolos
pengujian di server lokal. Pengelolaan tempat dan kegiatan di aplikasi,
undangan untuk orang tua satunya, dan aplikasi jam tangan menyusul setelahnya.
Belum ada yang bisa diunduh.
