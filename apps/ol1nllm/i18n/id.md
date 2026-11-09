---
tagline: Chat AI dengan peran, Pustakawan dan Pengacara, studio untuk gambar, video, dongeng, musik, dan suara
---
Ol1nLLM adalah satu aplikasi di atas server milikmu sendiri: mengobrol, mencari di perpustakaan dan undang-undang, menggambar, menghidupkan gambar jadi video, membuat dongeng, menggubah musik, dan membacakan jawaban dengan suara rekaman.
Panduan lengkap dengan tangkapan layar ada di halaman [Apa yang bisa dilakukan aplikasi](ol1nllm-features.html).

### Chat

Percakapan dimulai dengan memilih **peran** — sepuluh karakter dari anak lima tahun sampai kakek, dan empat asisten dengan data sendiri. Jawaban muncul sambil ditulis, percakapan bisa **bercabang**, dan peran bisa diganti di tengah jalan.

- **Pustakawan** menjawab dari korpus filsafat dan kitab suci dalam bahasa aslinya, lalu menunjukkan kutipan yang dipakainya beserta terjemahan bahasa Ceko.
- **Pengacara** menjawab dari undang-undang Ceko yang berlaku dan mengutip pasal-pasalnya.
- **Pengacara – kontrak** menyusun kontrak dari templat: bertanya kartu demi kartu dan menjaga batas-batas hukum.
- **Leads** mencari perusahaan dan lembaga di Daftar Kontrak Ceko.

### Image Studio

Gambar dibuat dalam putaran yang membentuk pohon: teks → gambar, lalu penyuntingan varian yang dipilih. Sembilan belas model (FLUX, SDXL, lini anime), lebih dari tiga ratus **gaya** seni (budaya dan zaman, seniman, media), templat **pose**, **LoRA** dari server, dan prompt negatif yang ditulis dengan huruf kapital.

- **Pertahankan pose** dan **Pertahankan wajah** — tokoh baru dengan sikap dari gambar acuan, bisa juga dengan wajahnya.
- **Peta gaya** — ratusan gambar dengan tema sama yang disusun menurut kemiripan; geser jari di atas mozaik, gaya berubah seperti animasi, dan gaya yang dipilih langsung dipakai.
- **Inpaint** — warnai sebuah area dan jelaskan apa yang harus ada di sana.
- **Penata rambut** — gaya atau warna rambut baru tanpa menggambar masker.
- **Gerakkan** — video pendek dari gambar: tarian dan gestur dari server, atau deskripsi gerakanmu sendiri.
- **3D** — model untuk dicetak (STL), atau figur menari dengan kerangka.

### Story Studio

Pilih dongeng dari sepuluh skenario, isi perannya dengan gambarmu sendiri, dan server mengubahnya menjadi video animasi satu menit dengan narator, musik, dan subtitel. Adegan bisa diperiksa sebelum dianimasikan, dan yang gagal bisa digambar ulang.

### Music Studio

Berikan cuplikan musik ke studio — dari file atau rekaman mikrofon — dan studio akan membaca genre, tempo, dan nadanya. **Vibe** menggubah lagu baru dengan nuansa yang sama, **Groove** mengaransemen ulang lagu aslinya ke genre lain.

### Voice Studio

Dari rekaman pendek — bahkan dari trek audio sebuah video — lahir **suara** milikmu sendiri. Suara apa pun bisa dicoba dengan kalimat apa saja dan dipasangkan ke peran di chat. Tombol speaker di bawah jawaban lalu membacakannya dengan suara peran itu.

### Riwayat

Percakapan, sesi, proyek, dan dongeng tetap tersimpan di ponsel. Tugas panjang berjalan di server: aplikasi boleh ditutup, dan saat kamu kembali ia tersambung lagi dengan sendirinya.

Dibuat dengan Flutter, berjalan di ponsel dan desktop. Aplikasi ini adalah klien untuk server model milikmu sendiri; tanpa server itu, ia tidak menghasilkan apa pun.
