---
tagline: Bản đồ âm học căn phòng từ micro của điện thoại
---
Bạn phát tín hiệu thử qua loa, cầm điện thoại đi quanh phòng và phổ âm được đo
tại từng điểm. Trong lúc đó, tính năng theo dõi AR ghi lại vị trí bạn đang đứng. Kết quả
là một bản đồ nhiệt trên mặt bằng: chỗ nào bass ù, chỗ nào bass mất, nên đặt
loa ở đâu và người nghe ở đâu.

**Đây không phải là thứ thay thế REW với micro đã hiệu chuẩn.** Nó là công cụ
tương đối — so sánh khác biệt giữa các vị trí trong cùng một phòng. SPL tuyệt
đối từ một chiếc điện thoại chưa hiệu chuẩn là không tồn tại, và ứng dụng không
hề khẳng định điều đó ở đâu cả.

### Đo

Máy đo SPL và RTA với ba mươi mốt dải 1/3 quãng tám từ 20 Hz đến 20 kHz, FFT
8192 với cửa sổ Hann và lấy trung bình năng lượng. Tín hiệu thử xuất ra WAV —
nhiễu hồng và sweep logarit, kênh trái và phải riêng biệt.

RTA có peak hold, đường cực đại và cực tiểu, và đóng băng; ảnh chụp đã đóng băng
có thể lưu thành một điểm. Có thể nạp tệp hiệu chuẩn micro (UMIK hoặc REW) và độ
lệch SPL, nhưng chúng không bao giờ thay đổi dữ liệu đã lưu.

Bạn đo một điểm bằng một lần chạm, lấy trung bình trong ba giây, hoặc để ứng
dụng đo liên tục sau mỗi nửa mét. Từ các điểm sẽ tạo ra bản đồ nhiệt IDW với
thanh trượt qua các dải và gợi ý vị trí ngồi phẳng nhất.

Từ sweep logarit, phép giải chập Farina tính ra đáp ứng xung: âm trực tiếp, phản
xạ đầu tiên và đáp ứng tần số kèm pha, với cửa sổ gating điều chỉnh được và làm
mượt từ 1/3 đến 1/24 quãng tám. Thêm vào đó là độ tắt dần theo quãng tám (EDT,
T20, T30), C50 và C80, đường cong Schroeder, biểu đồ xung, ETC và phổ đồ. Cũng
từ sweep đó còn có méo HD2 và HD3. Khi phản xạ đến sớm hơn lúc xung ngừng ngân,
nó không thể tách ra — ứng dụng thà không trả về gì còn hơn gọi một búp phụ là
bức tường.

Hai điểm bất kỳ đều so sánh được, kể cả giữa các phiên. Xuất ra FRD cho REW
và VituixCAD, các xung và toàn bộ phiên dưới dạng JSON.

### Thiết kế hệ thống

Với LiDAR, ứng dụng lấy hình học căn phòng qua RoomPlan, tính các mode bằng phép
cộng mode, chạy “subwoofer crawl” bằng phần mềm, tìm điểm phản xạ đầu tiên bằng
phương pháp ảnh gương và kiểm tra các góc theo khuyến nghị của Dolby. Từ đó có
thể tạo cài đặt cho Integra DRX-8.4, bao gồm cả mười lăm dải EQ của nó.

Tại vị trí nghe, mỗi kênh được đo riêng bằng sweep. EQ dựa trên trung bình của
các điểm quanh người nghe; dải nào chênh lệch giữa các điểm hơn 6 dB chỉ được
hiệu chỉnh một nửa. Cắt thoải mái, tăng rất ít và không đụng tới phần trên tần
số Schroeder. Bản xem trước hiển thị trước, mục tiêu và dự đoán sau, đường cong
mục tiêu có thể chỉnh. Lần đo thứ hai sau khi nhập EQ vào receiver sẽ cho thấy
bộ lọc của nó thực sự đã làm gì.

### Những điều ứng dụng nói thẳng

Một micro không thể định vị nguồn âm, nên chỉ vị trí của điện thoại được lưu,
không bao giờ lưu hướng của nó như hướng âm thanh. Khi hệ thống âm thầm xử lý tín
hiệu — AGC, khử ồn, khử tiếng vọng — lớp native sẽ báo lại những gì thực sự được
bật: phép đo qua AGC không phải phép đo kém hơn, mà là phép đo AGC. Micro
Bluetooth được phát hiện và có cảnh báo.

### Những gì cố ý không có

Phát tín hiệu từ điện thoại. Loa điện thoại chỉ xuống được khoảng 500 Hz, tức là
cao hơn mọi mode đáng để tìm — xuất WAV ra một hệ thống tử tế là cách duy nhất
hợp lý.

RoomPlan không có trên Android. Thay vào đó, các mặt phẳng thẳng đứng từ ARCore
được ghép thành một chiếc hộp: chúng thấy những bức tường camera đã nhìn, hiếm khi
thấy góc phòng, không bao giờ thấy phía sau đồ đạc. Đủ để gọi tên một mode,
không đủ cho các điểm phản xạ — và dữ liệu hình học tự mang theo thông tin đó.

Hiệu chỉnh pha, EQ tham số và nhiều subwoofer. Receiver chỉ nhận khoảng cách
và mười lăm dải đồ họa; muốn hơn thế cần DSP ngoài và xuất FRD sang REW.
