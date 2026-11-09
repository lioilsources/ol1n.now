---
tagline: Yeri doğrulayan — ama konumunu saklamayan iş bazlı mesai takibi
---
İnşaat firmaları ve servis ekipleri saatlerini hâlâ kâğıtla, WhatsApp'la ve Excel'le bildiriyor. Şefin kimin nerede olduğunu doğrulamasının bir yolu yok, işçinin de fazla mesaisini belgelemesinin. PMTracker belirli bir işte geçen süreyi ölçer ve her kayıtta kişinin gerçekten yerinde olup olmadığını bilir.

### Konum yalnızca iki kez, sonra silinir

Koordinatlar **yalnızca ölçümü başlatırken ve durdururken** gönderilir. Sunucu noktanın işin coğrafi sınırı (geofence) içinde olup olmadığını kontrol eder, tek bir bilgi kaydeder: "yerindeydi / değildi" — ve koordinatları atar. Hareket haritası yok, arka planda takip yok. Coğrafi sınırın dışındaki çalışmaya, denetim kaydına yazılan bir istisnayla izin verilebilir.

### Rolleri uygulama değil, veritabanı korur

Bir ekip üyesi atandığı işlerde süre tutar. Bir yönetici bunun yanında işleri ve personel planını yönetir, raporları görür. Bir sistem yöneticisi kullanıcıları yönetir. Yetkileri doğrudan veritabanındaki kurallar uygular, bu yüzden değiştirilmiş bir istemci bile onları aşamaz.

### Durum

Bu bir MVP: veri modeli, roller, coğrafi sınır doğrulaması ve giriş, ölçüm, işler, personel planı, raporlar ve yönetim ekranları hazır. Çekmeyen şantiyeler için çevrimdışı mod hazır ama henüz açılmadı ve uygulama henüz hiçbir firmada çalışmıyor. Giriş için işvereninden alacağın bir hesap gerekiyor.

### Beta test kullanıcıları için

Test sürümü şimdilik yalnızca **Android** için. Uydurma kişiler ve iki işle bir test firmasında, "Stavby s.r.o."da çalışıyor: Prag'daki Wenceslas Meydanı'nda ofis tadilatı ve Brno'daki Özgürlük Meydanı'nda klima. Veriler her an silinebilir. Uygulamada kayıt yok; hesabını seni teste davet eden kişi gönderir.

**Kurulum**

1. Telefonunda APK'yi yukarıdaki **İndirmeler** bölümündeki düğmeyle indir (ya da [GitHub Releases](https://github.com/lioilsources/PMTracker/releases) sayfasından).
2. İndirilen dosyayı aç ve Android sorduğunda bilinmeyen kaynaklardan yüklemeye izin ver.
3. Google Play Protect uygulamayı tanımadığı konusunda uyarabilir. Bunun sebebi Google Play'den gelmemesi; yine de yüklemeyi seç.
4. **PMTracker**'ı başlat ve mesajla gelen hesapla giriş yap.

**Ekip üyesi olarak ne denemeli**

- **Výkaz** (Puantaj) sekmesinde **Zahájit výkaz** (Puantajı başlat) düğmesine bas, bir iş seç ve konum erişimine izin ver. İşin yerinde sürenin altında yeşil bir "Na místě" (Yerinde) görünür.
- Yerinde değilsen uygulama bir sebep ister. Sorun değil: örneğin "test" yaz, kayıt yer dışında oluşturulduğu notuyla kaydedilir.
- Bir süre sonra ölçümü **Ukončit výkaz** (Puantajı bitir) düğmesiyle durdur. "Dnes celkem" (Bugün toplam) artar.
- **Zakázky** (İşler) sekmesinde ayrıntıları aç: adres, coğrafi sınırın büyüklüğü, kimin atandığı ve görev listesi.

**Yönetici olarak ne denemeli**

- Ayrıca **Roster** (ekibin) ve kişilerin işlere göre çalışma sürelerini gösteren **Reporty** (Raporlar) sekmelerini görürsün. Rapora yalnızca durdurulmuş ölçümler sayılır; dönemi sağ üstten değiştirirsin.
- Hesap değiştirmek için çıkış yap (**Výkaz** sekmesinde sağ üstteki simge).

**Henüz neler beklememeli**

- Uygulama internetsiz çalışmaz, çevrimdışı mod daha sonra gelecek.
- Unutulan ölçüm kendiliğinden durmaz, elle durdur.
- Test kullanıcıları için iPhone sürümü henüz yok.

Hataları veya fikirleri seni davet eden kişiye gönder: ne yapıyordun, ne oldu ve hangi hesapla. Bir ekran görüntüsü çok yardımcı olur.
