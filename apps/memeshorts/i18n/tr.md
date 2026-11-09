---
tagline: Meme şablonlarından kendi karakterlerinle dikey shorts
visuals: Karakter kütüphanesinden {n} portre — dört karakter, her biri on iki duyguda.
---
Bir meme şablonunu altı ila on beş saniyelik dikey bir shorts videosuna dönüştüren bir komut satırı aracı. Orijinal meme yalnızca şakanın yapısı için bir kalıp görevi görür — çıktıya asla girmez. Onun yerine kendi karakterlerin oynar.

Bir karakteri ne prompt ne de seed tutarlı tutabilir; bu yüzden görseller her shorts için ayrı ayrı üretilmez. Bir kez, onaylanmış bir *karakter × duygu* kütüphanesi olarak oluşturulur: Kiro, Mei, Taro ve Yuki, her biri kendini beğenmişlikten bitkinliğe on iki ifadeyle.

Ardından shorts `classify → storyboard → generate → animate → compose → qa` hattından geçer. Her adım ayrı kaydedilir ve seçeneklerinin hash’iyle anahtarlanır; böylece yeniden çalıştırmak bedavadır ve metin değişikliği yalnızca gerekeni yeniden hesaplar. Şakayı bir LLM yazar ya da sen elle girersin; altyazılar doğrudan Go’da işlenir.

Çıktı 1080×1920, H.264, 30 fps, −14 LUFS ses yüksekliği ve hem görüntüde hem meta verilerde “AI generated” etiketi.

Şimdilik yalnızca yerelde çalışıyor ve yayımlanmış bir sürümü yok, bu yüzden burada indirilecek bir şey yok.
Go ile yazıldı; görselleri kendi makinemde FLUX.1-schnell üretiyor.
