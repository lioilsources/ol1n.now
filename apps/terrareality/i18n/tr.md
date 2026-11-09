---
tagline: Haritada aramadan ödenmiş kiraya kadar ev kiralama — ev sahipleri, kiracılar ve işletmeci için
---
TerraReality, daire ve odaların uzun süreli kiralanması için bir platformdur. Prag ve çevresinde başlıyor, ancak verileri en başından Orta Avrupa'nın diğer ülkelerine de hazır (sözleşmenin yargı yetkisi, para birimi, dil). Bir ilan portalından farklı olarak iletişimde bitmez: ev sahibini ve kiracıyı kiralamanın tamamında yönlendirir — arama, mesajlar, başvuru, ev gezmesi, sözleşme ve imza, ödemelere ve onların takibine kadar.

Platformun dört yüzü var. **Ev arayan** haritada arar ya da ne istediğini düz bir cümleyle yazar. **Ev sahibi veya yönetici** e-ticaret tarzında bir yönetim paneline sahiptir: ilanlar, adaylar, sözleşmeler, banka, portföy ve faturalama. **Kiracı** sözleşmesi, ödemeleri ve QR kodlarıyla kendi kiracı portalına sahiptir. **İşletmeci** onay, moderasyon ve ayarlar için bir backoffice'e sahiptir. Bunlara ek olarak iOS ve Android için bir mobil uygulama.

Ekran görüntüleri test verileriyle geliştirme ortamından alınmıştır: isimler uydurmadır, daire fotoğrafları temsilidir ve yapay zekâ önerileri dil modeli olmadan çevrimdışı modda üretilmiştir.

### Haritada ve sohbetle arama

Harita bölgeden belediyeye ve semte, oradan sokağa kadar iner ve her ölçekte nerede kaç ilan olduğunu gösterir. Yanında her seçeneğin sonuç sayısıyla filtreler bulunur (tür, fiyat, alan, oda düzeni, eşya durumu, evcil hayvan, ulaşım). Tıklamak istemeyen, örneğin "Prag 6'da köpekle, balkonlu, 25 000'e kadar 2+kk" yazar — platform cümleden filtreleri ve harita görünümünü ayarlar ve cümleyi nasıl anladığını gösterir. Arama kaydedilebilir, yeni ilanlar için bildirim gelir.

### Yapay zekâ destekli ilan — her zaman bir insanın onayıyla

Ev sahibi adresi resmî adres kaydından (RÚIAN) girer, ardından özellikleri, fotoğrafları ve metni ekler. Yapay zekâ açıklamadan ve fotoğraflardan özellik önerebilir (asansör, balkon, yapı türü…) ve ilan metnini Çekçe ve İngilizce yazabilir. Ama bir öneri asla kendiliğinden kaydedilmez: ev sahibi yapay zekânın ne önerdiğini görür, doğru olanları işaretler ve ancak o zaman uygulanır. İlan yayımlanmadan önce backoffice'te bir insan tarafından onaylanır. Ev sahibi her ilana adaylar için sorular ekleyebilir (örneğin "Evcil hayvanınız var mı?").

### Mesajlar

Aday ev sahibine doğrudan ilandan yazar; mesajlar okundu bilgisi ve eklerle gerçek zamanlı gelir. Platform, sözleşme imzalanana kadar metindeki telefon numaralarını ve e-postaları gizler; böylece ne anlaşma ne de ödemeler platformun dışına kayar — ve aday "ev gezmesinden önce hiçbir şey ödemeyin" uyarısını görür. Çevrimiçi olmayan kişiye push bildirimi veya e-posta gider. Şüpheli bir konuşma tek tıkla bildirilebilir.

### Başvurular, ev arkadaşlığı ve kiracı seçimi

Aday tek başına ya da bir ev arkadaşı grubu adına başvurur: bir grup kurar, diğerlerini e-postayla davet eder, grup sohbetinde anlaşırlar ve başvuru ancak herkes onayladığında ev sahibine gider. Ev sahibi adayların, sorularına verdikleri yanıtlarla, doğrulama durumlarıyla ve yapay zekânın kısa bir özetiyle (yine yalnızca bir öneri) listesini görür. Platform yaş, cinsiyet veya uyruk gibi korunan verileri toplamaz. Ev sahibi birini seçtiğinde diğerleri nazik bir otomatik yanıt alır.

### Ev gezmeleri

Ev sahibi kontenjanı ve bir notu olan gezme saatleri açar ("girişin önünde buluşalım"); adaylar bunları doğrudan başvurunun içinden ayırtır, kaydırır veya iptal eder ve hatırlatma alır.

### Dijital sözleşme ve imza

