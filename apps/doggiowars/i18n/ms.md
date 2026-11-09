---
tagline: Pertempuran udara voxel di antara pulau-pulau terapung (permainan bebas untuk Luanti)
---
Kamu ialah jet pejuang itu. Bukan juruterbang di dalamnya — mesin itu sendiri.
Dalam DoggioWars tiada berjalan kaki, melombong atau membina: kamu terbang
sejak saat pertama.

Di bawahmu terbentang langit penuh **pulau terapung** dalam dua belas bioma —
gunung berapi dengan lava melimpah dari kawah, mesa glasier berjuntai ais,
lagun atol, cendawan gergasi, menara kristal yang bersinar. Semuanya dijana
daripada satu nombor yang dipanggil seed, jadi tiada dua dunia yang sama, dan
pulau-pulau itu **boleh dimusnahkan**: tembakanmu memecahkan ketulan yang
kemudian jatuh ke dalam kehampaan.

### Siapa yang terbang di sekeliling

Langit tidak kosong. Di sekeliling pulau masing-masing berlegar **naga ular**
daripada lima unsur — naga api di atas gunung berapi dan abu, naga ais di atas
glasier, naga air di atas atol, naga lumpur di atas paya dan naga elektrik di
atas kristal. **Cacing pasir** berenang merentas gurun seperti ikan lumba-lumba,
**penjaga batu** mengawasi pulau-pulau gersang, **obor-obor** bercahaya
melayang di atas pulau hijau, dan jika bernasib baik kamu akan bertemu **paus
langit**. Buat masa ini semuanya aman: mereka tidak mencederakanmu dan kamu
juga tidak mencederakan mereka. Seed yang sama memberi penghuni yang sama.

Kekunci **Z** atau arahan `/map` membuka peta dunia skrin penuh: pulau diwarnakan
mengikut bioma, titik untuk makhluk dan kapalmu bersama arah penerbangannya.

### Dua mesin dalam satu

Kedua-duanya ditukar dengan arahan `/mode`, dan cara terbangnya sangat berbeza.

**Kapal selam** ialah mod lalai dan memaafkan kesilapan. Ia terapung di
tempat — lepaskan kawalan dan ia berhenti perlahan-lahan, jadi kamu boleh
meninjau pulau dengan tenang atau bergerak di celah batu milimeter demi
milimeter. Ia juga boleh mengelak ke tepi tanpa menukar haluan.

**Jet pejuang** tidak pernah berhenti. Ia mengekalkan kelajuan yang kamu
tetapkan dan membelok dengan **condongan** — kayu bedik kiri membaringkannya ke
atas sayap dan hidungnya berpusing sendiri, makin curam condongnya makin
mudah. Junaman curam menolaknya melebihi kelajuan maksimum, manakala mendaki
pula mengurangkan kelajuan, jadi kamu sentiasa menukar ketinggian dengan
kelajuan dan sebaliknya. Ia boleh melakukan barrel roll, looping dan pusingan
Immelmann — dan terbang rapat melepasi batu akan mengecas boost, jadi berani
mengambil risiko itu berbaloi.

### Memburu arnab emas

Arahan `/race` memulakan perlumbaan anjing greyhound: seekor arnab emas
meluncur di langit, boleh melakukan helah yang sama sepertimu, menyelinap
melalui terowong yang digerudi menembusi pulau-pulau dan tidak menunggu. Sama
ada kamu mengekorinya sepanjang laluan, atau tidak.

### Kawalan

Tetikus dan papan kekunci boleh digunakan, tetapi permainan ini dibuat untuk
**gamepad** — Xbox 360 dan PS4 DualShock melalui sokongan kayu bedik terbina
dalam Luanti, tanpa pemeta luaran. Kayu bedik kiri memandu pesawat, yang kanan
membidik senjata tanpa mengira ke mana kamu terbang. Condongan dan jongket
ditunjukkan oleh aras gelembung dalam HUD, kerana Luanti tidak boleh
mencondongkan ufuk.

### Sembang Twitch

Permainan ini ada sambungan Twitch pilihan melalui perkhidmatan
[chatbridge](https://github.com/lioilsources/chatbridge): penonton menggunakan
arahan sembang (`!drak`, `!velryba`, `!meduzy`…) untuk memanggil makhluk ke
dunia penstrim. Sembang hanya boleh menambah makhluk yang membersihkan diri
sendiri, tidak pernah menyentuh rupa bumi, dan `/chatoff` mematikannya serta
merta. Tanpa tetapan dalam `minetest.conf`, sambungan itu dimatikan.

### Pemasangan

Kamu perlukan **Luanti 5.12 atau lebih baharu** dan **tiada yang lain** — sejak
versi 2.0 DoggioWars ialah permainan bebas, bukan mod, jadi Minetest Game tidak
diperlukan lagi.

Nyahzip arkib ke dalam folder `games/` dalam direktori data Luanti kamu. Di
Windows ia ialah `%APPDATA%\Minetest\games\`, bagi versi zip mudah alih pula
`games\` terus dalam folder permainan. Di macOS
`~/Library/Application Support/minetest/games/`, di Linux `~/.minetest/games/`.

Folder yang dinyahzip mesti dinamakan **`doggiowars_game`**. Kemudian lancarkan
Luanti, pilih DoggioWars di bar bawah menu utama dan tekan **New**.

Jika kamu masih ada versi lama sebagai **mod** dalam folder `mods/`, padamkannya —
sejak versi 2.0 ia ialah permainan, dan memasang kedua-duanya serentak tidak
masuk akal.
