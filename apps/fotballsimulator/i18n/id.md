---
tagline: Voli dengan satu usapan jari — di mana punggung kaki bertemu bola, dengan putaran sebanyak apa dan di milidetik ke berapa
---
Fotball Simulator menyimulasikan satu gerakan saja: tendangan voli. Bola memantul di depanmu, setiap kali dengan cara berbeda, dan dengan satu usapan jari kamu menendangnya ke gawang. Tanpa tim, tanpa pertandingan, hanya pertanyaan di mana dan kapan punggung kakimu bertemu bola. Semua yang lain, lintasan, putaran, pantulan, dan apakah jadi gol, mengikuti dari situ lewat fisika.

### Satu usapan, empat keputusan

Di bagian bawah layar ada bola besar, dan satu usapan di atasnya menyampaikan semuanya sekaligus:

- **Di mana kamu menaruh jari**, di situ punggung kaki mengenai bola. Di bawah titik tengah bola naik, di atasnya kamu menendang bola ke tanah, dari samping bola mendapat putaran.
- **Lengkungan usapan** adalah efek putarannya. Makin melengkung usapanmu, makin bola berbelok saat melayang.
- **Kecepatan usapan** adalah kekuatan tendangan.
- **Saat kamu mengangkat jari** adalah momen kontak. Voli punya jendela waktu: setelah memantul bola naik, berhenti, lalu jatuh, dan momen idealnya adalah ketika bola turun setinggi punggung kaki. Game sudah tahu momen itu sebelumnya, karena lintasan bola dihitung saat bola dilempar.

Selisihnya diukur dalam milidetik. Sampai ±30 ms itu PERFECT, lalu GOOD, LATE, dan EARLY. Terlambat ya terlambat: punggung kaki mengenai bola yang sedang jatuh dari atas, bola mendapat topspin lalu menghujam tanah atau tidak sampai. Kalau sama sekali meleset, kamu menendang angin.

### Freeze-frame dan lintasan

Pada momen kontak, dunia berhenti sepersekian detik. Di bola menyala titik tempat punggung kaki mengenainya, dan panah menunjukkan arah terbangnya. Di atas muncul kecepatan dalam km/jam, putaran dalam putaran per detik, dan nilai timing dengan selisih tepatnya. Lalu bola melayang meninggalkan jejak di belakangnya, sehingga terlihat bagaimana ia berbelok. Hasilnya GOL, MELEBAR, atau TIDAK SAMPAI, dan tak lama kemudian bola berikutnya datang memantul.

Kalau butuh waktu lebih, nyalakan **slow-mo**: begitu jari menyentuh layar, game melambat supaya kamu bisa menyelesaikan usapan. Tapi timing diukur dalam waktu game, jadi memperlambat tidak membantu untuk curang.

### Fisika

Lintasan bola adalah perhitungan sendiri, bukan fisika dari engine: gravitasi, hambatan udara, efek Magnus (karena itulah bola yang berputar berbelok), dan putaran yang berangsur melemah. Pantulan di rumput mengurangi ketinggian, dan putaran berubah menjadi arah. Kontak memperhitungkan kecepatan datangnya bola, jadi bola yang ditendang pelan hanya memantul, bukannya menggantung di udara. Hasilnya dijaga oleh pengujian otomatis terhadap implementasi referensi independen dari model yang sama dalam Python.

Game ini dibuat di Godot 4.7, dan yang masuk ke ponsel adalah versi tulis ulangnya di Flutter dengan konstanta dan pengujian yang sama. Adegannya digambar dengan proyeksi perspektif sendiri, tanpa engine 3D.

### Status

Tahap pertama sudah selesai: loop yang bisa dimainkan berupa lemparan, tendangan, freeze-frame, lintasan, dan hasil. Lapangan dan gawang untuk sementara masih sederhana; yang belum ada adalah kaki yang mengayun, jaring yang menggembung saat gol, dan kamera yang mengikuti bola. Setelah itu akan ada penyetelan rasa permainan, heatmap tembakan ke gawang, dan statistik.

APK di bawah adalah build uji coba (alfa). Di iPhone untuk saat ini hanya lewat TestFlight untuk penguji.
