---
tagline: Telefon mikrofonuyla odanın akustik haritası
---
Hoparlörlerden bir test sinyali çalarsın, telefonla odayı dolaşırsın ve her
noktada spektrum ölçülür. Bu sırada AR takibi nerede durduğunu kaydeder. Sonuç,
kat planı üzerinde bir ısı haritasıdır: basın nerede gümlediği, nerede kaybolduğu,
hoparlörlerin ve dinleyicinin nereye konması gerektiği.

**Kalibre mikrofonlu REW'in yerini tutmaz.** Göreli bir araçtır — aynı odadaki
noktalar arasındaki farkları gösterir. Kalibre edilmemiş bir telefondan mutlak
SPL diye bir şey yoktur ve uygulama bunu hiçbir yerde iddia etmez.

### Ölçüm

20 Hz'den 20 kHz'e otuz bir üçte bir oktav bantta SPL ölçer ve RTA, Hann
pencereli FFT 8192 ve enerji ortalaması. Test sinyalleri WAV olarak dışa
aktarılır — pembe gürültü ve logaritmik sweep, sol ve sağ kanal ayrı ayrı.

RTA'da peak hold, maksimum ve minimum izleri ve dondurma var; dondurulan görüntü
bir nokta olarak kaydedilebilir. Mikrofon kalibrasyon dosyası (UMIK veya REW) ve
SPL ofseti yüklenebilir, ama kayıtlı verileri asla değiştirmez.

Bir noktayı dokunarak, üç saniyelik ortalamayla ölçersin ya da uygulamanın her
yarım metrede sürekli ölçmesine izin verirsin. Noktalardan, bantlar arasında
gezinen bir kaydırıcıyla IDW ısı haritası ve en düz oturma yeri için bir öneri
çıkar.

Logaritmik sweep'ten Farina dekonvolüsyonu ile dürtü yanıtı hesaplanır: doğrudan
ses, ilk yansıma ve fazıyla birlikte frekans yanıtı; ayarlanabilir gating
penceresi ve 1/3'ten 1/24 oktava kadar yumuşatma ile. Bunun yanında oktav başına
sönümlenme (EDT, T20, T30), C50 ve C80, Schroeder eğrisi, dürtü grafiği, ETC
ve spektrogram. Aynı sweep'ten HD2 ve HD3 bozulması da çıkar. Bir yansıma, dürtü
çınlamayı bitirmeden gelirse ayrılamaz — uygulama bir yan lobu duvar diye
işaretlemektense hiçbir şey döndürmemeyi tercih eder.

Herhangi iki nokta, oturumlar arasında bile karşılaştırılabilir. REW ve
VituixCAD için FRD, dürtüler ve tüm oturum JSON olarak dışa aktarılır.

### Sistem tasarımı

LiDAR ile RoomPlan üzerinden odanın geometrisini alır, modal toplamayla modları
hesaplar, yazılımla bir “subwoofer crawl” yapar, ayna yöntemiyle ilk yansıma
noktalarını bulur ve açıları Dolby önerilerine göre kontrol eder. Bunlardan
Integra DRX-8.4 için, on beş EQ bandı dahil ayarlar üretebilir.

Dinleme noktasında her kanal ayrı bir sweep ile ölçülür. EQ, dinleyicinin
çevresindeki noktaların ortalamasından yola çıkar; noktalar arasında 6 dB'den
fazla değişen bir bant düzeltmenin yalnızca yarısını alır. Rahatça kesilir,
neredeyse hiç yükseltilmez ve Schroeder frekansının üstüne dokunulmaz. Önizleme
öncesini, hedefi ve tahmini sonrasını gösterir; hedef eğri ayarlanabilir.
EQ'yu alıcıya girdikten sonra yapılan ikinci ölçüm, filtresinin gerçekte ne
yaptığını gösterir.

### Uygulamanın açıkça söyledikleri

Tek bir mikrofon bir kaynağın yerini belirleyemez; bu yüzden yalnızca telefonun
konumu kaydedilir, yönü asla sesin yönü olarak kaydedilmez. Sistem sinyali
sessizce işlediğinde — AGC, gürültü bastırma, yankı giderme — yerel katman
gerçekte neyin açık olduğunu bildirir: AGC üzerinden yapılan ölçüm daha kötü bir
ölçüm değildir, AGC'nin ölçümüdür. Bluetooth mikrofon algılanır ve uyarı verilir.

### Bilerek olmayanlar

Sinyali telefondan çalmak. Telefon hoparlörü 500 Hz civarında biter, yani
aranmaya değer her modun üstünde kalır — WAV'ı düzgün bir sisteme aktarmak
mantıklı olan tek yoldur.

Android'de RoomPlan yok. Onun yerine ARCore'un dikey düzlemleri bir kutuya
oturtulur: kameranın baktığı duvarları görürler, köşeleri nadiren, mobilyaların
arkasını asla. Bir modu adlandırmaya yeter, yansıma noktalarına yetmez — ve
geometri bu bilgiyi kendi üzerinde taşır.

Faz düzeltme, parametrik EQ ve birden fazla subwoofer. Alıcı yalnızca mesafe ve
on beş grafik bant kabul eder; fazlası için harici bir DSP ve REW'e FRD dışa
aktarımı gerekir.
