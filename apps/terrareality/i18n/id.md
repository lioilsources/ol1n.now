---
tagline: Sewa apartemen dari pencarian di peta sampai sewa terbayar — untuk pemilik, penyewa, dan operator
---
TerraReality adalah platform sewa jangka panjang untuk apartemen dan kamar. Platform ini dimulai di Praha dan sekitarnya, tetapi datanya sejak awal sudah siap untuk negara-negara lain di Eropa Tengah (yurisdiksi kontrak, mata uang, bahasa). Berbeda dengan portal iklan, platform ini tidak berhenti di kontak: ia mendampingi pemilik dan penyewa sepanjang masa sewa — pencarian, pesan, pengajuan, kunjungan, kontrak dan tanda tangan, sampai pembayaran dan pemantauannya.

Platform ini punya empat wajah. **Pencari** mencari di peta atau cukup menulis apa yang diinginkan. **Pemilik atau pengelola** punya panel admin bergaya toko online: iklan, peminat, kontrak, bank, portofolio, dan penagihan. **Penyewa** punya portal penyewa dengan kontrak, pembayaran, dan kode QR. **Operator** punya backoffice untuk persetujuan, moderasi, dan pengaturan. Ditambah aplikasi seluler untuk iOS dan Android.

Tangkapan layar berasal dari lingkungan pengembangan dengan data uji: nama-namanya fiktif, foto apartemen hanya ilustrasi, dan saran AI di dalamnya dibuat dalam mode offline tanpa model bahasa.

### Pencarian di peta dan lewat chat

Peta bergerak dari wilayah ke kota, distrik, hingga ke jalan, dan di setiap tingkat zoom menunjukkan berapa banyak penawaran di mana. Di sampingnya ada filter (jenis, harga, luas, tata ruang, perabot, hewan peliharaan, transportasi) dengan jumlah hasil untuk setiap pilihan. Yang tidak mau mengeklik bisa mengetik misalnya "2+kk sampai 25 000 di Praha 6 dengan anjing dan balkon" — platform mengatur filter dan tampilan peta dari kalimat itu dan menunjukkan bagaimana ia memahaminya. Pencarian bisa disimpan, dan untuk penawaran baru akan ada notifikasi.

### Iklan dengan bantuan AI — selalu dengan persetujuan manusia

Pemilik memasukkan alamat dari daftar alamat resmi (RÚIAN), parameter, foto, dan teks. AI bisa mengusulkan parameter dari deskripsi dan foto (lift, balkon, jenis bangunan…) dan menulis teks iklan dalam bahasa Ceko dan Inggris. Namun usulan tidak pernah tersimpan sendiri: pemilik melihat apa yang diusulkan AI, mencentang yang benar, dan baru setelah itu diterapkan. Sebelum tayang, iklan disetujui oleh manusia di backoffice. Untuk setiap iklan, pemilik bisa menambahkan pertanyaan bagi peminat (misalnya "Apakah kamu punya hewan peliharaan?").

### Pesan

Peminat menulis kepada pemilik langsung dari iklan; pesan datang secara real-time, dengan tanda sudah dibaca dan lampiran. Nomor telepon dan email di dalam teks disembunyikan platform sampai kontrak ditandatangani, supaya kesepakatan maupun pembayaran tidak berpindah ke luar platform — dan peminat melihat peringatan "jangan bayar apa pun sebelum kunjungan". Yang sedang tidak online akan mendapat notifikasi push atau email. Percakapan yang mencurigakan bisa dilaporkan dengan satu klik.

### Pengajuan, berbagi hunian, dan pemilihan penyewa

Peminat mengajukan sendiri atau atas nama kelompok teman serumah: membuat grup, mengundang yang lain lewat email, bersepakat di chat grup, dan pengajuan baru dikirim ke pemilik setelah semua setuju. Pemilik melihat ringkasan peminat beserta jawaban atas pertanyaannya, status verifikasi, dan ringkasan singkat dari AI (lagi-lagi hanya usulan). Data yang dilindungi seperti usia, jenis kelamin, atau kewarganegaraan tidak dikumpulkan platform. Ketika pemilik memilih seseorang, yang lain menerima balasan otomatis yang sopan.

### Kunjungan

Pemilik membuka jadwal kunjungan dengan kapasitas dan catatan ("kumpul di depan pintu masuk"); peminat memesan, memindahkan, atau membatalkannya langsung di pengajuan dan menerima pengingat.

### Kontrak digital dan tanda tangan

