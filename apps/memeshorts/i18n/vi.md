---
tagline: Video short dọc từ mẫu meme, do chính nhân vật của bạn thủ vai
visuals: {n} chân dung từ thư viện nhân vật — bốn nhân vật, mỗi nhân vật mười hai cảm xúc.
---
Một công cụ dòng lệnh biến mẫu meme thành video short dọc dài từ sáu đến mười lăm giây. Meme gốc chỉ dùng làm khuôn cho cấu trúc câu đùa — nó không bao giờ xuất hiện trong kết quả. Thay vào đó là các nhân vật riêng thủ vai.

Prompt hay seed đều không giữ được nhân vật nhất quán, nên hình ảnh không được tạo riêng cho từng short. Chúng được làm một lần thành thư viện *nhân vật × cảm xúc* đã duyệt: Kiro, Mei, Taro và Yuki, mỗi người mười hai biểu cảm, từ tự mãn đến kiệt sức.

Sau đó short chạy qua pipeline `classify → storyboard → generate → animate → compose → qa`. Mỗi bước được lưu riêng và lấy hash của các tùy chọn làm khóa, nên chạy lại không tốn gì và sửa chữ chỉ tính lại phần cần thiết. Câu đùa do LLM viết hoặc bạn tự nhập; phụ đề được render trực tiếp bằng Go.

Kết quả là 1080×1920, H.264, 30 fps, độ lớn −14 LUFS và nhãn “AI generated” cả trong hình lẫn trong siêu dữ liệu.

Hiện tại nó chỉ chạy cục bộ và chưa có phiên bản phát hành, nên ở đây chưa có gì để tải về.
Viết bằng Go; hình ảnh do FLUX.1-schnell tạo trên máy riêng của tôi.
