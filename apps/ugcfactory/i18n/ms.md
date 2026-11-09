---
tagline: Kilang aksesori Roblox — daripada prompt kepada model 3D tanpa pemodelan manual
---
UGC Factory menghasilkan aksesori avatar untuk Roblox Marketplace. Anda tulis apa yang anda mahu —
*“topi keledar samurai berhias dengan aksen neon”* — dan di hujung sana keluar
model 3D bertekstur yang sedia dimuat naik. Tiada pemodelan manual.

## Cara ia berjalan

Kerja dibahagikan antara tiga mesin. **DGX Spark** dengan GPU melukis konsep (Illustrious untuk barangan,
Juggernaut XL untuk yang dipakai di badan — dipilih mengikut kategori), membuang latar belakang dan menukar imej
kepada model 3D. **NAS** memegang baris gilir, katalog dan Blender headless yang memasukkan model ke dalam
had Roblox — bawah 4,000 segi tiga, UV, tekstur yang dibakar, titik lekapan
yang betul. **Telefon** digunakan untuk menapis.

Laluan pantas (SF3D) membina model dalam satu setengah saat, jadi anda boleh mencuba
secara besar-besaran. TRELLIS yang lebih perlahan dan halus hanya dijalankan semasa membungkus item yang telah lulus
pandangan anda — pengiraan mahal dibelanjakan hanya untuk apa yang benar-benar anda mahu jual.
Item berhias seperti tiara dan topi keledar terus melalui TRELLIS.

## Aplikasi

Klien mudah alih ialah teras keseluruhannya. **Composer** menghantar satu kelompok — kategori × gaya ×
varian, lima puluh item sekali gus pun boleh. **Baris gilir** menunjukkan secara langsung apa yang sedang dibuat dan
di peringkat mana. **Triage** ialah bahagian utama: satu item pada skrin, suis antara
konsep dan model 3D yang boleh diputar, tiga butang — luluskan, tolak, cuba
lagi dengan seed lain. Anda melaluinya lebih pantas daripada membaca. **Review** menunjukkan
item yang telah ditukar: bilangan segi tiga berbanding had, UV, sama ada mesh tertutup,
tekstur dan keputusan PASS, WARN atau FAIL. Dari situ item boleh ditukar semula atau
dibungkus untuk dimuat naik. Pembungkusan semula tidak menulis ganti nama, penerangan, harga dan tag
yang anda isi dalam aplikasi.

Berjalan pada Android, iOS, macOS dan dalam pelayar. Pelayan menyajikannya pada origin
sendiri, jadi versi web sentiasa terkini.

## Berhias sekeliling

Model terhasil daripada satu imej, jadi bahagian belakang tidak pernah dilihat sesiapa dan ia keluar
rata tanpa hiasan. Untuk item yang benar-benar simetri jejarian (kek,
mahkota), sektor hadapan disalin ke sekeliling dan jahitannya dikimpal. Ia dihidupkan
dalam Composer atau pada item siap semasa penukaran semula, tanpa penjanaan tambahan.
Tidak sesuai untuk item rata — ia berkecai menjadi tampalan sektor.

## Kategori

Yang paling menjadi ialah barangan yang juga wujud **dengan sendirinya** dalam data latihan:
beg galas, beg tangan, tiara, topi, kek, topeng, perisai, cincin.
Ciptaan topi dengan bulu pelepah dan bunga, beg tangan berjahit quilt bermonogram, mahkota
dengan mutiara dan akik, topeng berinspirasikan lima budaya, ekor musang dan
rakun yang gebu, haiwan peliharaan kawaii untuk bahu.

Imej hampir selalu nampak bagus — model jauh sekali, dan yang menentukan
ialah model. Bentuk padat bervolum (beg galas, kek, cincin) bertahan dengan baik. Struktur nipis
berlubang koyak di laluan pantas, jadi tiara terus ikut laluan yang lebih perlahan.
Dan input lukisan kurang bayang, jadi ia menjadi relief dan bukan volum — haiwan kecil
pastel memerlukan prompt yang memaksa pembayangan lembut.

Pakaian dan rambut memang sukar: model hanya mengenalnya pada figura, jadi daripada prompt
*“gaun naga”* ia melukis naga. Yang membantu ialah bertukar kepada model fotorealistik dan
menulisnya seperti foto produk — *“gaun pada patung peraga yang tidak kelihatan”*.

Tambahan pula, Roblox mengendalikan gaun, kasut dan sarung tangan sebagai layered clothing dengan cage mesh,
yang kilang ini belum boleh buat. Untuk jari dan tangan, Roblox langsung tiada titik lekapan.