Sözleşme bir şablondan oluşturulur (belirli veya belirsiz süreli daire, ev arkadaşlarının ortak kiralaması, oda) ve ilandaki verilerle doldurulur. Formdan bir PDF üretilir, iki taraf da çevrimiçi imzalar ve her olay — taslak, imza, ödeme, fesih — her kaydın bir hash ile bir öncekine bağlandığı bir denetim zincirine yazılır. Böylece geçmişin sonradan değiştirilmesi gizlenemez; sözleşme sayfası zincirin bozulmadığını gösterir. Platform fesih ve depozito mahsubunu da yönetir.

Şablonlar bir hukukçu inceleyene kadar TASLAK filigranı taşır ve imza şimdilik kanıt kayıtlı (zaman, IP adresi, belge parmak izi) basit bir elektronik imzadır. Bank iD ile imza bir sonraki adım olarak hazırdır ve Bank iD ile yapılacak sözleşmeyi bekliyor.

### Ödemeler — para doğrudan ev sahibine gider

Sözleşmeden bir ödeme takvimi çıkar: depozito, kira ve aidat avansları, ev arkadaşları için paylara göre bölünmüş. Kiracı banka uygulamasında QR kodla ya da ev sahibinin kendi üye işyeri hesabına giden bir Revolut Business bağlantısıyla kartla öder. Ev sahibi banka hesabını (salt okunur) bağlayabilir; gelen ödemeler değişken sembol, özel sembol ve tutara göre kendiliğinden eşleşir; tutmayanlar elle eşleştirilecek öneri olarak kalır. Vadeden sonra hatırlatmalar, yedi gün sonra da eskalasyon gider.

**TerraReality kiracıların parasını asla tutmaz veya aktarmaz.** Emanet hesap yok, kripto para yok — ödemeler doğrudan kiracının hesabından ev sahibinin hesabına gider.

### Mevcut kiraların devralınması

Dairelerini zaten kâğıt sözleşmeyle kiraya vermiş bir ev sahibinin hiçbir şeyi yeniden imzalaması gerekmez. Kiralamayı platform dışında imzalanmış olarak devralır, sözleşmenin taramasını yükler ve ödemeler devralma tarihinden itibaren izlenir: eski borç açılış bakiyesine geçer, tutulan depozito kaydedilir ve mevcut değişken sembol de korunur. Ev sahibi kiracıları kiracı portalına davet edene kadar onlara hiçbir şey gitmez. Birden çok kiralama bir tablodan tek seferde içe aktarılabilir.

### Şehirler arası portföy ve kira riski

Birden çok dairesi olan ev sahipleri ve yöneticiler için: tüm kiralamaların belediyelere göre görünümü, aylık tahakkuk ve gerçekte gelen, on iki aylık eğilim, dikkat gerektirenlerin listesi (borç, eskalasyon, fesih, boş birim), gelir yoğunlaşması ve CSV ile Excel'e aktarılabilen bir rent roll. Her kiralamanın kurallardan hesaplanan bir risk puanı vardır (borç, eski ödenmemiş kalemler, depozitonun karşılama oranı, yaklaşan sözleşme sonu…). Puan yalnızca bilgidir ve asla kimse hakkında karar vermez; kiracı neye göre hesaplandığını görür. Kurallar (hatırlatmalar, eskalasyon, depozito, ihbar süresi) belediyeye göre ayarlanabilir ve bir yatırımcı, kiracıları yalnızca baş harfleriyle gördüğü salt okunur erişim alabilir.

### Öne çıkarma ve faturalama

Ev sahibi ilanını üste taşıyabilir veya vurgulayabilir. Stripe üzerinden kartla öder, KDV'li fatura kendiliğinden kesilir, e-postayla gelir ve yönetim panelinden indirilebilir. Öne çıkarılan ilanlar sonuçlarda "Öne çıkan" olarak işaretlenir.

### Backoffice, moderasyon ve DSA

İşletmecinin metrik özeti, onay bekleyen ilan kuyruğu, bildirilen konuşma ve ilanların moderasyonu, yeni özellikler için yapay zekâ önerileri kuyruğu, öne çıkarma fiyat listesi, sözleşme şablonları, özellik anahtarları ve denetim kaydı vardır. Herkes, hesabı olmasa bile bir ilanı bildirebilir (AB Dijital Hizmetler Yasası, DSA uyarınca); her vakaya bir insan karar verir ve gerekçe hem bildirene hem ilan sahibine e-postayla gider. Destek sırasında "kullanıcı olarak" oturum açmak bir gerekçe belirtmeyi gerektirir ve denetim kaydına yazılır.

### Mobil uygulama

