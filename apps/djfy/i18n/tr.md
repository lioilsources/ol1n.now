---
tagline: Akıllı çalma listesi ve konukların müziği telefonlarından seçtiği parti modu olan bir DJ deck'i
---
DJfy, akıllı çalma listesi oluşturan bir mobil DJ uygulamasıdır. Bir sanatçı adı yazarsın, uygulama tempoya ve önerilere göre onun etrafında parçalar toplar. Sonra bunları pitch, efektler ve crossfader ile deck'lerde mikslerdir.

**Last.fm** (öneriler, scrobbling), **GetSongBPM** (BPM verileri) ve **SoundCloud** (streaming) ile entegredir.

### Parti modu

Partilerde müziği genelde o an telefonun başında kim varsa o açar, diğerleri de isteklerini kulağına bağırır. DJfy'da ev sahibinin telefonu DJ pultuna dönüşür, hoparlör ise sadece çalar. Konuklar bir QR kodu tarar ve partiyi tarayıcıda açar. Uygulamaya da hesaba da gerek yok, bir isim yazmak yeterli.

- **Konuklar önerir ve oy verir.** Herkes parça arayabilir, onları sıraya ekleyebilir ve başparmak yukarı ya da aşağı verebilir. Tek bir konuk tüm sırayı kapmasın diye herkesin sırada aynı anda en fazla üç parçası olabilir.
- **Akıllı sıra.** Sıralamayı yalnızca oy sayısı belirlemez. Uygulama bir parçanın ne kadar süredir beklediğini, aynı sanatçının az önce çalıp çalmadığını ve temponun o an çalan parçaya uyup uymadığını da hesaba katar.
- **Mood lock.** Ev sahibi bir BPM aralığı belirler, örneğin 110–130; bu aralığın dışındaki parçalar sıranın sonuna gider. Böylece biri bir balad önerse bile gece temposunu korur.
- **Auto-DJ.** Parçalar yumuşak bir crossfade ile birbirine bağlanır. Tempolar en fazla %8 farklıysa uygulama geçiş sırasında BPM'i eşitler, sonra orijinal hıza döner.
- **Parti bitmez.** Sırada parça kalmayınca uygulama kendiliğinden son çalanlara benzeyen yeni bir parça ekler ve onu Auto olarak işaretler. Konukların parçaları her zaman önceliklidir, veto edilenler de geri gelmez. Auto-DJ'in yanındaki anahtarla kapatılabilir.
- **Son söz ev sahibinde.** Bir parçayı veto edebilir, sırayı yönetebilecek bir yardımcı DJ atayabilir ya da bir konuğu dışarı atabilir.
- **Ses her yere.** Telefon kulaklığa, Bluetooth ile bir hoparlöre ya da AirPlay üzerinden örneğin bir Sonos'a çalar.

Tüm partiyi ev sahibinin telefonu taşır. Onunla konuklar arasındaki küçük bir Go sunucusu yalnızca mesajları iletir ve hiçbir şey saklamaz.

Flutter ile geliştirildi. Mobilde ve macOS'te çalışır.