Kontrak dibuat dari templat (apartemen dengan jangka waktu tertentu atau tidak tertentu, sewa bersama teman serumah, kamar) dan diisi dengan data dari penawaran. Dari formulir dihasilkan PDF, kedua pihak menandatanganinya secara online, dan setiap peristiwa — draf, tanda tangan, pembayaran, pemutusan — dicatat dalam rantai audit di mana setiap catatan terhubung ke catatan sebelumnya dengan hash. Perubahan riwayat di kemudian hari tidak bisa disembunyikan; halaman kontrak menunjukkan bahwa rantainya utuh. Platform juga menangani pemutusan sewa dan penyelesaian uang jaminan.

Templat diberi tanda air DRAF sampai ditinjau pengacara, dan tanda tangan untuk saat ini berupa tanda tangan elektronik sederhana dengan bukti (waktu, alamat IP, sidik jari dokumen). Tanda tangan lewat Bank iD sudah disiapkan sebagai langkah berikutnya dan menunggu kontrak dengan Bank iD.

### Pembayaran — uang langsung ke pemilik

Dari kontrak terbentuk jadwal pembayaran: uang jaminan, sewa, dan uang muka biaya layanan, untuk teman serumah dibagi menurut porsi. Penyewa membayar dengan kode QR di aplikasi bank atau dengan kartu lewat tautan Revolut Business yang mengarah ke akun merchant milik pemilik sendiri. Pemilik bisa menghubungkan rekening bank (hanya baca) dan pembayaran masuk dicocokkan otomatis berdasarkan simbol variabel, simbol spesifik, dan jumlah; yang tidak cocok tetap sebagai usulan untuk dicocokkan manual. Setelah jatuh tempo, pengingat dikirim, dan setelah tujuh hari ada eskalasi.

**TerraReality tidak pernah menahan atau meneruskan uang penyewa.** Tanpa escrow, tanpa kripto — pembayaran langsung dari rekening penyewa ke rekening pemilik.

### Pengambilalihan sewa yang sudah berjalan

Pemilik yang apartemennya sudah disewakan dengan kontrak kertas tidak perlu menandatangani apa pun lagi. Ia mengambil alih sewa sebagai sudah ditandatangani di luar platform, mengunggah pindaian kontrak, dan pembayaran dipantau sejak tanggal pengambilalihan: utang lama masuk ke saldo awal, uang jaminan yang dipegang dicatat, dan simbol variabel yang selama ini dipakai tetap berlaku. Penyewa tidak menerima apa pun sampai pemilik mengundang mereka ke portal penyewa. Beberapa sewa sekaligus bisa diimpor dari spreadsheet.

### Portofolio lintas kota dan risiko sewa

Untuk pemilik dan pengelola dengan beberapa unit: ringkasan semua sewa per kota, tagihan bulanan dan yang benar-benar masuk, tren dua belas bulan, daftar hal yang perlu perhatian (tunggakan, eskalasi, pemutusan, unit kosong), konsentrasi pendapatan, dan rent roll dengan ekspor ke CSV dan Excel. Setiap sewa punya skor risiko yang dihitung dari aturan (tunggakan, tagihan lama yang belum dibayar, cakupan uang jaminan, kontrak yang segera berakhir…). Skor hanyalah informasi dan tidak pernah memutuskan apa pun tentang siapa pun; penyewa bisa melihat dari mana skor itu dihitung. Aturan (pengingat, eskalasi, uang jaminan, masa pemberitahuan) bisa diatur per kota, dan investor bisa mendapat akses hanya baca di mana penyewa hanya tampil sebagai inisial.

### Promosi dan penagihan

Pemilik bisa menaikkan atau menyorot iklannya. Pembayaran dengan kartu lewat Stripe, faktur dengan PPN terbit otomatis, dikirim lewat email, dan bisa diunduh di panel admin. Iklan yang dipromosikan ditandai "Unggulan" di hasil pencarian.

### Backoffice, moderasi, dan DSA

Operator punya ringkasan metrik, antrean iklan yang menunggu persetujuan, moderasi percakapan dan iklan yang dilaporkan, antrean usulan AI untuk parameter baru, daftar harga promosi, templat kontrak, sakelar fitur, dan log audit. Siapa pun bisa melaporkan iklan, bahkan tanpa akun (sesuai Undang-Undang Layanan Digital Uni Eropa, DSA); setiap kasus diputuskan oleh manusia dan alasannya dikirim lewat email ke pelapor maupun pemasang iklan. Masuk "sebagai pengguna" saat dukungan wajib menyertakan alasan dan dicatat di audit.

