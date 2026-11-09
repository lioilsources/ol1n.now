---
tagline: Roblox aksesuarları için bir fabrika — elle modelleme olmadan prompttan 3D modele
---
UGC Factory, Roblox Marketplace için avatar aksesuarları üretir. Ne istediğini yazarsın —
*“neon vurgulu, süslü bir samuray miğferi”* — ve öbür uçtan yüklemeye hazır,
dokulu bir 3D model çıkar. Elle modelleme yok.

## Nasıl çalışıyor

İş üç makineye bölünmüş. GPU’lu bir **DGX Spark** konsepti çizer (eşyalar için Illustrious,
vücutta giyilenler için Juggernaut XL — kategoriye göre seçilir), arka planı siler ve görseli
3D modele çevirir. Bir **NAS** kuyruğu, kataloğu ve modeli Roblox sınırlarına sokan
headless bir Blender’ı tutar — 4.000 üçgenin altı, UV, pişirilmiş doku, doğru
bağlantı noktası. **Telefon** ayıklamak içindir.

Hızlı şerit (SF3D) bir modeli bir buçuk saniyede kurar, böylece büyük ölçekte
denenebilir. Daha yavaş ve daha ince TRELLIS ancak gözünden geçmiş bir parçayı
paketlerken devreye girer — pahalı hesaplama sadece gerçekten satmak istediğine harcanır.
Taç ve miğfer gibi süslü parçalar doğrudan TRELLIS’ten geçer.

## Uygulama

Mobil istemci işin özüdür. **Composer** bir parti yollar — kategori × stil ×
varyant, istersen tek seferde elli parça. **Kuyruk** o anda neyin hangi aşamada üretildiğini
canlı gösterir. **Triage** asıl kısımdır: ekranda tek parça, konsept ile
döndürülebilir 3D model arasında bir anahtar, üç düğme — onayla, reddet, başka bir
seed ile tekrar dene. Okuyabileceğinden hızlı geçersin. **Review**
dönüştürülmüş parçayı gösterir: sınıra karşı üçgen sayısı, UV, mesh’in kapalılığı,
doku ve PASS, WARN ya da FAIL kararı. Buradan parça yeniden dönüştürülebilir ya da
yüklemek için paketlenebilir. Yeniden paketleme, uygulamada doldurduğun adı, açıklamaları, fiyatı ve
etiketleri ezmez.

Android’de, iOS’ta, macOS’ta ve tarayıcıda çalışır. Sunucu onu kendi
origin’inde sunar, bu yüzden web sürümü her zaman günceldir.

## Çepeçevre süsleme

Model tek bir görselden doğar, yani arka tarafı kimse görmemiştir ve
düz ve süssüz çıkar. Gerçekten radyal simetrik parçalarda (pasta,
taç) ön dilim bu yüzden çepeçevre kopyalanır ve dikiş kaynaklanır. Composer’da ya da
bitmiş bir parçada yeni dönüştürme sırasında, ek üretim olmadan açılır.
Düz bir parçaya uymaz — dilimlerden bir yamalı bohçaya dağılır.

## Kategoriler

En iyi sonuç veren şeyler, eğitim verisinde de **kendi başına** var olanlardır:
sırt çantaları, el çantaları, taçlar, şapkalar, pastalar, maskeler, kalkanlar, yüzükler.
Tüylü ve çiçekli şapka tasarımları, monogramlı kapitone çantalar, inci ve
akikli taçlar, beş kültürden esinlenen maskeler, kabarık tilki ve rakun
kuyrukları, omuzda duran kawaii evcil hayvanlar.

Görseller neredeyse her zaman iyi görünür — modeller için bu hiç de öyle değil ve karar veren
modeldir. Hacimli kompakt şekiller (sırt çantası, pasta, yüzük) iyi dayanır. İnce, ajurlu
yapılar hızlı şeritte yırtılır, bu yüzden taçlar doğrudan yavaş yoldan gider.
Çizim girdide de az gölge olur, bu yüzden hacim yerine kabartma çıkar — pastel
hayvancıkların yumuşak gölgelendirmeyi zorlayan bir prompta ihtiyacı vardır.

Giysiler ve saç zor bir iş: model onları yalnızca bir figürün üstünde tanır, bu yüzden
*“ejderha elbisesi”* promptundan bir ejderha çizer. Fotogerçekçi bir modele geçip
bunu bir ürün fotoğrafı gibi yazmak işe yarar — *“görünmez bir mankenin üzerinde elbise”*.

Üstelik Roblox elbiseleri, ayakkabıları ve eldivenleri cage mesh’li layered clothing olarak ele alır,
fabrika bunu henüz yapamıyor. Parmaklar ve eller için Roblox’ta hiç bağlantı noktası yok.
