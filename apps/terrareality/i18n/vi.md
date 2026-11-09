---
tagline: Thuê nhà từ lúc tìm trên bản đồ đến khi tiền thuê đã trả — cho chủ nhà, người thuê và đơn vị vận hành
---
TerraReality là nền tảng cho thuê dài hạn căn hộ và phòng. Nền tảng bắt đầu ở Praha và vùng lân cận, nhưng ngay từ đầu dữ liệu đã sẵn sàng cho các nước Trung Âu khác (thẩm quyền pháp lý của hợp đồng, tiền tệ, ngôn ngữ). Khác với một trang rao vặt, nó không dừng lại ở bước liên hệ: nó đồng hành cùng chủ nhà và người thuê suốt quá trình thuê — tìm kiếm, nhắn tin, nộp hồ sơ, xem nhà, hợp đồng và ký kết, cho đến các khoản thanh toán và việc theo dõi chúng.

Nền tảng có bốn gương mặt. **Người tìm nhà** tìm trên bản đồ hoặc chỉ cần viết điều mình muốn. **Chủ nhà hoặc người quản lý** có trang quản trị kiểu cửa hàng trực tuyến: tin đăng, người quan tâm, hợp đồng, ngân hàng, danh mục và hóa đơn. **Người thuê** có cổng thông tin riêng với hợp đồng, các khoản thanh toán và mã QR. **Đơn vị vận hành** có backoffice để duyệt, kiểm duyệt nội dung và cài đặt. Kèm theo đó là ứng dụng di động cho iOS và Android.

Ảnh chụp màn hình lấy từ môi trường phát triển với dữ liệu thử nghiệm: tên là hư cấu, ảnh căn hộ chỉ mang tính minh họa và các gợi ý AI trong đó được tạo ở chế độ ngoại tuyến, không có mô hình ngôn ngữ.

### Tìm trên bản đồ và qua chat

Bản đồ đi từ vùng qua thành phố, quận cho đến từng con phố, và ở mỗi mức thu phóng đều cho thấy có bao nhiêu chỗ cho thuê ở đâu. Bên cạnh là các bộ lọc (loại, giá, diện tích, bố cục, nội thất, thú cưng, giao thông) kèm số kết quả cho từng lựa chọn. Ai không muốn bấm thì gõ, chẳng hạn, "2+kk dưới 25 000 ở Praha 6, có chó và ban công" — nền tảng từ câu đó đặt bộ lọc và khung bản đồ, rồi cho thấy nó đã hiểu câu như thế nào. Có thể lưu tìm kiếm, và khi có chỗ mới sẽ có thông báo.

### Tin đăng có AI hỗ trợ — luôn có sự đồng ý của con người

Chủ nhà nhập địa chỉ từ sổ địa chỉ chính thức (RÚIAN), các thông số, ảnh và nội dung. AI có thể đề xuất thông số từ mô tả và ảnh (thang máy, ban công, loại công trình…) và viết nội dung tin đăng bằng tiếng Séc và tiếng Anh. Nhưng đề xuất không bao giờ tự lưu: chủ nhà thấy AI đề xuất gì, đánh dấu điều đúng, và chỉ khi đó mới được áp dụng. Trước khi đăng, tin được một người duyệt trong backoffice. Với mỗi tin, chủ nhà có thể thêm câu hỏi cho người quan tâm (ví dụ "Bạn có nuôi thú cưng không?").

### Tin nhắn

Người quan tâm nhắn cho chủ nhà ngay từ tin đăng; tin nhắn đến theo thời gian thực, có xác nhận đã đọc và tệp đính kèm. Số điện thoại và email trong nội dung được nền tảng ẩn đi cho đến khi ký hợp đồng, để cả thỏa thuận lẫn thanh toán không bị chuyển ra ngoài — và người quan tâm thấy cảnh báo "đừng trả tiền trước khi xem nhà". Ai không trực tuyến sẽ nhận thông báo đẩy hoặc email. Một cuộc trò chuyện đáng ngờ có thể báo cáo chỉ bằng một cú nhấp.