iOS ve Android için Flutter uygulaması kiracının telefonda ihtiyaç duyduklarını kapsar: liste ve haritayla arama, mesaj, başvuru ve gezme rezervasyonuyla ilan detayı, gezmelerim, QR ödeme ve Revolut bağlantısıyla kiralama, push bildirimlerinden doğrudan açma. Bu ilk sürüm; test kullanıcıları için derlemeler (TestFlight ve Google Play iç test kanalı) test hazırlığında oluşturulacak.

### İşletim

Üretim ortamı AB'de Hetzner için hazırdır: özel ağda ayrı uygulama ve veritabanı sunucuları, otomatik HTTPS, herhangi bir ana geri dönüşlü veritabanı yedekleri (en fazla bir saatlik veri kaybı) ve doğrulanmış geri yükleme tatbikatı, uyarılı izleme (%99,9 erişilebilirlik, 300 ms altında arama yanıtı, yedek durumu) ve hata raporlama. Yapay zekâ kendi GPU sunucumuzda çalışır; yapay zekâ kullanılamadığında her şey onsuz da çalışır.

### Durum ve test

**Tüm platformun MVP'si hazır.** Yukarıdaki tüm modüller geliştirildi ve otomatik testlerle kaplandı — tarayıcıda senaryoların tamamını tıklayarak geçen birim, entegrasyon ve uçtan uca testler (ilan, mesajlar, grup başvurusu, imzalı ve eşleşmiş ödemeli sözleşme, portföy, faturalı öne çıkarma, DSA bildirimi, backoffice). Veritabanının yedekten geri yüklenmesi de doğrulandı.

Kod incelemesinde önerilen güvenlik ve işletim iyileştirmeleri ile başvurular, sözleşmeler ve ödemeler için push bildirimleri de tamamlandı. Kapalı beta, Prag ve çevresi için örnek olduğu belirtilmiş ilanlarla kendi sunucumuzda çalışıyor. Hetzner'de üretime geçiş hesapları ve erişimleri bekliyor (aşağıya bakın).

Gerçek insanlarla test beş aşamada ilerler. Her aşama, devam edip etmeyeceğimize birlikte karar verdiğimiz bir kapıyla biter:

1. **T0 — hazırlık (2 hafta).** Hetzner'de "Test ortamı" şeritli test ortamı, sandbox modunda iş ortakları (Stripe, Revolut, Bank iD), kişisel veri içermeyen ürün analitiği, web'de ve uygulamada "Sorun / fikir bildir" düğmesi, yalnızca davetle kayıt, test verileri ve test kullanıcıları için uygulama derlemeleri.
2. **T1 — iç test (1 hafta).** Ekipten ve çevresinden 5–8 kişi tüm senaryoları hem ev sahibi hem ev arayan rolünde, birden çok cihazda, bir olay tatbikatı ve yedekten geri yükleme dahil geçer.
3. **T2 — moderatörlü kullanılabilirlik testleri (2 hafta).** 12 katılımcı: bireysel ev sahipleri, birden çok şehirde dairesi olan bir yönetici, Çek ve yabancı ev arayanlar ve bir çift ev arkadaşı. Görev başarısı ve memnuniyet ölçülür (SUS ≥ 70).
4. **T3 — Prag'da kapalı pilot (6 hafta).** Kişisel onboarding ile 20 pilot ev sahibi ve 50–100 ev arayan, yalnızca davetle. İlanların başvuru alıp almadığı, ev sahiplerinin ne kadar hızlı yanıt verdiği, kaç sözleşmenin dijital olarak tamamlandığı ve her şeyin ne kadar güvenilir çalıştığı izlenir; haftada bir sürüm.
5. **T4 — Prag'da açık beta (4 hafta).** Beta etiketiyle herkese açık kayıt, ücretli kampanya olmadan — ve sonunda kamuya açık lansman kararı.

Hazırlığın başından itibaren toplam yaklaşık 15 hafta.

**Sizden ihtiyacımız olanlar:**

- işletim için hesaplar ve erişimler: Hetzner, alan adı ve DNS, Apple ve Google geliştirici hesapları, Stripe, Revolut Business, Bank iD ve banka bağlantı sağlayıcısı;
- test kullanıcıları, 20 pilot ev sahibi ve ev arayanların bulunması, katılımcılar için ödüller;
- kullanım koşullarının, gizlilik politikasının ve sözleşme şablonlarının hukuki incelemesi, test kullanıcılarının onayları ve pilotta gerçek sözleşmelerin doğrudan platformda imzalanıp imzalanmayacağı kararı;
- pilottan önce bir sızma testi, T2'deki görüşmelerin yürütülmesi ve pilot boyunca birinci seviye destek;
- aşamalar arasındaki her kapıda karar.
