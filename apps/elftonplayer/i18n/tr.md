---
tagline: USB DAC için bit-perfect oynatıcı — dosya, RAM, ASIO ve arada hiçbir şey
---
Elfton Player, Windows 11 için tek bir önceliği olan bir yerel müzik oynatıcısıdır:
USB DAC'a dosyadaki örneklerin birebir aynısının ulaşması. Sinyal yolu
**dosya → kod çözücü → RAM → ASIO → DAC** şeklindedir. Ses seviyesi ayarı yok,
ekolayzer yok, yeniden örnekleme yok, akış yok. Ses seviyesini dönüştürücüden
ya da amfiden ayarlarsın.

### Neler yapabilir

- ASIO veya özel moddaki WASAPI üzerinden **bit-perfect çıkış**. Parçanın yanında
  tüm zincir görünür (`FLAC 24/96k → 32-bit · bit-perfect`) ve sinyale herhangi
  bir şey müdahale ettiği anda yeşil nokta söner.
- **Bellekten çalma.** Parça tamamen RAM'e çözülür, bu yüzden çalarken disk
  çalışmaz; sonraki parça önceden yüklenir ve **boşluksuz** devam eder.
- **Örnek hassasiyetinde A-B döngüsü**, noktaları milisaniye milisaniye kaydırma
  imkânıyla — bir pasajı çalışmak ya da kaydın iki yerini karşılaştırmak için.
- **Klasör tabanlı kitaplık**: dizin ağacı tam diskte olduğu gibi, kapak görselleri,
  arama, sıra, favoriler, geçmiş, M3U çalma listeleri, CUE ile tek dosyalık
  albümler, LRC'den senkronize şarkı sözleri.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg ve DSD** (yerel, DoP veya PCM'e dönüştürme).
- Sinyale yapılan tek müdahale olarak **Mono (L+R)/2**, her zaman görünür şekilde işaretli.
- **L ve R düğmeleri** yalnızca bir hoparlörü çaldırır, diğerini susturur. Mono
  açıkken ikisi de aynı şeyi çalar, böylece koltuğundan telefonla sisteminin sol
  ve sağ tarafını (kablolar, bileşenler) anında karşılaştırabilirsin; mono
  kapalıyken kaydın yalnızca sol ya da yalnızca sağ kanalı çalar.
- Pencerenin tüm genişliği boyunca **parçanın ses seviyesi olarak çizilen ilerleme
  çubuğu**: sessiz bir giriş görünür ve tek tıkla atlanabilir.
- **Her parçada bir kalp** ve doğrudan albümün içinde "yalnızca favoriler" filtresi.
- **Üç tema**: koyu, siyah ve açık.
- **Telefonda kumanda**: Elfton Remote ev ağı üzerinden QR koduyla eşleşir ve
  bilgisayardaki pencerenin yaptığı her şeyi yapar.

### Çalma modu

İstersen çalma sırasında güç planını değiştirir, USB seçici askıya almayı ve
çekirdek park etmeyi kapatır, bitince her şeyi eski haline getirir. Dürüst olmak
gerekirse: asenkron bir USB DAC'ta saati dönüştürücü tutar, bu yüzden bu ayarların
ses üzerinde ölçülebilir bir etkisi yoktur. İsteğe bağlıdırlar, her biri log'a
yazılır ve hiçbiri gerekli değildir.

Aynısı, Bug head oynatıcısından alınan ve ayarlarda bulunup varsayılan olarak
kapalı gelen "ritüeller" için de geçerli: müziği RAM'de kilitlemek, parça
yüklendikten sonra kısa bir duraklama ve kendi yardımcı programını (örneğin
MinorityClean) oynatıcıyla birlikte başlatmak. MinorityClean dahil değildir.

### Durum

**Sürüm 0.2, yayın öncesi.** İlk sürüm Windows 11'de bir dinleyicide ASIO
üzerinden çalıştı (Behringer UMC204HD ve SMSL D200): WAV 24/192 dönüştürme
olmadan ve kesinti olmadan 32 bit ASIO olarak çıktı, telefondan kontrol de
çalışıyor. Bu, oynatıcının sinyal yolu hakkındaki kendi raporu; çıkışı henüz
kimse kaydedip bit bit karşılaştırmadı. 0.2 sürümünün yenilikleri testlerle
kapsanıyor, ancak henüz Windows'ta çalıştırılmadı. Ekran görüntüleri ilk
sürümden, örnek kitaplıklı bir macOS geliştirme derlemesinden — ses seviyesi
eğrili çubuk ve L/R anahtarı henüz üzerlerinde yok.

Windows derlemesi bir zip dosyasıdır: arşivi aç ve `Elfton Player.exe` dosyasını
çalıştır ya da Başlat menüsüne kısayol ekleyen, birlikte gelen `install.ps1`
betiğini çalıştır. Başka hiçbir şey yüklenmez. ASIO için dönüştürücünün
sürücüsünün yüklü olması gerekir; sürücü yoksa oynatıcı WASAPI sunar. Telefon
kumandası şimdilik yalnızca Android için (APK); iOS sürümü kodda hazır ama herkese
açık bir derlemesi yok.

Motor, FFmpeg üzerinde Go ile yazıldı (LGPL, dinamik bağlantılı), arayüz ise Flutter ile.
