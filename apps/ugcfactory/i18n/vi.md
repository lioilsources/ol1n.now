---
tagline: Xưởng phụ kiện Roblox — từ prompt đến mô hình 3D mà không cần dựng hình thủ công
---
UGC Factory làm phụ kiện avatar cho Roblox Marketplace. Bạn viết thứ mình muốn —
*“một chiếc mũ giáp samurai chạm trổ với điểm nhấn neon”* — và ở đầu bên kia sẽ ra một
mô hình 3D có texture, sẵn sàng để tải lên. Không dựng hình thủ công.

## Cách nó vận hành

Công việc được chia cho ba máy. **DGX Spark** có GPU vẽ concept (Illustrious cho đồ vật,
Juggernaut XL cho những thứ đeo trên người — chọn theo danh mục), xoá nền và biến ảnh
thành mô hình 3D. **NAS** giữ hàng đợi, danh mục và một Blender headless đưa mô hình vào
giới hạn của Roblox — dưới 4.000 tam giác, UV, texture đã bake, điểm gắn
đúng chỗ. **Điện thoại** dùng để phân loại.

Làn nhanh (SF3D) dựng một mô hình trong một giây rưỡi, nên có thể thử nghiệm trên
quy mô lớn. TRELLIS chậm hơn nhưng tinh hơn chỉ chạy khi đóng gói món đã qua
mắt bạn — phần tính toán đắt đỏ chỉ dành cho thứ bạn thật sự muốn bán.
Những món chạm trổ như vương miện nhỏ và mũ giáp đi thẳng qua TRELLIS.

## Ứng dụng

Ứng dụng di động là cốt lõi của toàn bộ hệ thống. **Composer** gửi đi một lô — danh mục × phong cách ×
biến thể, năm mươi món một lúc cũng được. **Hàng đợi** hiển thị trực tiếp thứ gì đang được làm và
ở giai đoạn nào. **Triage** là phần chính: một món trên màn hình, một nút chuyển giữa
concept và mô hình 3D xoay được, ba nút — duyệt, loại, thử
lại với seed khác. Lướt qua còn nhanh hơn đọc. **Review** cho thấy
món đã chuyển đổi: số tam giác so với giới hạn, UV, độ kín của mesh,
texture và kết luận PASS, WARN hoặc FAIL. Từ đây có thể chuyển đổi lại món đó hoặc
đóng gói để tải lên. Đóng gói lại không ghi đè tên, mô tả, giá và thẻ
bạn đã điền trong ứng dụng.

Chạy trên Android, iOS, macOS và trong trình duyệt. Máy chủ phục vụ nó trên origin
riêng của mình, nên bản web luôn là bản mới nhất.

## Trang trí vòng quanh

Mô hình được tạo từ một ảnh duy nhất, nên mặt sau chưa ai từng thấy, và nó ra
phẳng, trơn trụi. Với những món thật sự đối xứng xuyên tâm (bánh kem,
vương miện), phần hình quạt phía trước được sao chép vòng quanh và đường nối được hàn lại. Bật tính năng này
trong Composer hoặc ở món đã hoàn thành khi chuyển đổi lại, không cần tạo thêm.
Không hợp với món phẳng — nó sẽ vỡ thành một tấm chắp vá các hình quạt.

## Danh mục

Ra đẹp nhất là những thứ cũng tồn tại **một cách độc lập** trong dữ liệu huấn luyện:
ba lô, túi xách, vương miện nhỏ, mũ, bánh kem, mặt nạ, khiên, nhẫn.
Những chiếc mũ thời trang đính lông vũ và hoa, túi chần bông có monogram, vương miện
đính ngọc trai và mã não, mặt nạ lấy cảm hứng từ năm nền văn hoá, đuôi cáo và
gấu mèo lông xù, thú cưng kawaii đậu trên vai.

Ảnh gần như lúc nào cũng đẹp — mô hình thì còn lâu mới được vậy, mà thứ quyết định
lại là mô hình. Dạng khối gọn có thể tích (ba lô, bánh kem, nhẫn) giữ tốt. Cấu trúc mảnh
dạng chạm thủng bị rách ở làn nhanh, nên vương miện nhỏ đi thẳng đường chậm hơn.
Còn đầu vào kiểu tranh vẽ có ít bóng đổ, nên ra phù điêu thay vì khối — các con thú nhỏ
màu pastel vì vậy cần prompt ép đổ bóng mềm.

Quần áo và tóc là ca khó: mô hình chỉ biết chúng khi mặc trên một nhân vật, nên từ prompt
*“váy rồng”* nó vẽ ra một con rồng. Điều giúp ích là chuyển sang mô hình chân thực và
diễn đạt như ảnh chụp sản phẩm — *“chiếc váy trên ma-nơ-canh vô hình”*.

Ngoài ra, Roblox xử lý váy, giày và găng tay như layered clothing với cage mesh,
thứ mà xưởng chưa làm được. Với ngón tay và bàn tay, Roblox hoàn toàn không có điểm gắn.