### Hồ sơ thuê, ở ghép và chọn người thuê

Người quan tâm nộp hồ sơ một mình hoặc thay mặt nhóm ở ghép: tạo nhóm, mời những người khác qua email, thống nhất trong chat nhóm, và hồ sơ chỉ được gửi đến chủ nhà khi tất cả đồng ý. Chủ nhà thấy danh sách người quan tâm cùng câu trả lời cho các câu hỏi của mình, trạng thái xác minh và một bản tóm tắt ngắn của AI (một lần nữa, chỉ là đề xuất). Nền tảng không thu thập dữ liệu được bảo vệ như tuổi, giới tính hay quốc tịch. Khi chủ nhà chọn được ai, những người còn lại nhận một phản hồi tự động lịch sự.

### Xem nhà

Chủ nhà mở các khung giờ xem nhà với số chỗ và ghi chú ("gặp nhau trước cửa ra vào"); người quan tâm đặt, dời hoặc hủy ngay trong hồ sơ và nhận lời nhắc.

### Hợp đồng số và chữ ký

Hợp đồng được tạo từ mẫu (căn hộ có thời hạn hoặc không thời hạn, thuê chung của nhóm ở ghép, phòng) và điền bằng dữ liệu từ tin cho thuê. Từ biểu mẫu tạo ra một tệp PDF, hai bên ký trực tuyến và mọi sự kiện — dự thảo, chữ ký, thanh toán, chấm dứt — đều được ghi vào một chuỗi kiểm toán, trong đó mỗi bản ghi được liên kết với bản ghi trước bằng hash. Vì thế, việc sửa lịch sử về sau không thể che giấu; trang hợp đồng cho thấy chuỗi còn nguyên vẹn. Nền tảng cũng xử lý việc chấm dứt hợp đồng và quyết toán tiền đặt cọc.

Các mẫu mang hình mờ BẢN NHÁP cho đến khi được luật sư rà soát, và chữ ký hiện là chữ ký điện tử đơn giản có lưu bằng chứng (thời gian, địa chỉ IP, dấu vân tay tài liệu). Ký qua Bank iD đã được chuẩn bị làm bước tiếp theo và đang chờ hợp đồng với Bank iD.

### Thanh toán — tiền đi thẳng đến chủ nhà

Từ hợp đồng sinh ra lịch thanh toán: tiền đặt cọc, tiền thuê và tiền ứng trước phí dịch vụ, với nhóm ở ghép thì chia theo phần. Người thuê trả bằng mã QR trong ứng dụng ngân hàng hoặc bằng thẻ qua liên kết Revolut Business dẫn đến tài khoản người bán của chính chủ nhà. Chủ nhà có thể kết nối tài khoản ngân hàng (chỉ đọc) và các khoản tiền đến được tự động khớp theo ký hiệu biến đổi, ký hiệu đặc biệt và số tiền; khoản nào không khớp sẽ nằm lại như đề xuất để khớp thủ công. Sau hạn thanh toán sẽ có lời nhắc, và sau bảy ngày là bước leo thang.

**TerraReality không bao giờ giữ hay chuyển tiếp tiền của người thuê.** Không ký quỹ trung gian, không tiền mã hóa — thanh toán đi thẳng từ tài khoản người thuê sang tài khoản chủ nhà.

### Tiếp nhận các hợp đồng thuê hiện có

Chủ nhà đã cho thuê căn hộ bằng hợp đồng giấy không phải ký lại gì cả. Chủ nhà tiếp nhận hợp đồng thuê dưới dạng đã ký ngoài nền tảng, tải lên bản scan hợp đồng và các khoản thanh toán được theo dõi từ ngày tiếp nhận: nợ cũ được đưa vào số dư đầu kỳ, tiền đặt cọc đang giữ được ghi nhận và ký hiệu biến đổi đang dùng cũng được giữ nguyên. Người thuê không nhận được gì cho đến khi chủ nhà mời họ vào cổng thông tin người thuê. Có thể nhập nhiều hợp đồng thuê cùng lúc từ bảng tính.

