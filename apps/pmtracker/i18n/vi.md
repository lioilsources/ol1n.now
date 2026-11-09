---
tagline: Chấm công theo công trình, xác minh địa điểm — mà không lưu vị trí của bạn
---
Các công ty xây dựng và đội dịch vụ kỹ thuật đến giờ vẫn báo giờ làm qua giấy, WhatsApp và Excel. Người quản lý không có cách nào kiểm tra ai đã ở đâu, còn người thợ không có cách nào chứng minh giờ làm thêm. PMTracker đo thời gian trên một công trình cụ thể và với mỗi bản ghi đều biết người đó có thật sự ở tại chỗ hay không.

### Vị trí chỉ hai lần, rồi bị xóa

Tọa độ chỉ được gửi **khi bắt đầu và khi dừng** đo. Máy chủ kiểm tra điểm đó có nằm trong vùng địa lý (geofence) của công trình không, lưu một thông tin duy nhất, "có / không có mặt tại chỗ", rồi bỏ tọa độ đi. Không có bản đồ di chuyển, không theo dõi chạy nền. Công việc ngoài vùng địa lý có thể được cho phép bằng một ngoại lệ, được ghi vào nhật ký kiểm tra.

### Vai trò do cơ sở dữ liệu canh giữ, không phải ứng dụng

Thành viên nhóm chấm công trên những công trình mình được phân công. Quản lý còn quản lý công trình, lịch phân công người và xem báo cáo. Quản trị viên quản lý người dùng. Quyền hạn được áp đặt bằng quy tắc ngay trong cơ sở dữ liệu, nên ngay cả một ứng dụng khách bị sửa đổi cũng không vượt qua được.

### Tình trạng

Đây là bản MVP: đã có mô hình dữ liệu, vai trò, xác minh vùng địa lý và các màn hình đăng nhập, đo giờ, công trình, phân công, báo cáo và quản trị. Chế độ ngoại tuyến cho công trường không có sóng đã sẵn sàng nhưng chưa bật, và ứng dụng chưa chạy ở công ty nào. Để đăng nhập, bạn cần tài khoản do chủ lao động cấp.

### Dành cho người thử nghiệm beta

Bản thử nghiệm hiện chỉ có cho **Android**. Nó chạy với một công ty thử nghiệm, "Stavby s.r.o.", gồm những người hư cấu và hai công trình: cải tạo văn phòng ở Quảng trường Wenceslas tại Praha và lắp điều hòa ở Quảng trường Tự do tại Brno. Dữ liệu có thể bị xóa bất cứ lúc nào. Ứng dụng không có đăng ký; tài khoản sẽ do người mời bạn thử nghiệm gửi cho bạn.

**Cài đặt**

1. Trên điện thoại, tải APK bằng nút trong mục **Tải về** ở trên (hoặc từ [GitHub Releases](https://github.com/lioilsources/PMTracker/releases)).
2. Mở tệp đã tải và cho phép cài đặt từ nguồn không xác định khi Android hỏi.
3. Google Play Protect có thể cảnh báo rằng nó không biết ứng dụng này. Đó là vì ứng dụng không đến từ Google Play; hãy vẫn chọn cài đặt.
4. Mở **PMTracker** và đăng nhập bằng tài khoản bạn nhận được trong tin nhắn.

**Thử gì với vai trò thành viên nhóm**

- Ở thẻ **Výkaz** (Bảng chấm công), nhấn **Zahájit výkaz** (Bắt đầu chấm công), chọn công trình và cho phép truy cập vị trí. Tại công trình, bên dưới thời gian sẽ hiện chữ "Na místě" (Tại chỗ) màu xanh lá.
- Khi bạn không ở tại chỗ, ứng dụng sẽ hỏi lý do. Không sao cả: gõ ví dụ "test" và bản ghi sẽ được lưu kèm ghi chú rằng nó được tạo ngoài địa điểm.
- Sau một lúc, dừng đo bằng nút **Ukončit výkaz** (Kết thúc chấm công). "Dnes celkem" (Tổng hôm nay) sẽ tăng lên.
- Ở thẻ **Zakázky** (Công trình), mở chi tiết: địa chỉ, kích thước vùng địa lý, ai được phân công và danh sách việc cần làm.

**Thử gì với vai trò quản lý**

- Bạn còn thấy **Roster** (nhóm của bạn) và **Reporty** (Báo cáo) với thời gian làm việc của từng người theo công trình. Báo cáo chỉ tính những lần đo đã dừng; đổi khoảng thời gian ở góc trên bên phải.
- Đổi tài khoản bằng cách đăng xuất (biểu tượng ở góc trên bên phải của thẻ **Výkaz**).

**Những gì chưa nên mong đợi**

- Không có internet thì ứng dụng không hoạt động; chế độ ngoại tuyến sẽ có sau.
- Lần đo bị quên không tự dừng; hãy dừng thủ công.
- Chưa có bản iPhone cho người thử nghiệm.

Gửi lỗi hoặc ý tưởng cho người đã mời bạn: bạn đang làm gì, chuyện gì xảy ra và dùng tài khoản nào. Ảnh chụp màn hình giúp ích rất nhiều.
