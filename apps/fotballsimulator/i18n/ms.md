---
tagline: Voli dengan satu leretan jari — di mana kekura kaki bertemu bola, dengan putaran sebanyak mana dan pada milisaat yang ke berapa
---
Fotball Simulator menyimulasikan satu gerakan sahaja: tendangan voli. Bola melantun di hadapan anda, setiap kali dengan cara berbeza, dan dengan satu leretan jari anda menendangnya ke arah gol. Tiada pasukan, tiada perlawanan, hanya persoalan di mana dan bila kekura kaki anda bertemu bola. Semua yang lain, lintasan, putaran, lantunan dan sama ada ia menjadi gol, terhasil daripada itu melalui fizik.

### Satu leretan, empat keputusan

Di bahagian bawah skrin ada sebiji bola besar, dan satu leretan di atasnya menyatakan semuanya sekali gus:

- **Di mana anda meletakkan jari**, di situlah kekura kaki mengenai bola. Di bawah titik tengah bola naik, di atasnya anda menendang bola ke tanah, dari sisi bola mendapat putaran.
- **Lengkungan leretan** ialah putaran bola. Makin melengkung leretan anda, makin bola membelok semasa terbang.
- **Kelajuan leretan** ialah kekuatan tendangan.
- **Saat anda mengangkat jari** ialah detik sentuhan. Voli ada tetingkap masanya: selepas melantun bola naik, berhenti dan jatuh, dan detik paling sesuai ialah apabila bola turun ke paras kekura kaki. Permainan sudah tahu detik itu lebih awal, kerana lintasan bola dikira semasa bola dilambung.

Sisihannya diukur dalam milisaat. Sehingga ±30 ms ia PERFECT, kemudian GOOD, LATE dan EARLY. Lewat tetap lewat: kekura kaki mengenai bola yang sedang jatuh dari atas, bola mendapat topspin lalu menjunam ke tanah atau tidak sampai. Jika langsung tersasar, anda hanya menendang angin.

### Freeze-frame dan lintasan

Pada detik sentuhan, dunia berhenti seketika. Pada bola menyala titik tempat kekura kaki mengenainya, dan anak panah menunjukkan arah terbangnya. Di atas muncul kelajuan dalam km/j, putaran dalam pusingan sesaat dan penilaian masa dengan sisihan tepatnya. Kemudian bola terbang meninggalkan jejak di belakang, jadi kelihatan bagaimana ia membelok. Keputusannya GOL, TERSASAR atau TIDAK SAMPAI, dan tidak lama kemudian bola seterusnya datang melantun.

Jika perlukan lebih masa, hidupkan **slow-mo**: sebaik sahaja jari menyentuh skrin, permainan menjadi perlahan supaya anda sempat melengkapkan leretan. Namun masa diukur dalam masa permainan, jadi memperlahankan tidak membantu untuk menipu.

### Fizik

Lintasan bola ialah pengiraan sendiri, bukan fizik daripada enjin: graviti, rintangan udara, kesan Magnus (sebab itulah bola yang berputar membelok) dan putaran yang beransur-ansur berkurang. Lantunan di atas rumput mengurangkan ketinggian, dan putaran bertukar menjadi arah. Sentuhan mengambil kira kelajuan bola tiba, jadi bola yang ditendang perlahan hanya melantun, bukannya tergantung di udara. Keputusannya dijamin oleh ujian automatik berbanding pelaksanaan rujukan bebas bagi model yang sama dalam Python.

Permainan ini dibina dalam Godot 4.7, dan yang sampai ke telefon ialah versi tulis semulanya dalam Flutter dengan pemalar yang sama dan ujian yang sama. Adegannya dilukis menggunakan unjuran perspektif sendiri, tanpa enjin 3D.

### Status

Fasa pertama sudah siap: gelung yang boleh dimainkan iaitu lambungan, tendangan, freeze-frame, lintasan dan keputusan. Padang dan gol buat masa ini masih ringkas; yang belum ada ialah kaki yang menghayun, jaring yang mengembung apabila gol dan kamera yang mengikut bola. Selepas itu akan datang penalaan rasa permainan, peta haba tendangan ke arah gol dan statistik.

APK di bawah ialah binaan percubaan (alfa). Pada iPhone buat masa ini hanya melalui TestFlight untuk penguji.