### Danh mục ở nhiều thành phố và rủi ro cho thuê

Dành cho chủ nhà và người quản lý có nhiều căn: tổng quan mọi hợp đồng thuê theo thành phố, khoản phải thu hằng tháng và số thực sự đã về, xu hướng mười hai tháng, danh sách việc cần chú ý (nợ, leo thang, chấm dứt, căn trống), mức tập trung doanh thu và rent roll có xuất ra CSV và Excel. Mỗi hợp đồng thuê có điểm rủi ro tính từ các quy tắc (nợ, khoản cũ chưa trả, mức bù đắp của tiền đặt cọc, hợp đồng sắp hết hạn…). Điểm số chỉ là thông tin và không bao giờ quyết định thay cho ai; người thuê thấy được nó được tính từ đâu. Các quy tắc (lời nhắc, leo thang, tiền đặt cọc, thời hạn báo trước) có thể đặt theo từng thành phố, và nhà đầu tư có thể được cấp quyền chỉ đọc, trong đó người thuê chỉ hiện bằng chữ viết tắt tên.

### Quảng bá và hóa đơn

Chủ nhà có thể đẩy tin lên đầu hoặc làm nổi bật tin đăng. Thanh toán bằng thẻ qua Stripe, hóa đơn có VAT được tự động xuất, gửi qua email và có thể tải về trong trang quản trị. Tin được quảng bá có nhãn "Nổi bật" trong kết quả.

### Backoffice, kiểm duyệt và DSA

Đơn vị vận hành có tổng quan số liệu, hàng đợi tin chờ duyệt, kiểm duyệt các cuộc trò chuyện và tin bị báo cáo, hàng đợi đề xuất của AI về thông số mới, bảng giá quảng bá, mẫu hợp đồng, công tắc tính năng và nhật ký kiểm toán. Bất kỳ ai cũng có thể báo cáo một tin, kể cả khi không có tài khoản (theo Đạo luật Dịch vụ Kỹ thuật số của EU, DSA); mỗi trường hợp đều do con người quyết định và lý do được gửi qua email cho cả người báo cáo lẫn người đăng tin. Đăng nhập "dưới danh nghĩa người dùng" khi hỗ trợ đòi hỏi nêu lý do và được ghi vào nhật ký kiểm toán.

### Ứng dụng di động

Ứng dụng Flutter cho iOS và Android bao quát những gì người thuê cần trên điện thoại: tìm kiếm dạng danh sách và bản đồ, chi tiết tin đăng với tin nhắn, nộp hồ sơ và đặt lịch xem nhà, lịch xem nhà của tôi, hợp đồng thuê với thanh toán QR và liên kết Revolut, cùng việc mở trực tiếp từ thông báo đẩy. Đây là phiên bản đầu tiên; các bản build cho người thử nghiệm (TestFlight và kênh nội bộ Google Play) sẽ có trong giai đoạn chuẩn bị thử nghiệm.

### Vận hành

Môi trường production đã sẵn sàng cho Hetzner tại EU: máy chủ ứng dụng và máy chủ cơ sở dữ liệu tách biệt trong mạng riêng, HTTPS tự động, sao lưu cơ sở dữ liệu với khả năng khôi phục về bất kỳ thời điểm nào (mất tối đa một giờ dữ liệu) và bài diễn tập khôi phục đã được kiểm chứng, giám sát kèm cảnh báo (khả dụng 99,9 %, phản hồi tìm kiếm dưới 300 ms, trạng thái sao lưu) và báo lỗi. AI chạy trên máy chủ GPU riêng; khi AI không khả dụng, mọi thứ vẫn hoạt động mà không cần nó.

### Tình trạng và thử nghiệm

