---
tagline: Bàn DJ với playlist thông minh và chế độ tiệc, nơi khách tự chọn nhạc từ điện thoại
---
DJfy là ứng dụng DJ trên điện thoại có khả năng tạo playlist thông minh. Bạn nhập tên một nghệ sĩ, ứng dụng sẽ gom các bài hát xoay quanh nghệ sĩ đó dựa trên nhịp độ và gợi ý. Sau đó nó mix chúng trên các deck với pitch, hiệu ứng và crossfader.

Tích hợp **Last.fm** (gợi ý, scrobbling), **GetSongBPM** (dữ liệu BPM) và **SoundCloud** (streaming).

### Chế độ tiệc

Ở các buổi tiệc, người bật nhạc thường là ai tình cờ đứng cạnh điện thoại, còn những người khác thì hét yêu cầu vào tai họ. Với DJfy, điện thoại của chủ tiệc trở thành bàn DJ, còn loa chỉ việc phát. Khách quét mã QR và mở buổi tiệc trong trình duyệt. Không cần ứng dụng hay tài khoản, chỉ cần nhập tên.

- **Khách đề xuất và bình chọn.** Ai cũng có thể tìm bài, thêm vào hàng chờ và bấm thích hoặc không thích. Để một vị khách không chiếm hết hàng chờ, mỗi người chỉ được có tối đa ba bài trong đó cùng lúc.
- **Hàng chờ thông minh.** Thứ tự không chỉ do số phiếu quyết định. Ứng dụng còn xét bài đã chờ bao lâu, cùng nghệ sĩ có vừa phát xong không và nhịp độ có hợp với bài đang phát không.
- **Mood lock.** Chủ tiệc đặt một khoảng BPM, ví dụ 110–130, bài nằm ngoài khoảng đó sẽ xuống cuối hàng chờ. Nhờ vậy cả buổi tối giữ được nhịp, kể cả khi có ai đề xuất một bản ballad.
- **Auto-DJ.** Các bài nối tiếp nhau bằng crossfade mượt mà. Khi nhịp độ chênh nhau không quá 8 %, ứng dụng khớp BPM trong lúc chuyển bài rồi trở lại tốc độ ban đầu.
- **Tiệc không bao giờ tàn.** Khi hàng chờ hết bài, ứng dụng tự thêm một bài tương tự những bài vừa phát và đánh dấu là Auto. Bài của khách luôn được ưu tiên, còn bài đã bị phủ quyết sẽ không quay lại. Bạn có thể tắt bằng công tắc cạnh Auto-DJ.
- **Chủ tiệc có tiếng nói cuối cùng.** Chủ tiệc có thể phủ quyết một bài, chỉ định một co-DJ được quyền quản lý hàng chờ, hoặc mời một vị khách ra ngoài.
- **Âm thanh đến mọi nơi.** Điện thoại phát ra tai nghe, ra loa qua Bluetooth hoặc qua AirPlay, chẳng hạn tới loa Sonos.

Điện thoại của chủ tiệc gánh cả buổi tiệc. Một máy chủ Go nhỏ nằm giữa nó và khách chỉ chuyển tiếp tin nhắn và không lưu gì cả.

Xây dựng bằng Flutter. Chạy trên điện thoại và macOS.