### Aplikasi seluler

Aplikasi Flutter untuk iOS dan Android mencakup apa yang dibutuhkan penyewa di ponsel: pencarian dengan daftar dan peta, detail iklan dengan pesan, pengajuan dan pemesanan kunjungan, kunjungan saya, sewa dengan pembayaran QR dan tautan Revolut, serta membuka langsung dari notifikasi push. Ini versi pertama; build untuk penguji (TestFlight dan jalur internal Google Play) akan dibuat saat persiapan pengujian.

### Operasional

Lingkungan produksi sudah disiapkan untuk Hetzner di UE: server aplikasi dan basis data terpisah dalam jaringan privat, HTTPS otomatis, cadangan basis data dengan pemulihan ke titik waktu mana pun (kehilangan data paling banyak satu jam) dan uji pemulihan yang sudah diverifikasi, pemantauan dengan peringatan (ketersediaan 99,9 %, respons pencarian di bawah 300 ms, status cadangan), serta pelaporan galat. AI berjalan di server GPU sendiri; saat AI tidak tersedia, semuanya tetap berfungsi tanpanya.

### Status dan pengujian

**MVP seluruh platform sudah selesai.** Semua modul di atas sudah diprogram dan dicakup pengujian otomatis — uji unit, integrasi, dan end-to-end yang menelusuri skenario lengkap di browser (iklan, pesan, pengajuan grup, kontrak dengan tanda tangan dan pembayaran yang dicocokkan, portofolio, promosi dengan faktur, laporan DSA, backoffice). Pemulihan basis data dari cadangan juga sudah diverifikasi.

Perbaikan keamanan dan operasional yang direkomendasikan saat tinjauan kode serta notifikasi push untuk pengajuan, kontrak, dan pembayaran juga sudah selesai. Beta tertutup berjalan di server sendiri dengan iklan contoh untuk Praha dan sekitarnya yang diberi tanda sebagai contoh. Peluncuran produksi di Hetzner menunggu akun dan akses (lihat di bawah).

Pengujian dengan orang sungguhan berlangsung dalam lima fase. Setiap fase diakhiri dengan gerbang, tempat kita bersama memutuskan apakah lanjut:

1. **T0 — persiapan (2 minggu).** Lingkungan uji di Hetzner dengan pita "Lingkungan uji", mitra dalam mode sandbox (Stripe, Revolut, Bank iD), analitik produk tanpa data pribadi, tombol "Laporkan masalah / ide" di web dan aplikasi, pendaftaran hanya lewat undangan, data uji, dan build aplikasi untuk penguji.
2. **T1 — pengujian internal (1 minggu).** 5–8 orang dari tim dan lingkarannya menjalani semua skenario sebagai pemilik dan pencari, di beberapa perangkat, termasuk latihan insiden dan pemulihan dari cadangan.
3. **T2 — uji kegunaan termoderasi (2 minggu).** 12 peserta: pemilik perorangan, pengelola dengan unit di beberapa kota, pencari asal Ceko maupun asing, dan sepasang teman serumah. Yang diukur adalah keberhasilan tugas dan kepuasan (SUS ≥ 70).
4. **T3 — pilot tertutup di Praha (6 minggu).** 20 pemilik pilot dengan onboarding pribadi dan 50–100 pencari, hanya lewat undangan. Dipantau apakah iklan mendapat pengajuan, seberapa cepat pemilik membalas, berapa kontrak yang tuntas secara digital, dan seberapa andal semuanya berjalan; satu rilis per minggu.
5. **T4 — beta terbuka di Praha (4 minggu).** Pendaftaran terbuka untuk semua dengan label beta, tanpa kampanye berbayar — dan di akhir, keputusan tentang peluncuran publik.

Totalnya sekitar 15 minggu sejak awal persiapan.

**Yang kami butuhkan dari Anda:**

- akun dan akses untuk operasional: Hetzner, domain dan DNS, akun pengembang Apple dan Google, Stripe, Revolut Business, Bank iD, dan penyedia koneksi bank;
- rekrutmen penguji, 20 pemilik pilot dan pencari, imbalan bagi peserta;
- tinjauan hukum atas syarat dan ketentuan, kebijakan privasi, dan templat kontrak, persetujuan para penguji, serta keputusan apakah dalam pilot kontrak sungguhan ditandatangani langsung di platform;
- uji penetrasi sebelum pilot, memandu wawancara di T2, dan dukungan lini pertama selama pilot;
- keputusan di setiap gerbang antarfase.
