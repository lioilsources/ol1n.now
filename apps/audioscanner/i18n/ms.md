---
tagline: Peta akustik bilik anda daripada mikrofon telefon
---
Mainkan isyarat ujian melalui pembesar suara, berjalan mengelilingi bilik sambil
membawa telefon, dan spektrum diukur di setiap titik. Sementara itu, penjejakan
AR merekod di mana anda berdiri. Hasilnya ialah peta haba di atas pelan lantai:
di mana bes berdengung, di mana ia hilang, di mana hendak meletakkan pembesar
suara dan di mana pendengar.

**Ini bukan pengganti REW dengan mikrofon yang ditentukur.** Ini alat relatif —
perbezaan antara tempat dalam satu bilik. SPL mutlak daripada telefon yang tidak
ditentukur tidak wujud, dan aplikasi ini tidak pernah mendakwanya.

### Pengukuran

Meter SPL dan RTA dalam tiga puluh satu jalur satu pertiga oktaf dari 20 Hz
hingga 20 kHz, FFT 8192 dengan tetingkap Hann dan purata tenaga. Isyarat ujian
boleh dieksport ke WAV — hingar merah jambu dan sapuan logaritma, saluran kiri
dan kanan secara berasingan.

RTA mempunyai peak hold, surihan maksimum dan minimum serta pembekuan; tangkapan
yang dibekukan boleh disimpan sebagai titik. Fail penentukuran mikrofon (UMIK
atau REW) dan ofset SPL boleh dimuatkan, tetapi ia tidak pernah mengubah data
yang disimpan.

Ukur satu titik dengan satu ketikan, dengan purata tiga saat, atau biarkan
aplikasi mengukur secara berterusan setiap setengah meter. Daripada titik-titik
itu terhasil peta haba IDW dengan peluncur merentas jalur dan cadangan tempat
duduk yang paling rata.

Daripada sapuan logaritma, nyahkonvolusi Farina mengira sambutan dedenyut: bunyi
terus, pantulan pertama dan sambutan frekuensi berserta fasa, dengan tetingkap
gating boleh laras dan pelicinan dari 1/3 hingga 1/24 oktaf. Ditambah reputan
mengikut oktaf (EDT, T20, T30), C50 dan C80, lengkung Schroeder, graf dedenyut,
ETC dan spektrogram. Daripada sapuan yang sama juga terhasil herotan HD2 dan
HD3. Apabila pantulan tiba lebih awal daripada dedenyut berhenti berdering, ia
tidak dapat dipisahkan — aplikasi lebih rela tidak memulangkan apa-apa daripada
melabel cuping sisi sebagai dinding.

Mana-mana dua titik boleh dibandingkan, malah merentas sesi. Eksport FRD untuk
REW dan VituixCAD, dedenyut dan seluruh sesi dalam JSON.

### Mereka bentuk sistem

Dengan LiDAR, aplikasi mengambil geometri bilik melalui RoomPlan, mengira mod
dengan penjumlahan modal, menjalankan “subwoofer crawl” secara perisian, mencari
titik pantulan pertama dengan kaedah cermin dan menyemak sudut berbanding
cadangan Dolby. Daripada itu ia boleh menjana tetapan untuk Integra DRX-8.4,
termasuk lima belas jalur EQ-nya.

Di kedudukan mendengar, setiap saluran diukur dengan sapuan tersendiri. EQ
berdasarkan purata titik di sekeliling pendengar; jalur yang berbeza lebih
daripada 6 dB antara titik hanya mendapat separuh pembetulan. Potongan dibuat
dengan bebas, rangsangan hampir tiada, dan di atas frekuensi Schroeder tiada
apa-apa yang disentuh. Pratonton menunjukkan sebelum, sasaran dan ramalan
selepas, dan lengkung sasaran boleh dilaraskan. Pengukuran kedua selepas EQ
dimasukkan ke dalam penerima menunjukkan apa yang benar-benar dilakukan oleh
penapisnya.

### Apa yang aplikasi katakan secara terus terang

Satu mikrofon tidak dapat menentukan lokasi sumber, jadi hanya kedudukan telefon
disimpan, tidak pernah orientasinya sebagai arah bunyi. Apabila sistem memproses
isyarat secara senyap — AGC, penindasan hingar, pembatalan gema — lapisan natif
melaporkan apa yang sebenarnya diaktifkan: pengukuran melalui AGC bukan
pengukuran yang lebih teruk, ia ialah pengukuran AGC. Mikrofon Bluetooth dikesan
dan diberi amaran.

### Apa yang sengaja tiada

Memainkan isyarat daripada telefon. Pembesar suara telefon berakhir sekitar
500 Hz, iaitu di atas setiap mod yang berbaloi dicari — mengeksport WAV ke
sistem yang sebenar ialah satu-satunya cara yang masuk akal.

RoomPlan tidak wujud pada Android. Sebaliknya, satah menegak daripada ARCore
disusun menjadi kotak: ia melihat dinding yang pernah dilihat kamera, jarang
melihat sudut, dan tidak pernah di belakang perabot. Cukup untuk menamakan
sesuatu mod, tetapi tidak untuk titik pantulan — dan geometri itu membawa
maklumat tersebut tentang dirinya sendiri.

Pembetulan fasa, EQ parametrik dan berbilang subwoofer. Penerima hanya menerima
jarak dan lima belas jalur grafik; untuk lebih daripada itu perlu DSP luaran dan
eksport FRD ke REW.
