---
tagline: Không chiến voxel giữa những hòn đảo bay (game độc lập cho Luanti)
---
Bạn chính là chiếc tiêm kích. Không phải phi công ngồi bên trong — mà là cỗ
máy. Trong DoggioWars không có đi bộ, không đào, không xây: bạn bay ngay từ giây
đầu tiên.

Bên dưới bạn là bầu trời đầy **đảo bay** thuộc mười hai quần xã — núi lửa với
dung nham tràn qua miệng, cao nguyên băng treo đầy nhũ băng, đầm phá san hô,
nấm khổng lồ, tháp pha lê phát sáng. Chúng được tạo từ một con số gọi là seed,
nên không có hai thế giới nào giống nhau, và các đảo đều **phá hủy được**: đạn
của bạn bắn vỡ từng mảng, rồi chúng rơi vào khoảng không.

### Ai đang bay quanh đây

Bầu trời không trống trải. Quanh các hòn đảo của mình là **rồng rắn** thuộc
năm nguyên tố — rồng lửa trên núi lửa và tro, rồng băng trên sông băng, rồng
nước trên đảo san hô, rồng bùn trên đầm lầy và rồng điện trên pha lê. **Giun
cát** bơi xuyên sa mạc như cá heo, một **hộ vệ đá** canh giữ các đảo cằn cỗi,
những con **sứa** phát sáng lơ lửng trên đảo xanh, và nếu may mắn bạn sẽ gặp
một **cá voi trời**. Hiện giờ tất cả đều hiền hòa: chúng không làm hại bạn và
bạn cũng không làm hại chúng. Cùng một seed cho ra cùng một dàn sinh vật.

Phím **Z** hoặc lệnh `/map` mở bản đồ thế giới toàn màn hình: đảo được tô màu
theo quần xã, chấm cho các sinh vật và con tàu của bạn kèm hướng bay.

### Hai cỗ máy trong một

Chuyển đổi bằng lệnh `/mode`, và chúng bay hoàn toàn khác nhau.

**Tàu ngầm** là chế độ mặc định và dễ tha thứ lỗi. Nó lơ lửng tại chỗ — buông
điều khiển ra là nó dừng lại nhẹ nhàng, nên bạn có thể thong thả ngắm một hòn
đảo hoặc luồn lách giữa các vách đá từng milimét. Nó còn có thể dạt ngang mà
không đổi hướng.

**Tiêm kích** thì không bao giờ dừng. Nó giữ tốc độ bạn đặt và rẽ bằng cách
**nghiêng cánh** — cần trái đặt nó nghiêng lên một bên cánh, mũi máy bay tự
xoay theo, nghiêng càng gắt thì xoay càng nhanh. Bổ nhào dốc đẩy nó vượt tốc
độ tối đa, còn leo cao lại làm mất tốc, nên bạn liên tục đổi độ cao lấy tốc độ
và ngược lại. Nó làm được barrel roll, vòng nhào lộn và cú quay Immelmann — và
bay sát qua vách đá sẽ nạp boost, nên liều lĩnh là có lời.

### Đuổi theo chú thỏ vàng

Lệnh `/race` khởi động một cuộc đua chó săn: một chú thỏ vàng lao vút trên bầu
trời, biết đúng những pha nhào lộn như bạn, luồn qua các đường hầm khoan xuyên
đảo và chẳng chờ ai. Hoặc bạn bám theo nó suốt cả đường đua, hoặc không.

### Điều khiển

Chuột và bàn phím vẫn dùng được, nhưng game được làm cho **tay cầm** — Xbox 360
và PS4 DualShock qua hỗ trợ joystick gốc của Luanti, không cần phần mềm map
phím ngoài. Cần trái lái máy bay, cần phải ngắm súng độc lập với hướng bạn
bay. Độ nghiêng và góc chúc ngóc được hiển thị bằng thước thủy trong HUD, vì
Luanti không nghiêng được đường chân trời.

### Chat Twitch

Game có kết nối Twitch tùy chọn qua dịch vụ
[chatbridge](https://github.com/lioilsources/chatbridge): người xem dùng lệnh
chat (`!drak`, `!velryba`, `!meduzy`…) để triệu hồi sinh vật vào thế giới của
streamer. Chat chỉ có thể thêm những sinh vật tự dọn dẹp sau khi đi, không bao
giờ đụng đến địa hình, và `/chatoff` tắt nó ngay lập tức. Nếu không có cài đặt
trong `minetest.conf`, kết nối sẽ tắt.

### Cài đặt

Bạn cần **Luanti 5.12 trở lên** và **không cần gì khác** — từ phiên bản 2.0,
DoggioWars là game độc lập chứ không phải mod, nên không còn cần Minetest Game.

Giải nén tệp vào thư mục `games/` trong thư mục dữ liệu Luanti. Trên Windows đó
là `%APPDATA%\Minetest\games\`, với bản zip di động là `games\` ngay trong thư
mục game. Trên macOS là `~/Library/Application Support/minetest/games/`, trên
Linux là `~/.minetest/games/`.

Thư mục sau khi giải nén phải có tên **`doggiowars_game`**. Sau đó mở Luanti,
chọn DoggioWars ở thanh dưới của menu chính và nhấn **New**.

Nếu bạn vẫn còn bản cũ cài dạng **mod** trong thư mục `mods/`, hãy xóa đi — từ
phiên bản 2.0 đây là game, và giữ cả hai cùng lúc chẳng có ý nghĩa gì.
