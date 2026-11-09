---
tagline: Absensi per proyek yang memverifikasi lokasi — tanpa menyimpan posisimu
---
Perusahaan konstruksi dan tim servis sampai sekarang masih melaporkan jam kerja lewat kertas, WhatsApp, dan Excel. Mandor tidak punya cara untuk memeriksa siapa berada di mana, dan pekerja tidak punya cara untuk membuktikan lembur. PMTracker mengukur waktu di proyek tertentu dan, untuk setiap catatan, tahu apakah orangnya benar-benar ada di lokasi.

### Lokasi hanya dua kali, lalu dibuang

Koordinat dikirim **hanya saat memulai dan menghentikan** pengukuran. Server memeriksa apakah titiknya ada di dalam geofence proyek, menyimpan satu data saja, "ada / tidak ada di lokasi", lalu membuang koordinatnya. Tanpa peta pergerakan, tanpa pelacakan di latar belakang. Pekerjaan di luar geofence bisa diizinkan lewat pengecualian yang dicatat di log audit.

### Peran dijaga database, bukan aplikasi

Anggota tim mencatat waktu di proyek yang ditugaskan kepadanya. Manajer juga mengelola proyek dan jadwal orang, serta melihat laporan. Administrator mengelola pengguna. Izin ditegakkan oleh aturan langsung di database, jadi klien yang dimodifikasi pun tidak bisa menembusnya.

### Status

Ini MVP: model data, peran, verifikasi geofence, dan layar untuk login, pengukuran, proyek, jadwal, laporan, serta administrasi sudah ada. Mode offline untuk lokasi proyek tanpa sinyal sudah disiapkan tetapi belum diaktifkan, dan aplikasinya belum dipakai di perusahaan mana pun. Untuk login, kamu perlu akun dari pemberi kerjamu.

### Untuk penguji beta

Versi uji untuk sementara hanya tersedia untuk **Android**. Versi ini berjalan dengan perusahaan uji "Stavby s.r.o." berisi orang-orang fiktif dan dua proyek: renovasi kantor di Lapangan Wenceslas di Praha dan pemasangan AC di Lapangan Kebebasan di Brno. Datanya bisa dihapus kapan saja. Tidak ada pendaftaran di aplikasi; akunmu dikirim oleh orang yang mengundangmu untuk menguji.

**Instalasi**

1. Di ponsel, unduh APK lewat tombol di bagian **Unduhan** di atas (atau dari [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Buka file yang diunduh dan izinkan instalasi dari sumber tidak dikenal saat Android bertanya.
3. Google Play Protect mungkin memperingatkan bahwa ia tidak mengenal aplikasi ini. Itu karena aplikasinya tidak berasal dari Google Play; tetap pilih instal.
4. Jalankan **PMTracker** dan login dengan akun yang kamu terima di pesan.

**Yang bisa dicoba sebagai anggota tim**

- Di tab **Výkaz** (Lembar waktu), ketuk **Zahájit výkaz** (Mulai lembar waktu), pilih proyek, dan izinkan akses lokasi. Di lokasi proyek, di bawah waktu akan muncul "Na místě" (Di lokasi) berwarna hijau.
- Kalau kamu tidak di lokasi, aplikasi meminta alasan. Tidak apa-apa: tulis misalnya "test" dan catatan akan disimpan dengan keterangan bahwa dibuat di luar lokasi.
- Setelah beberapa saat, hentikan pengukuran dengan tombol **Ukončit výkaz** (Akhiri lembar waktu). "Dnes celkem" (Total hari ini) akan bertambah.
- Di tab **Zakázky** (Proyek), buka detailnya: alamat, ukuran geofence, siapa yang ditugaskan, dan daftar tugas.

**Yang bisa dicoba sebagai manajer**

- Kamu juga melihat **Roster** (timmu) dan **Reporty** (Laporan) berisi waktu kerja orang per proyek. Hanya pengukuran yang sudah dihentikan yang dihitung di laporan; periodenya diubah di kanan atas.
- Ganti akun dengan logout (ikon di kanan atas pada tab **Výkaz**).

**Yang belum perlu diharapkan**

- Tanpa internet aplikasi tidak berfungsi; mode offline menyusul nanti.
- Pengukuran yang terlupa tidak berhenti sendiri; hentikan secara manual.
- Versi iPhone untuk penguji belum ada.

Kirim bug atau ide ke orang yang mengundangmu: apa yang sedang kamu lakukan, apa yang terjadi, dan pakai akun apa. Tangkapan layar sangat membantu.
