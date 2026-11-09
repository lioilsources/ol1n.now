---
tagline: Kehadiran mengikut projek yang mengesahkan lokasi — tanpa menyimpan kedudukan anda
---
Syarikat pembinaan dan pasukan servis masih melaporkan jam kerja melalui kertas, WhatsApp dan Excel. Penyelia tiada cara untuk menyemak siapa berada di mana, dan pekerja tiada cara untuk membuktikan kerja lebih masa. PMTracker mengukur masa pada projek tertentu dan, bagi setiap rekod, tahu sama ada orang itu benar-benar berada di lokasi.

### Lokasi hanya dua kali, kemudian dibuang

Koordinat dihantar **hanya semasa memulakan dan menghentikan** pengukuran. Pelayan menyemak sama ada titik itu berada dalam geopagar projek, menyimpan satu maklumat sahaja, "berada / tidak berada di lokasi", lalu membuang koordinat. Tiada peta pergerakan, tiada penjejakan di latar belakang. Kerja di luar geopagar boleh dibenarkan melalui pengecualian yang dicatat dalam log audit.

### Peranan dikawal oleh pangkalan data, bukan aplikasi

Ahli pasukan merekod masa pada projek yang ditugaskan kepadanya. Pengurus turut mengurus projek dan jadual tenaga kerja serta melihat laporan. Pentadbir mengurus pengguna. Kebenaran dikuatkuasakan oleh peraturan terus dalam pangkalan data, jadi klien yang diubah suai pun tidak dapat memintasnya.

### Status

Ini MVP: model data, peranan, pengesahan geopagar dan skrin untuk log masuk, pengukuran, projek, jadual, laporan dan pentadbiran sudah tersedia. Mod luar talian untuk tapak binaan tanpa isyarat sudah disediakan tetapi belum diaktifkan, dan aplikasi ini belum digunakan di mana-mana syarikat. Untuk log masuk, anda memerlukan akaun daripada majikan anda.

### Untuk penguji beta

Versi ujian buat masa ini hanya untuk **Android**. Ia berjalan dengan syarikat ujian "Stavby s.r.o." yang mempunyai orang rekaan dan dua projek: pengubahsuaian pejabat di Dataran Wenceslas di Prague dan penghawa dingin di Dataran Kebebasan di Brno. Data boleh dipadam pada bila-bila masa. Tiada pendaftaran dalam aplikasi; akaun akan dihantar oleh orang yang menjemput anda untuk menguji.

**Pemasangan**

1. Pada telefon, muat turun APK dengan butang dalam bahagian **Muat turun** di atas (atau dari [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Buka fail yang dimuat turun dan benarkan pemasangan daripada sumber tidak diketahui apabila Android bertanya.
3. Google Play Protect mungkin memberi amaran bahawa ia tidak mengenali aplikasi ini. Ini kerana ia tidak datang dari Google Play; pilih pasang juga.
4. Lancarkan **PMTracker** dan log masuk dengan akaun yang anda terima dalam mesej.

**Apa yang boleh dicuba sebagai ahli pasukan**

- Pada tab **Výkaz** (Lembaran masa), ketik **Zahájit výkaz** (Mulakan lembaran masa), pilih projek dan benarkan akses lokasi. Di lokasi projek, "Na místě" (Di lokasi) berwarna hijau akan muncul di bawah masa.
- Jika anda tiada di lokasi, aplikasi meminta sebab. Tidak mengapa: tulis contohnya "test" dan rekod akan disimpan dengan nota bahawa ia dibuat di luar lokasi.
- Selepas seketika, hentikan pengukuran dengan butang **Ukončit výkaz** (Tamatkan lembaran masa). "Dnes celkem" (Jumlah hari ini) akan bertambah.
- Pada tab **Zakázky** (Projek), buka butiran: alamat, saiz geopagar, siapa yang ditugaskan dan senarai semak tugasan.

**Apa yang boleh dicuba sebagai pengurus**

- Anda juga melihat **Roster** (pasukan anda) dan **Reporty** (Laporan) dengan masa kerja setiap orang mengikut projek. Hanya pengukuran yang telah dihentikan dikira dalam laporan; tempoh boleh ditukar di penjuru kanan atas.
- Tukar akaun dengan log keluar (ikon di penjuru kanan atas pada tab **Výkaz**).

**Apa yang belum boleh dijangka**

- Tanpa internet aplikasi tidak berfungsi; mod luar talian akan datang kemudian.
- Pengukuran yang terlupa tidak berhenti sendiri; hentikannya secara manual.
- Versi iPhone untuk penguji belum ada.

Hantar pepijat atau idea kepada orang yang menjemput anda: apa yang anda lakukan, apa yang berlaku dan akaun mana yang digunakan. Tangkapan skrin sangat membantu.
