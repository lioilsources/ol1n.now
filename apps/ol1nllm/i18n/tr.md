---
tagline: Rollerle yapay zekâ sohbeti, Kütüphaneci ve Avukat, görsel, video, masal, müzik ve ses için stüdyo
---
Ol1nLLM, kendi sunucunun üzerinde çalışan tek bir uygulama: sohbet eder, bir kütüphanede ve kanunlarda arama yapar, çizer, bir görseli videoya dönüştürür, masal çeker, müzik besteler ve yanıtları kaydedilmiş bir sesle okur.
Ekran görüntülü ayrıntılı kılavuz [Uygulama neler yapabilir](ol1nllm-features.html) sayfasında.

### Sohbet

Sohbet bir **rol** seçerek başlar — beş yaşında bir çocuktan dedeye kadar on karakter ve kendi verileri olan dört asistan. Yanıt yazıldıkça görünür, sohbet **dallanabilir** ve rol ortasında değiştirilebilir.

- **Kütüphaneci**, felsefe ve kutsal metinlerden oluşan özgün dillerdeki bir derlemden yanıt verir ve yararlandığı pasajları Çekçe çevirisiyle gösterir.
- **Avukat**, Çekya'nın yürürlükteki kanunlarından yanıt verir ve maddeleri alıntılar.
- **Avukat – sözleşmeler** şablondan sözleşme hazırlar: kart kart sorar ve yasal sınırları gözetir.
- **Leads**, Çek Sözleşmeler Sicili'nde şirket ve kurum arar.

### Image Studio

Görsel, bir ağaç oluşturan turlarla ortaya çıkar: metin → görsel, ardından seçilen varyantın düzenlenmesi. On dokuz model (FLUX, SDXL, anime serileri), üç yüzü aşkın sanatsal **stil** (kültürler ve dönemler, sanatçılar, teknikler), **poz** şablonları, sunucudan **LoRA**'lar ve büyük harflerle yazılan bir negatif prompt.

- **Pozu koru** ve **Yüzü koru** — referanstaki duruşta yeni bir karakter, istersen yüzüyle birlikte.
- **Stil haritası** — aynı konunun benzerliğe göre dizilmiş yüzlerce görseli; parmağın mozaikte kayarken stil bir animasyon gibi değişir ve seçtiğin kullanılır.
- **Inpaint** — bir alanı boyar ve orada ne olması gerektiğini anlatırsın.
- **Kuaför** — maske çizmeden yeni bir saç modeli veya saç rengi.
- **Hareketlendir** — bir görselden kısa video: sunucudan danslar ve jestler ya da hareketin kendi tarifin.
- **3D** — baskıya hazır model (STL) veya iskeletli dans eden bir figür.

### Story Studio

On senaryo arasından bir masal seçer, rolleri kendi görsellerinle dağıtırsın; sunucu da ondan anlatıcı, müzik ve altyazılı bir dakikalık animasyon video yapar. Çekimler animasyondan önce kontrol edilebilir, olmayanlar yeniden çizdirilebilir.

### Music Studio

Stüdyoya bir müzik örneği ver — dosyadan ya da mikrofonla kaydedilmiş — o da türü, tempoyu ve tonu çıkarsın. **Vibe** aynı havada yeni bir parça besteler, **Groove** orijinali başka bir türe yeniden düzenler.

### Voice Studio

Kısa bir kayıttan — hatta bir videonun ses kanalından — sana ait bir **ses** doğar. Her ses istediğin bir cümlede denenebilir ve sohbetteki bir role atanabilir. Yanıtın altındaki hoparlör onu o rolün sesiyle okur.

### Geçmiş

Sohbetler, oturumlar, projeler ve masallar telefonda kalır. Uzun işler sunucuda çalışır: uygulamayı kapatabilirsin, geri döndüğünde onlara kendiliğinden yeniden bağlanır.

Flutter ile yapıldı, mobilde ve masaüstünde çalışır. Uygulama, kendi model sunucunun istemcisidir; o olmadan hiçbir şey üretmez.