**MVP của toàn bộ nền tảng đã hoàn thành.** Mọi mô-đun nêu trên đều đã được lập trình và có kiểm thử tự động — kiểm thử đơn vị, tích hợp và end-to-end, tự bấm qua trọn vẹn các kịch bản trong trình duyệt (tin đăng, tin nhắn, hồ sơ nhóm, hợp đồng có chữ ký và khoản thanh toán đã khớp, danh mục, quảng bá kèm hóa đơn, báo cáo theo DSA, backoffice). Việc khôi phục cơ sở dữ liệu từ bản sao lưu cũng đã được kiểm chứng.

Các cải tiến bảo mật và vận hành được khuyến nghị khi rà soát mã nguồn cùng thông báo đẩy cho hồ sơ, hợp đồng và thanh toán cũng đã hoàn tất. Bản beta kín đang chạy trên máy chủ riêng với các tin mẫu cho Praha và vùng lân cận, được đánh dấu rõ là mẫu. Việc triển khai production trên Hetzner đang chờ tài khoản và quyền truy cập (xem bên dưới).

Thử nghiệm với người thật diễn ra qua năm giai đoạn. Mỗi giai đoạn kết thúc bằng một cổng, nơi chúng ta cùng quyết định có đi tiếp hay không:

1. **T0 — chuẩn bị (2 tuần).** Môi trường thử nghiệm trên Hetzner có dải băng "Môi trường thử nghiệm", đối tác ở chế độ sandbox (Stripe, Revolut, Bank iD), phân tích sản phẩm không có dữ liệu cá nhân, nút "Báo lỗi / góp ý" trên web và trong ứng dụng, đăng ký chỉ qua lời mời, dữ liệu thử nghiệm và bản build ứng dụng cho người thử nghiệm.
2. **T1 — thử nghiệm nội bộ (1 tuần).** 5–8 người trong nhóm và người quen đi qua mọi kịch bản với vai trò chủ nhà lẫn người tìm nhà, trên nhiều thiết bị, kể cả diễn tập sự cố và khôi phục từ bản sao lưu.
3. **T2 — kiểm thử khả năng sử dụng có người điều phối (2 tuần).** 12 người tham gia: chủ nhà tư nhân, một người quản lý có nhà ở nhiều thành phố, người tìm nhà là người Séc và người nước ngoài, và một cặp bạn ở ghép. Đo tỷ lệ hoàn thành nhiệm vụ và mức hài lòng (SUS ≥ 70).
4. **T3 — thí điểm kín tại Praha (6 tuần).** 20 chủ nhà thí điểm với hướng dẫn riêng và 50–100 người tìm nhà, chỉ qua lời mời. Theo dõi xem tin đăng có nhận được hồ sơ không, chủ nhà trả lời nhanh đến đâu, bao nhiêu hợp đồng được hoàn tất trực tuyến và mọi thứ chạy ổn định ra sao; mỗi tuần một bản phát hành.
5. **T4 — beta mở tại Praha (4 tuần).** Mở đăng ký cho mọi người với nhãn beta, không có chiến dịch trả phí — và cuối cùng là quyết định về việc ra mắt công khai.

Tổng cộng khoảng 15 tuần kể từ khi bắt đầu chuẩn bị.

**Những gì chúng tôi cần từ các bạn:**

- tài khoản và quyền truy cập cho vận hành: Hetzner, tên miền và DNS, tài khoản nhà phát triển Apple và Google, Stripe, Revolut Business, Bank iD và nhà cung cấp kết nối ngân hàng;
- tuyển người thử nghiệm, 20 chủ nhà thí điểm và người tìm nhà, phần thưởng cho người tham gia;
- rà soát pháp lý điều khoản sử dụng, chính sách quyền riêng tư và mẫu hợp đồng, sự đồng ý của người thử nghiệm và quyết định có ký hợp đồng thật trực tiếp trên nền tảng trong giai đoạn thí điểm hay không;
- kiểm thử xâm nhập trước thí điểm, điều phối phỏng vấn ở T2 và hỗ trợ tuyến đầu trong thời gian thí điểm;
- quyết định tại mỗi cổng giữa các giai đoạn.
