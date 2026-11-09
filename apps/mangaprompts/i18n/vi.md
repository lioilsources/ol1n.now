---
tagline: Bot Telegram tạo manga từ khối ghép, đổi phong cách ảnh, thử kiểu tóc mới và làm ảnh chuyển động
---
TsumikiMangaBot (trước đây là MangaPrompts) ghép prompt tạo ảnh bằng AI theo kiểu LEGO — bạn chọn các khối ghép trên khoảng hai mươi lăm trục (chất liệu, truyền thống mỹ thuật, kiểu đầu, phong cách manga, thời kỳ lịch sử) và từ đó ra một prompt hoàn chỉnh. Chưa hết: bot gửi prompt thẳng đi tạo ảnh rồi gửi ảnh lại cho bạn.

### Các thẻ khác

Bên cạnh trình ghép, Mini App có bộ chuyển thẻ:

- **Đổi phong cách ảnh** — bạn tải ảnh lên, chọn một phong cách và nhận lại đúng người đó, đúng tư thế đó, theo phong cách đã chọn. Công tắc ảnh / minh họa chọn chất liệu, có hơn chín mươi phong cách chia thành sáu nhóm (phổ biến, họa sĩ, truyền thống mỹ thuật theo vùng).
- **Thử kiểu tóc** — chỉ vẽ lại phần tóc trên ảnh chân dung, có thể kèm màu tóc mới. Mỗi kiểu tóc có ảnh xem trước trên cùng một gương mặt, nên bạn chỉ so sánh phần tóc.
- **Làm ảnh chuyển động** — từ một bức ảnh và một cảnh đã chọn sẽ tạo ra một video ngắn gửi vào chat.

### Bắt đầu

Không cần cài gì, mọi thứ chạy dưới dạng Telegram Mini App:

1. Trong Telegram, mở [@tsumikimanga_bot](https://t.me/tsumikimanga_bot) — hoặc tìm theo tên **Tsumiki**.
2. Gõ `/start`. Bot sẽ trả lời bằng nút **🎨 Open Tsumiki**.
3. Bấm vào nút, ghép các khối và cho tạo ảnh.

Ảnh hoàn chỉnh hiện ngay trong ứng dụng **và đồng thời được gửi vào chat**, nên bạn có nó trong lịch sử và chuyển tiếp được ngay. Nếu bỏ qua `/start` và mở thẳng ứng dụng, việc tạo ảnh vẫn hoạt động — chỉ là ảnh sẽ không đến chat, vì Telegram không cho bot nhắn trước.

### Giá bao nhiêu

**Ba lượt tạo miễn phí mỗi 24 giờ.** Sau đó 1 credit = 1 ảnh, và credit được mua bằng **Telegram Stars** ngay trong ứng dụng — 10 credit giá 25 ⭐, 50 credit giá 100 ⭐, 250 credit giá 400 ⭐. Đổi phong cách và kiểu tóc tính như một ảnh, kiểu tóc chỉ bị trừ sau khi bước phân tích chấp nhận ảnh. Hoạt ảnh có bộ đếm riêng: mỗi ngày một lượt miễn phí, các lượt sau giá 10 ⭐. Nếu tạo ảnh thất bại, credit được hoàn lại. Gặp vấn đề thanh toán thì dùng lệnh `/paysupport`, tôi xử lý hoàn tiền trong vòng 48 giờ.

### Bên trong có gì

Mini App là Flutter web chạy trên Cloudflare Pages. Prompt đi từ đó tới backend (FastAPI + aiogram) chạy trên một NAS ở nhà rồi tới **ComfyUI** — tùy mẫu đã chọn mà workflow được chọn (FLUX, Pony, Juggernaut XL Lightning hoặc WAI Illustrious). Đổi phong cách giữ gương mặt bằng PuLID hoặc InstantID và tư thế bằng depth ControlNet, hoạt ảnh chạy trên Wan 2.2. Credit và thanh toán được lưu trong SQLite ở phía backend.

### Ứng dụng gốc

Các bản build bên dưới cho macOS, Windows, Linux, Android và iOS là trình ghép prompt đầy đủ và có thêm chế độ **Repose** mà Telegram không có: bạn tải lên một gương mặt, chọn tư thế và ứng dụng tạo ảnh người đó trong tư thế đó với gương mặt trung thực (InstantID + depth ControlNet + hi-res + FaceDetailer). Tuy nhiên Repose kết nối thẳng tới ComfyUI, nên ứng dụng gốc phải truy cập được tới nó.

Xây dựng bằng Flutter.
