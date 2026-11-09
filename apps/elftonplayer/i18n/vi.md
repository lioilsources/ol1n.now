---
tagline: Trình phát bit-perfect cho USB DAC — tệp, RAM, ASIO và không gì xen giữa
---
Elfton Player là trình phát nhạc cục bộ cho Windows 11 với một ưu tiên duy nhất:
các mẫu đến được USB DAC phải đúng y như trong tệp.
Đường tín hiệu là **tệp → bộ giải mã → RAM → ASIO → DAC**. Không chỉnh âm lượng,
không equalizer, không lấy mẫu lại, không streaming. Âm lượng được chỉnh
trên DAC hoặc ampli.

### Tính năng

- **Đầu ra bit-perfect** qua ASIO, hoặc WASAPI ở chế độ độc quyền. Cạnh bài hát
  hiện toàn bộ chuỗi (`FLAC 24/96k → 32-bit · bit-perfect`), và chấm xanh tắt
  ngay khi có bất cứ thứ gì can thiệp vào tín hiệu.
- **Phát từ bộ nhớ.** Cả bài được giải mã vào RAM nên ổ đĩa nghỉ trong lúc phát;
  bài tiếp theo được nạp trước và nối tiếp **không khoảng lặng**.
- **Lặp A-B chính xác đến từng mẫu**, dịch điểm theo từng mili giây — để luyện
  một đoạn hoặc so sánh hai chỗ trong bản thu.
- **Thư viện theo thư mục**: cây thư mục y như trên ổ đĩa của bạn, ảnh bìa,
  tìm kiếm, hàng đợi, yêu thích, lịch sử, playlist M3U, album một tệp kèm CUE,
  lời bài hát đồng bộ từ LRC.
- **FLAC, ALAC, WAV, AIFF, MP3, AAC, Ogg và DSD** (gốc, DoP, hoặc chuyển sang PCM).
- **Mono (L+R)/2** là can thiệp duy nhất vào tín hiệu, luôn được đánh dấu rõ ràng.
- **Nút L và R** chỉ cho một loa phát và tắt tiếng loa kia. Khi bật mono, cả hai
  phát cùng một thứ, nên ngồi ngay trên ghế bạn có thể dùng điện thoại so sánh
  tức thì bên trái và bên phải của dàn máy (dây, linh kiện); không bật mono thì
  chỉ phát kênh trái hoặc chỉ kênh phải của bản thu.
- **Thanh tua vẽ theo độ lớn của bài hát** trải hết chiều rộng cửa sổ: đoạn mở đầu
  yên lặng hiện rõ và bỏ qua được bằng một cú nhấp.
- **Trái tim cho từng bài** và bộ lọc "chỉ yêu thích" ngay trong album.
- **Ba giao diện**: tối, đen và sáng.
- **Điều khiển bằng điện thoại**: Elfton Remote ghép đôi bằng mã QR qua mạng gia đình
  và làm được mọi thứ như cửa sổ trên máy tính.

### Chế độ phát

Nếu muốn, khi phát nó sẽ đổi gói nguồn, tắt chế độ tạm ngưng USB chọn lọc và
core parking, rồi khôi phục tất cả khi xong. Nói thật: với USB DAC bất đồng bộ,
DAC giữ xung nhịp, nên những tinh chỉnh này không có tác động đo được lên âm thanh.
Chúng đều tùy chọn, mỗi cái được ghi vào log, và không cái nào là cần thiết.

Điều tương tự áp dụng cho các "nghi thức" mượn từ trình phát Bug head, nằm trong
cài đặt và mặc định tắt: khóa nhạc trong RAM, tạm dừng sau khi nạp bài, và khởi
chạy chương trình phụ trợ của riêng bạn (ví dụ MinorityClean) cùng với trình phát.
MinorityClean không đi kèm.

### Tình trạng

**Phiên bản 0.2, bản phát hành trước.** Phiên bản đầu tiên đã chạy trên Windows 11
của một người nghe qua ASIO (Behringer UMC204HD và SMSL D200): WAV 24/192 xuất ra
dưới dạng ASIO 32-bit không chuyển đổi và không ngắt tiếng, và điều khiển từ điện
thoại hoạt động. Đó là báo cáo của chính trình phát về đường tín hiệu; chưa ai thu
đầu ra và so sánh từng bit. Các tính năng mới của 0.2 đã có kiểm thử,
nhưng chưa chạy trên Windows. Ảnh chụp màn hình là từ phiên bản đầu tiên,
từ bản dựng phát triển cho macOS với thư viện mẫu — thanh độ lớn
và nút chuyển L/R chưa có trên đó.

Bản Windows là một tệp zip: giải nén và chạy `Elfton Player.exe`, hoặc chạy
`install.ps1` đi kèm để thêm lối tắt vào menu Start. Không cài thêm gì khác.
Để dùng ASIO, cần cài driver của DAC; không có driver, trình phát sẽ đề xuất
WASAPI. Ứng dụng điều khiển trên điện thoại hiện chỉ có cho Android (APK);
bản iOS đã xong trong mã nguồn nhưng chưa có bản dựng công khai.

Engine viết bằng Go trên nền FFmpeg (LGPL, liên kết động), giao diện bằng Flutter.
