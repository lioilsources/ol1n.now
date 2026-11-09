---
tagline: Tek bir parmak hareketiyle vole — ayağın üstü topla nerede buluşuyor, ne kadar falsoyla ve hangi milisaniyede
---
Fotball Simulator tek bir hareketi simüle eder: voleyi. Top önünde her seferinde farklı şekilde seker, sen de tek bir parmak hareketiyle onu kaleye vurursun. Takım yok, maç yok, sadece ayağının üstünün topla nerede ve ne zaman buluştuğu sorusu var. Geri kalan her şey, uçuş, falso, sekme ve golün olup olmadığı, fizik sayesinde bundan doğar.

### Tek hareket, dört karar

Ekranın altında büyük bir top var ve üzerinde yaptığın kaydırma hareketi her şeyi aynı anda söyler:

- **Parmağını nereye koyarsan**, ayağın üstü topa oradan vurur. Merkezin altından top yükselir, merkezin üstünden yere vurursun, yandan dönüş kazanır.
- **Hareketin kavisi** falsodur. Hareketi ne kadar bükersen top havada o kadar döner.
- **Hareketin hızı** şutun gücüdür.
- **Parmağını kaldırdığın an** temas anıdır. Volenin bir zaman aralığı vardır: sekmeden sonra top yükselir, durur ve düşer; ideal an, ayak üstü yüksekliğine indiği andır. Oyun bunu önceden bilir, çünkü top atılırken uçuşunu hesaplar.

Sapma milisaniye cinsinden ölçülür. ±30 ms'ye kadar PERFECT, sonra GOOD, LATE ve EARLY. Geç geçtir: ayağın üstü düşen topa yukarıdan vurur, top üst dönüş alır ve yere gömülür ya da kısa kalır. Hiç isabet ettiremeyen havayı tekmeler.

### Dondurulmuş kare ve uçuş

Temas anında dünya saniyenin bir kesri kadar durur. Topun üzerinde ayağın vurduğu nokta parlar, bir ok da nereye gittiğini gösterir. Üstte km/sa cinsinden hız, saniyedeki tur sayısıyla dönüş ve tam sapmayla birlikte zamanlama puanı belirir. Sonra top arkasında bir iz bırakarak uçar, böylece nasıl döndüğü görülür. Sonuç GOL, AUT ya da KISA olur ve kısa süre sonra sıradaki top sekerek gelir.

Daha fazla zamana ihtiyacın varsa **slow-mo**'yu aç: parmağın ekrana dokunduğunda oyun yavaşlar, böylece hareketi tamamlayabilirsin. Ama zamanlama oyun zamanında ölçülür, yani yavaşlatmak hile yapmaya yaramaz.

### Fizik

Topun uçuşu bir motorun fiziği değil, kendi hesaplamasıdır: yer çekimi, hava direnci, Magnus etkisi (dönen topun bu yüzden kavis çizmesi) ve dönüşün yavaş yavaş azalması. Çimden sekme yükseklik kaybettirir ve dönüş bu sırada yöne dönüşür. Temas, topun geldiği hızı hesaba katar; böylece zayıf vurulan top havada asılı kalmak yerine sadece seker. Sonuçlar, aynı modelin Python'daki bağımsız bir referans uygulamasına karşı çalışan otomatik testlerle güvence altındadır.

Oyun Godot 4.7'de yapıldı; telefona ise aynı sabitler ve aynı testlerle Flutter'da yeniden yazılmış hali geliyor. Sahne, 3D motor olmadan kendi perspektif izdüşümüyle çiziliyor.

### Durum

İlk aşama tamam: atış, vuruş, dondurulmuş kare, uçuş ve sonuçtan oluşan oynanabilir bir döngü. Saha ve kale şimdilik basit; henüz savrulan bir bacak, golde esneyen bir file ve topu takip eden bir kamera yok. Ardından oyun hissinin ince ayarı, kaleye atılan şutların ısı haritası ve istatistikler gelecek.

Aşağıdaki APK bir test sürümüdür (alfa). iPhone'da şimdilik yalnızca test kullanıcıları için TestFlight üzerinden.
