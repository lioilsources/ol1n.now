---
tagline: İnternetsiz de okunan dikey çizgi romanlar — ücretsiz hikâyeler, seçimi senin yaptığın oyun kitapları ve canlanan kareler
visuals: {n} görsel — beş çocuk hikâyesinden kareler, iki stilin karşılaştırması ve character sheet'ler.
---
Toonfork (çalışma adı Webtoon), internet olmadan da çalışan dikey bir çizgi roman okuyucusudur. Kurulumdan hemen sonra içinde 15 ücretsiz hikâye var; hesap yok, kayıt yok. Hikâyeler kendi GPU sunucumuzda üretiliyor: bir dil modeli senaryoyu yazıyor, bir görsel modeli kareleri çiziyor, metinli konuşma balonlarını ise en son okuyucu ekliyor. Böylece metin, görsel yeniden üretilmeden düzeltilebiliyor.

Beş çocuk hikâyesinin tamamlanmış şeritleri Strips alt sayfasında, bölüm sonunda seçim yapılan oyun döngüsü ise Gamebook alt sayfasında.

### Okuyucu

Bir hikâye; konuşma balonları, düşünceler, haykırışlar ve ses efektleriyle dolu karelerden oluşan, başparmağınla yukarıdan aşağı kaydırdığın tek uzun bir şerittir. Seçili kareler kısa döngülerle canlanır: camdaki yağmur, sudaki ışık, saçlardaki rüzgâr. Bölüm sonunda neyin seçildiğini ve **Sonraki bölüm** düğmesini görürsün. Son bölümden sonra **Son** ve bir sonraki hikâye için öneri gelir.

### Oyun kitapları

Oyun kitabında olayların gidişatına sen karar verirsin. Her bölümün sonunda ne olacağını seçersin ve hikâye dallanır. Uygulama nerede olduğunu, hangi yoldan gittiğini ve hangi sonları bulduğunu hatırlar; yol haritası yalnızca zaten ziyaret ettiğin yerleri gösterir. Baştan başlayabilir ya da bir adım geri dönebilirsin. Oyun kitapları ücretsizdir: çocuklar için **Sara and the Black Crown**, yetişkinler için örneğin bir psikolojik danışmanlık odasında geçen oda draması **Learning to Be Silent**, **Metal Sky Above Us** ya da **The Blooming Meadow That Turned Grey**. Dramalar ağır konulara değinir ve çocuk profili onları gizler.

Beta sürümünde bir dal düzenleyici var: herhangi bir seçime kendi devamını ekler, onu oyun kitabının görsellerinden derler ve balonları yazarsın. Dalı hemen oynayabilir ve paylaşım üzerinden yazara gönderebilirsin; sunucu gerekmez.

### Paketler

İsteğe bağlı paketler 50'ye kadar hikâye ekler: **Romantik** (yetişkinler için hafif aşk hikâyeleri, açık sahne yok), **Çocuklar için** ve **Süper kahramanlar**. Paket satın alındıktan sonra indirilir ve çevrimdışı okunur. Tek bir satın alma, sonradan çıkacak paketler dahil her şeyin kilidini açar.

### Profil ve ebeveyn kilidi

İlk açılışta **Çocuklar** ya da **Yetişkinler** profilini seçersin. Çocuk profili romantik hikâyeleri ve dramaları hem kitaplıkta hem mağazada gizler. Her satın almayı ve Yetişkinler'e her geçişi, çarpım tablosundan bir soruyla çalışan ebeveyn kilidi korur.

### 12 dil

Hikâyeler, oyun kitapları ve okuyucunun metinleri 12 dilde: Çekçe, İngilizce, Almanca, Fransızca, İtalyanca, Lehçe, Brezilya Portekizcesi, Japonca, Korece, Vietnamca, Rusça ve Ukraynaca. Balonların dili Ayarlar'dan değiştirilir.

### Gizlilik

Hesap yok, reklam yok, takip yok. Toonfork kişisel veri toplamaz; neyi satın aldığını cihaz hatırlar ve satın almalar Ayarlar'dan geri yüklenebilir.

## Studio: hikâyeler nasıl doğuyor

