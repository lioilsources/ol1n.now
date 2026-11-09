---
tagline: Chat AI với vai trò, Thủ thư và Luật sư, studio cho ảnh, video, truyện cổ tích, nhạc và giọng nói
---
Ol1nLLM là một ứng dụng chạy trên máy chủ riêng của bạn: trò chuyện, tìm trong thư viện và văn bản luật, vẽ, biến ảnh thành video, dựng truyện cổ tích, sáng tác nhạc và đọc câu trả lời bằng giọng đã thu.
Hướng dẫn chi tiết kèm ảnh chụp màn hình có ở trang [Ứng dụng làm được gì](ol1nllm-features.html).

### Trò chuyện

Cuộc trò chuyện bắt đầu bằng việc chọn **vai trò** — mười tính cách từ em bé năm tuổi đến ông nội, cùng bốn trợ lý có dữ liệu riêng. Câu trả lời hiện ra ngay khi đang viết, cuộc trò chuyện có thể **rẽ nhánh** và đổi vai trò giữa chừng.

- **Thủ thư** trả lời từ kho triết học và kinh điển bằng ngôn ngữ gốc, kèm các đoạn đã trích dẫn và bản dịch tiếng Séc.
- **Luật sư** trả lời từ luật hiện hành của Cộng hòa Séc và trích dẫn điều khoản.
- **Luật sư – hợp đồng** soạn hợp đồng từ mẫu: hỏi lần lượt từng thẻ và giữ đúng giới hạn pháp luật.
- **Leads** tìm doanh nghiệp và tổ chức trong Sổ đăng ký hợp đồng của Séc.

### Image Studio

Ảnh được tạo qua các vòng nối thành cây: văn bản → ảnh, rồi chỉnh sửa biến thể đã chọn. Mười chín mô hình (FLUX, SDXL, dòng anime), hơn ba trăm **phong cách** nghệ thuật (văn hóa và thời kỳ, nghệ sĩ, chất liệu), mẫu **tư thế**, **LoRA** từ máy chủ và prompt phủ định viết bằng chữ in hoa.

- **Giữ tư thế** và **Giữ khuôn mặt** — nhân vật mới trong tư thế của ảnh mẫu, tùy chọn giữ cả khuôn mặt.
- **Bản đồ phong cách** — hàng trăm ảnh cùng chủ đề xếp theo độ giống nhau; lướt ngón tay trên bức khảm, phong cách đổi như một hoạt ảnh, và phong cách được chọn sẽ được dùng.
- **Inpaint** — tô lên một vùng và mô tả thứ cần có ở đó.
- **Thợ cắt tóc** — kiểu tóc hoặc màu tóc mới mà không cần vẽ mặt nạ.
- **Cho chuyển động** — video ngắn từ ảnh: điệu nhảy và cử chỉ từ máy chủ, hoặc mô tả chuyển động của riêng bạn.
- **3D** — mô hình để in (STL), hoặc nhân vật nhảy múa có khung xương.

### Story Studio

Bạn chọn một truyện cổ tích trong mười kịch bản, phân vai bằng ảnh của mình, và máy chủ biến nó thành video hoạt hình một phút có người kể chuyện, nhạc và phụ đề. Có thể kiểm tra các cảnh trước khi làm hoạt ảnh và cho vẽ lại những cảnh chưa đạt.

### Music Studio

Đưa cho studio một đoạn nhạc mẫu — từ tệp hoặc thu bằng micro — và nó nhận ra thể loại, nhịp độ và giọng. **Vibe** sáng tác bản nhạc mới cùng tinh thần, **Groove** phối lại bản gốc sang thể loại khác.

### Voice Studio

Từ một đoạn thu ngắn — kể cả từ âm thanh của video — sẽ có một **giọng** của riêng bạn. Giọng nào cũng có thể thử với câu bất kỳ và gán cho một vai trò trong chat. Nút loa dưới câu trả lời sẽ đọc nó bằng giọng của vai trò đó.

### Lịch sử

Cuộc trò chuyện, phiên làm việc, dự án và truyện cổ tích đều nằm trong điện thoại. Các tác vụ dài chạy trên máy chủ: bạn có thể đóng ứng dụng, khi quay lại nó sẽ tự kết nối lại.

Xây dựng bằng Flutter, chạy trên điện thoại và máy tính. Ứng dụng là client cho máy chủ mô hình riêng của bạn; không có máy chủ thì nó không tạo ra gì.
