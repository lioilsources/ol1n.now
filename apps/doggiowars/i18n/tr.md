---
tagline: Uçan gök adaları arasında voksel it dalaşı (Luanti için bağımsız oyun)
---
Savaş uçağı sensin. İçindeki pilot değil — makinenin kendisi. DoggioWars'ta
yürümek, kazmak ya da inşa etmek yok: ilk saniyeden itibaren uçuyorsun.

Altında, on iki biyomda **uçan adalarla** dolu bir gökyüzü uzanıyor — lavı
kraterden taşan volkanlar, buz sarkıtlı buzul platoları, atol lagünleri, dev
mantarlar, parıldayan kristal kuleler. Seed denen bir sayıdan üretiliyorlar,
bu yüzden iki dünya birbirine benzemiyor; adalar da **yıkılabilir**:
atışların onlardan parçalar koparıyor ve bu parçalar boşluğa yuvarlanıyor.

### Etrafta kimler uçuyor

Gökyüzü boş değil. Adalarının çevresinde beş elementin **yılan ejderhaları**
dönüyor — volkanlar ve kül üstünde ateş, buzullar üstünde buz, atoller üstünde
su, bataklıklar üstünde çamur ve kristaller üstünde elektrik ejderhası.
Çöllerin içinden **kum solucanları** yunuslar gibi yüzüp geçiyor, çorak
adaların üstünde bir **taş muhafız** nöbet tutuyor, yeşil olanların üstünde
ışıldayan **denizanaları** süzülüyor ve biraz şansla bir **gök balinası** ile
karşılaşıyorsun. Şimdilik hepsi barışçıl: sana zarar vermiyorlar, sen de
onlara. Aynı seed aynı sakinleri verir.

**Z** tuşu ya da `/map` komutu tam ekran bir dünya haritası açar: biyoma göre
renklendirilmiş adalar, yaratıklar için noktalar ve uçuş yönüyle birlikte
gemin.

### Bir makinede iki makine

Aralarında `/mode` komutuyla geçiş yapılır ve tamamen farklı uçarlar.

**Denizaltı** varsayılan moddur ve hataları affeder. Olduğu yerde asılı
kalır — kontrolleri bırakırsan yumuşakça durur, böylece bir adayı rahatça
inceleyebilir ya da kayaların arasında milim milim manevra yapabilirsin.
Rotasını değiştirmeden yana kayabilir de.

**Savaş uçağı** asla durmaz. Ona verdiğin hızı korur ve **yatışla** döner —
sol çubuk onu kanadının üstüne yatırır, burun da kendiliğinden döner; ne kadar
dik yatarsan o kadar istekli. Dik bir pike onu azami hızın üstüne çıkarır,
tırmanış ise hız kaybettirir; yani sürekli irtifayı hızla, hızı irtifayla
takas edersin. Barrel roll, looping ve Immelmann dönüşü yapabilir — üstelik bir
kayanın hemen yanından geçmek boost'u doldurur, yani risk almak karşılığını
verir.

### Altın tavşanın peşinde

`/race` komutu bir tazı yarışı başlatır: altın bir tavşan gökyüzünde
koşturur, senin yaptığın numaraların aynısını yapar, adaların içinden açılmış
tünellerde kıvrılır ve beklemez. Ya parkur boyunca peşinden ayrılmazsın, ya da
ayrılırsın.

### Kontroller

Fare ve klavye çalışır ama oyun **gamepad** için yapıldı — Xbox 360 ve PS4
DualShock, Luanti'nin yerleşik joystick desteğiyle, harici eşleyici gerekmez.
Sol çubuk uçağı yönlendirir, sağ çubuk nereye uçtuğundan bağımsız olarak silahı
nişan alır. Yatış ve yunuslama HUD'daki bir su terazisiyle gösterilir, çünkü
Luanti ufku yatıramaz.

### Twitch sohbeti

Oyunda [chatbridge](https://github.com/lioilsources/chatbridge) servisi
üzerinden isteğe bağlı bir Twitch bağlantısı var: izleyiciler sohbet
komutlarıyla (`!drak`, `!velryba`, `!meduzy`…) yayıncının dünyasına yaratık
çağırır. Sohbet yalnızca arkalarını kendileri toplayan yaratıklar ekleyebilir,
araziye asla dokunmaz ve `/chatoff` onu anında kapatır. `minetest.conf`
içinde ayar yoksa bağlantı kapalıdır.

### Kurulum

**Luanti 5.12 veya daha yenisi** yeterli, **başka hiçbir şey** gerekmez —
2.0 sürümünden beri DoggioWars bir mod değil, bağımsız bir oyun; yani Minetest
Game'e artık gerek yok.

Arşivi Luanti veri dizinindeki `games/` klasörüne aç. Windows'ta bu
`%APPDATA%\Minetest\games\`, taşınabilir zip sürümünde ise doğrudan oyun
klasöründeki `games\`. macOS'te `~/Library/Application Support/minetest/games/`,
Linux'ta `~/.minetest/games/`.

Açılan klasörün adı mutlaka **`doggiowars_game`** olmalı. Sonra Luanti'yi
başlat, ana menünün alt çubuğundan DoggioWars'u seç ve **New**'e bas.

Eski bir sürümü hâlâ `mods/` klasöründe **mod** olarak tutuyorsan sil — 2.0
sürümünden beri bu bir oyun ve ikisinin birden bulunması anlamsız.