Aynı uygulamanın ikinci yüzü, yazar için olan Studio'dur. Yazar bir dünya kurar: lore, karakterler, mekânlar ve her hikâyenin içinden geçmesi gereken bir kanon. Studio'da etkileşimli olarak da oynanabilir: bölüm sonunda okur karakterin sonra ne yapacağını seçer ya da kendi sözleriyle yazar, ve bu seçimden bir sonraki bölüm doğar. Serbest metin önce moderasyondan geçer; çocuk dünyasında moderasyon daha katıdır ve şüphede kalırsa reddetmeyi tercih eder. Bu sayfadaki ekran görüntüleri Studio'dan.

### Dünya düzenleyici

Yazarın uygulamada **Oluştur** sekmesi vardır:

- **Temel:** ad, özet, ton, dil, hedef kitle (Çocuklar için, 13 yaş ve üzeri, Yetişkinler için), görünürlük ve tüm dünya için geçerli bir çizim stili.
- **Lore ve kanon:** dünyanın kuralları, gruplar, sabit sıradaki kanon düğümleri ve sınırlar, yani olmaması gerekenler.
- **Karakterler ve mekânlar:** kendi sözlerinle bir açıklama. Buradan bir LLM, görsel modeli için sabit booru etiketleri önerir. Modelin bilmediği etiketler WD14 sözlüğüne göre elenir, gerisini yazar ince ayarlar.
- **Character sheet:** karakterin beyaz arka plan üzerinde dört varyantı. Etiketlere en çok uyan, referans görsel olur.
- **Genel bakış:** kampanyalar, okurların nerede kaldığı, hangi seçimleri yaptıkları ve kanonda ne kadar ilerledikleri.

### Modeller

- **Senaryo ve moderasyon:** vLLM üzerinden Qwen3.6-35B-A3B. Karakterler ve mekânlar için etiket önerir, bölümler için storyboard yazar (6–8 kare, 2–3 seçenek ve serbest metin alanı). Ardından bir doğrulayıcı karakterleri, mekânları ve dünyanın kurallarını denetler.
- **Kareler:** ComfyUI üzerinden SDXL. Varsayılan NoobAI-XL eps 1.1, ikinci stil Hassaku XL (Illustrious) 3.4. İnsan karakterleri yalnızca bu modeller çizer.
- **Canlı kareler:** Wan 2.2 hazır bir kareyi 1–3 saniyelik bir döngüye dönüştürür; bölüm başına en fazla iki hareketli kare.
- **İçerik denetimi:** WD14 etiketleyicisi (SmilingWolf/wd-swinv2-tagger-v3). Her kareyi kontrol eder ve hedef kitleye göre atıp yeni bir seed ile yeniden çizer. Çocuklar için ayrıca dar ve açık kıyafetleri reddeder. Aynı etiketleyici, karedeki karakterin kendi tasarımına uyup uymadığını da ölçer.

Karakterin kimliğini yalnızca etiketler korur. IP-Adapter hazır, ancak ilk ölçümde görseli daha çok bozdu. Model aynı çekimde iki insan karakteri tutamıyor; saçlarını ve kıyafetlerini karıştırıyor. Bu yüzden çocuk hikâyeleri her karaktere kendi karesini veriyor.

### Stiller

Stil, adı olan bir ön ayardır: checkpoint, sampler, adım sayısı, CFG ve estetik etiketler. Yazar onu tüm dünya için bir kez seçer. **clean_webtoon_noartist** düz renkler ve temiz çizgi, **hassaku_soft** yumuşak gölgelendirme ve pastel renkler sunar. Görsellerde aynı bölüm iki stilde yan yana duruyor.

### Durum

Toonfork alfa aşamasında: Android sürümü Google Play'de, macOS sürümü GitHub'dan indirilebilir, App Store hazırlanıyor. Studio yalnızca kendi backend'iyle çalışır (Postgres'te iş kuyruğu olan Go) ve herkese açık değildir. Görseller ve metinler kendi GPU sunucumuzda üretiliyor.

Ekran görüntüleri, Studio'nun web sürümünden telefon genişliğinde ve yerel bir backend'e karşı alındı. Buradaki 2. bölümlerin yalnızca senaryosu var; kareler hâlâ çizilmeyi bekliyor. Kaynak kodu [github.com/lioilsources/Webtoon](https://github.com/lioilsources/Webtoon) adresinde.
