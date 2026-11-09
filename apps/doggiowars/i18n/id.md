---
tagline: Dogfight voxel di antara pulau-pulau melayang (game mandiri untuk Luanti)
---
Kamu adalah pesawat tempurnya. Bukan pilot di dalamnya — mesin itu sendiri. Di
DoggioWars tidak ada jalan kaki, menambang, atau membangun: kamu terbang sejak
detik pertama.

Di bawahmu terbentang langit penuh **pulau melayang** dalam dua belas bioma —
gunung berapi dengan lava meluap dari kawahnya, mesa gletser bergantungan es,
laguna atol, jamur raksasa, menara kristal yang berpendar. Semuanya dibuat dari
sebuah angka yang disebut seed, jadi tidak ada dua dunia yang sama, dan
pulau-pulaunya **bisa dihancurkan**: tembakanmu mematahkan bongkahan yang lalu
berjatuhan ke kehampaan.

### Siapa yang terbang di sekitar

Langit tidak kosong. Di sekitar pulau-pulaunya berputar **naga ular** dari lima
elemen — naga api di atas gunung berapi dan abu, naga es di atas gletser, naga
air di atas atol, naga lumpur di atas rawa, dan naga listrik di atas kristal.
**Cacing pasir** berenang menembus gurun seperti lumba-lumba, **penjaga batu**
mengawasi pulau-pulau tandus, **ubur-ubur** bercahaya melayang di atas pulau
hijau, dan kalau beruntung kamu akan bertemu **paus langit**. Untuk sekarang
semuanya damai: mereka tidak menyakitimu dan kamu juga tidak menyakiti mereka.
Seed yang sama menghasilkan penghuni yang sama.

Tombol **Z** atau perintah `/map` membuka peta dunia layar penuh: pulau diwarnai
menurut bioma, titik untuk para makhluk, dan kapalmu beserta arah terbangnya.

### Dua mesin dalam satu

Keduanya diganti dengan perintah `/mode`, dan cara terbangnya benar-benar
berbeda.

**Kapal selam** adalah mode bawaan dan memaafkan kesalahan. Ia melayang di
tempat — lepaskan kontrol dan ia berhenti perlahan, jadi kamu bisa santai
mengamati pulau atau bermanuver di antara bebatuan milimeter demi milimeter. Ia
juga bisa bergeser ke samping tanpa mengubah arah.

**Pesawat tempur** tidak pernah berhenti. Ia menjaga kecepatan yang kamu atur
dan berbelok dengan **memiringkan badan** — stik kiri merebahkannya ke satu
sayap dan hidungnya berputar sendiri, makin curam kemiringannya makin cepat.
Menukik tajam mendorongnya melewati kecepatan maksimum, sedangkan menanjak
menguras kecepatan, jadi kamu terus menukar ketinggian dengan kecepatan dan
sebaliknya. Ia bisa barrel roll, looping, dan putaran Immelmann — dan terbang
mepet melewati batu mengisi boost, jadi mengambil risiko itu sepadan.

### Mengejar kelinci emas

Perintah `/race` memulai balap anjing greyhound: seekor kelinci emas melesat
di langit, bisa melakukan trik yang sama denganmu, meliuk melewati terowongan
yang dibor menembus pulau-pulau, dan tidak menunggu. Entah kamu terus
menempelnya sepanjang lintasan, atau tidak.

### Kontrol

Mouse dan keyboard bisa dipakai, tapi game ini dibuat untuk **gamepad** — Xbox
360 dan PS4 DualShock lewat dukungan joystick bawaan Luanti, tanpa mapper
eksternal. Stik kiri mengemudikan pesawat, stik kanan membidik senjata terlepas
dari ke mana kamu terbang. Kemiringan dan sudut anggukan ditunjukkan oleh
waterpass di HUD, karena Luanti tidak bisa memiringkan cakrawala.

### Chat Twitch

Game ini punya koneksi Twitch opsional lewat layanan
[chatbridge](https://github.com/lioilsources/chatbridge): penonton memakai
perintah chat (`!drak`, `!velryba`, `!meduzy`…) untuk memanggil makhluk ke
dunia streamer. Chat hanya bisa menambahkan makhluk yang membereskan dirinya
sendiri, tidak pernah menyentuh terrain, dan `/chatoff` langsung mematikannya.
Tanpa pengaturan di `minetest.conf`, koneksinya nonaktif.

### Instalasi

Kamu butuh **Luanti 5.12 atau yang lebih baru** dan **tidak ada lagi yang
lain** — sejak versi 2.0 DoggioWars adalah game mandiri, bukan mod, jadi
Minetest Game tidak diperlukan lagi.

Ekstrak arsipnya ke folder `games/` di direktori data Luanti. Di Windows itu
`%APPDATA%\Minetest\games\`, untuk versi zip portabel `games\` langsung di
folder game. Di macOS `~/Library/Application Support/minetest/games/`, di Linux
`~/.minetest/games/`.

Folder hasil ekstrak harus bernama **`doggiowars_game`**. Lalu jalankan Luanti,
pilih DoggioWars di bilah bawah menu utama, dan tekan **New**.

Kalau kamu masih punya versi lama sebagai **mod** di folder `mods/`, hapus
saja — sejak versi 2.0 ini adalah game, dan memasang keduanya sekaligus tidak
masuk akal.
