---
tagline: Pabrik aksesori Roblox — dari prompt ke model 3D tanpa modeling manual
---
UGC Factory membuat aksesori avatar untuk Roblox Marketplace. Kamu tulis apa yang kamu mau —
*“helm samurai penuh ornamen dengan aksen neon”* — dan di ujung lain keluar
model 3D bertekstur yang siap diunggah. Tanpa modeling manual.

## Cara kerjanya

Pekerjaan dibagi ke tiga mesin. **DGX Spark** dengan GPU menggambar konsep (Illustrious untuk benda,
Juggernaut XL untuk yang dikenakan di tubuh — dipilih sesuai kategori), menghapus latar belakang, dan mengubah gambar
menjadi model 3D. **NAS** memegang antrean, katalog, dan Blender headless yang menyesuaikan model ke
batas Roblox — di bawah 4.000 segitiga, UV, tekstur yang di-bake, titik pemasangan
yang tepat. **Ponsel** dipakai untuk memilah.

Jalur cepat (SF3D) membangun model dalam satu setengah detik, jadi kamu bisa bereksperimen
besar-besaran. TRELLIS yang lebih lambat dan lebih halus baru dijalankan saat mengemas item yang sudah lolos
dari matamu — komputasi mahal hanya dipakai untuk yang benar-benar ingin kamu jual.
Item berornamen seperti tiara dan helm langsung lewat TRELLIS.

## Aplikasinya

Klien seluler adalah inti dari semuanya. **Composer** mengirim satu batch — kategori × gaya ×
varian, lima puluh item sekaligus pun boleh. **Antrean** menampilkan secara langsung apa yang sedang dibuat dan
di tahap mana. **Triage** adalah bagian utamanya: satu item di layar, pengalih antara
konsep dan model 3D yang bisa diputar, tiga tombol — setujui, tolak, coba
lagi dengan seed lain. Kamu bisa melewatinya lebih cepat daripada membaca. **Review** menampilkan
item yang sudah dikonversi: jumlah segitiga terhadap batas, UV, apakah mesh tertutup,
tekstur, dan vonis PASS, WARN, atau FAIL. Dari sini item bisa dikonversi ulang atau
dikemas untuk diunggah. Pengemasan ulang tidak menimpa nama, deskripsi, harga, dan tag
yang kamu isi di aplikasi.

Berjalan di Android, iOS, macOS, dan di browser. Server menyajikannya dari origin-nya
sendiri, jadi versi web selalu terbaru.

## Hiasan di sekeliling

Model dibuat dari satu gambar, jadi sisi belakangnya tak pernah terlihat dan hasilnya
datar tanpa hiasan. Untuk item yang benar-benar simetris radial (kue,
mahkota), irisan depan disalin ke sekeliling dan sambungannya dilas. Fitur ini dinyalakan
di Composer atau pada item jadi saat konversi ulang, tanpa generasi tambahan.
Tidak cocok untuk item datar — hasilnya pecah jadi tambal sulam irisan.

## Kategori

Yang paling berhasil adalah benda yang juga ada **secara mandiri** di data pelatihan:
ransel, tas tangan, tiara, topi, kue, topeng, perisai, cincin.
Kreasi topi dengan bulu dan bunga, tas quilting bermonogram, mahkota
bertatahkan mutiara dan akik, topeng terinspirasi lima budaya, ekor rubah dan
rakun yang berbulu lebat, peliharaan kawaii untuk di bahu.

Gambarnya hampir selalu terlihat bagus — modelnya jauh dari itu, dan yang menentukan
adalah modelnya. Bentuk ringkas bervolume (ransel, kue, cincin) bertahan baik. Struktur tipis
berlubang-lubang robek di jalur cepat, jadi tiara langsung lewat jalur yang lebih lambat.
Dan input bergaya kartun punya sedikit bayangan, jadi hasilnya relief, bukan volume — hewan-hewan kecil
pastel butuh prompt yang memaksa bayangan lembut.

Pakaian dan rambut itu sulit: model hanya mengenalnya saat dikenakan figur, jadi dari prompt
*“gaun naga”* ia menggambar naga. Yang membantu adalah beralih ke model fotorealistis dan
menuliskannya seperti foto produk — *“gaun pada manekin tak terlihat”*.

Selain itu, Roblox menangani gaun, sepatu, dan sarung tangan sebagai layered clothing dengan cage mesh,
yang belum bisa dibuat pabrik ini. Untuk jari dan tangan, Roblox sama sekali tidak punya titik pemasangan.
