---
tagline: Bloklarla manga, fotoğraf restyle, yeni saç modeli ve fotoğraf animasyonu için Telegram botu
---
TsumikiMangaBot (eski adıyla MangaPrompts), yapay zekâ ile görsel üretimi için prompt'ları LEGO mantığıyla kurar — yaklaşık yirmi beş eksende (malzeme, sanat geleneği, kafa stili, manga stili, tarihsel dönem) yapı blokları seçersin ve bunlardan eksiksiz bir prompt çıkar. Bununla da kalmaz: prompt'u doğrudan üretime gönderir ve görseli sana geri yollar.

### Diğer kartlar

Mini App'te oluşturucunun yanında bir kart değiştirici var:

- **Fotoğraf restyle** — bir fotoğraf yüklersin, bir stil seçersin ve aynı kişiyi aynı pozda o stilde alırsın. Fotoğraf / illüstrasyon anahtarıyla malzemeyi seçersin; altı grupta (popüler, ressamlar, bölgelere göre sanat gelenekleri) doksandan fazla stil var.
- **Saç modeli dene** — portrede yalnızca saçları yeniden çizer, istersen yeni bir renkle de. Her saç modelinin aynı yüz üzerinde bir önizlemesi var, böylece yalnızca saçları karşılaştırırsın.
- **Fotoğrafı canlandır** — bir fotoğraf ve seçtiğin bir sahneden kısa bir video oluşur ve sohbete gelir.

### Nasıl başlanır

Kurulacak bir şey yok, Telegram Mini App olarak çalışır:

1. Telegram'da [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) botunu aç — ya da aramada **Tsumiki** adıyla bul.
2. `/start` yaz. Bot **🎨 Open Tsumiki** düğmesiyle yanıt verir.
3. Düğmeye dokun, blokları birleştir ve üretimi başlat.

Hazır görsel doğrudan uygulamada görünür **ve aynı anda sohbete de gelir**, böylece geçmişinde durur ve hemen iletebilirsin. `/start` adımını atlayıp uygulamayı doğrudan açarsan üretim yine çalışır — yalnızca görsel sohbete gelmez, çünkü Telegram bir botun ilk mesajı atmasına izin vermez.

### Ne kadar tutar

**Her 24 saatte üç ücretsiz üretim.** Sonrasında 1 kredi = 1 görsel ve krediler doğrudan uygulamada **Telegram Stars** ile satın alınır — 25 ⭐'a 10 kredi, 100 ⭐'a 50, 400 ⭐'a 250. Restyle ve saç modeli bir görselle aynı ücrettedir; saç modeli ancak analiz fotoğrafı kabul ettikten sonra düşülür. Animasyonun kendi sayacı var: günde bir tane ücretsiz, sonrakiler 10 ⭐. Bir üretim başarısız olursa kredi geri verilir. Ödeme sorunlarında `/paysupport` komutu yardımcı olur, iadeleri 48 saat içinde hallederim.

### Kaputun altında ne var

Mini App, Cloudflare Pages üzerinde Flutter web'dir. Prompt oradan evdeki bir NAS üzerinde çalışan backend'e (FastAPI + aiogram), oradan da **ComfyUI**'a gider — seçilen şablona göre workflow belirlenir (FLUX, Pony, Juggernaut XL Lightning veya WAI Illustrious). Restyle yüzü PuLID ya da InstantID ile, pozu depth ControlNet ile korur; animasyon Wan 2.2 üzerinde çalışır. Krediler ve ödemeler backend tarafında SQLite'ta tutulur.

### Yerel uygulamalar

Aşağıdaki macOS, Windows, Linux, Android ve iOS sürümleri prompt oluşturucunun tam hâlidir ve Telegram'da olmayan **Repose** modunu da içerir: bir yüz yüklersin, bir poz seçersin ve uygulama o kişinin o pozdaki görselini aslına sadık bir yüzle üretir (InstantID + depth ControlNet + hi-res + FaceDetailer). Ancak Repose doğrudan ComfyUI'a bağlanır, bu yüzden yerel uygulamanın ona erişebilmesi gerekir.

Flutter ile geliştirildi.
