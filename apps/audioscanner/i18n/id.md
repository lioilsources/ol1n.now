---
tagline: Peta akustik ruanganmu dari mikrofon ponsel
---
Putar sinyal uji dari speaker, kelilingi ruangan sambil membawa ponsel, dan di
setiap titik spektrumnya diukur. Sementara itu, pelacakan AR mencatat di mana
kamu berdiri. Hasilnya adalah heatmap di atas denah: di mana bass menggelegar,
di mana menghilang, di mana speaker sebaiknya diletakkan dan di mana pendengar.

**Ini bukan pengganti REW dengan mikrofon terkalibrasi.** Ini alat relatif —
perbedaan antartempat dalam satu ruangan. SPL absolut dari ponsel yang belum
dikalibrasi itu tidak ada, dan aplikasi ini tidak pernah mengklaimnya.

### Pengukuran

Pengukur SPL dan RTA dalam tiga puluh satu pita sepertiga oktaf dari 20 Hz
hingga 20 kHz, FFT 8192 dengan jendela Hann dan perataan energi. Sinyal uji bisa
diekspor ke WAV — derau merah muda dan sweep logaritmik, kanal kiri dan kanan
terpisah.

RTA punya peak hold, jejak maksimum dan minimum, serta pembekuan; tangkapan yang
dibekukan bisa disimpan sebagai titik. File kalibrasi mikrofon (UMIK atau REW)
dan offset SPL bisa dimuat, tetapi tidak pernah mengubah data yang tersimpan.

Ukur satu titik dengan sekali ketuk, dengan perataan tiga detik, atau biarkan
aplikasi mengukur terus-menerus setiap setengah meter. Dari titik-titik itu
terbentuk heatmap IDW dengan slider melintasi pita dan rekomendasi tempat duduk
yang paling rata.

Dari sweep logaritmik, dekonvolusi Farina menghitung respons impuls: suara
langsung, pantulan pertama, dan respons frekuensi beserta fasenya, dengan
jendela gating yang bisa diatur dan penghalusan dari 1/3 hingga 1/24 oktaf.
Ditambah peluruhan per oktaf (EDT, T20, T30), C50 dan C80, kurva Schroeder,
grafik impuls, ETC, dan spektrogram. Dari sweep yang sama juga keluar distorsi
HD2 dan HD3. Kalau pantulan datang lebih cepat daripada impuls berhenti
berdering, pantulan itu tidak bisa dipisahkan — aplikasi lebih memilih tidak
mengembalikan apa pun daripada menganggap sidelobe sebagai dinding.

Dua titik mana pun bisa dibandingkan, bahkan lintas sesi. Ekspornya FRD untuk
REW dan VituixCAD, impuls, dan seluruh sesi dalam JSON.

### Merancang sistem

Dengan LiDAR, aplikasi mengambil geometri ruangan lewat RoomPlan, menghitung
mode dengan penjumlahan modal, menjalankan “subwoofer crawl” secara perangkat
lunak, menemukan titik pantulan pertama dengan metode cermin, dan memeriksa
sudutnya terhadap rekomendasi Dolby. Dari situ aplikasi bisa membuat pengaturan
untuk Integra DRX-8.4, termasuk lima belas pita EQ-nya.

Di posisi dengar, setiap kanal diukur dengan sweep tersendiri. EQ berangkat dari
rata-rata titik-titik di sekitar pendengar; pita yang selisihnya antartitik lebih
dari 6 dB hanya mendapat setengah koreksi. Pemotongan dilakukan leluasa,
penguatan nyaris tidak, dan di atas frekuensi Schroeder tidak ada yang disentuh.
Pratinjau menampilkan kondisi sebelum, target, dan perkiraan sesudah, dan kurva
target bisa diubah. Pengukuran kedua setelah EQ dimasukkan ke receiver
menunjukkan apa yang benar-benar dilakukan filternya.

### Yang dikatakan aplikasi secara terbuka

Satu mikrofon tidak bisa melokalisasi sumber suara, jadi yang disimpan hanya
posisi ponsel, tidak pernah orientasinya sebagai arah suara. Ketika sistem
diam-diam memproses sinyal — AGC, peredam derau, pembatal gema — lapisan native
melaporkan apa yang benar-benar diaktifkan: pengukuran lewat AGC bukan
pengukuran yang lebih buruk, melainkan pengukuran AGC. Mikrofon Bluetooth
terdeteksi dan diberi peringatan.

### Yang sengaja tidak ada

Memutar sinyal dari ponsel. Speaker ponsel berhenti di sekitar 500 Hz, jadi di
atas setiap mode yang layak dicari — mengekspor WAV ke sistem yang layak adalah
satu-satunya cara yang masuk akal.

RoomPlan tidak ada di Android. Sebagai gantinya, bidang vertikal dari ARCore
dirangkai menjadi kotak: bidang itu melihat dinding yang pernah dilihat kamera,
jarang melihat sudut, dan tidak pernah melihat ke balik perabot. Cukup untuk
menamai sebuah mode, tidak cukup untuk titik pantulan — dan geometrinya membawa
informasi itu tentang dirinya sendiri.

Koreksi fase, EQ parametrik, dan beberapa subwoofer. Receiver hanya menerima
jarak dan lima belas pita grafis; untuk lebih dari itu perlu DSP eksternal dan
ekspor FRD ke REW.
