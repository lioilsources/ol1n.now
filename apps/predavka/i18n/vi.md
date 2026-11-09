---
tagline: Bếp bình tĩnh giờ cao điểm — đầu bếp nghe đơn, phục vụ thấy bao nhiêu phút nữa món nào ra
---
Vào giờ cao điểm, nhà hàng mất thời gian giữa bếp và khu phục vụ. Phiếu order chồng chất ở dây chuyền, phục vụ chạy vào bếp hỏi khi nào bàn bảy có món, còn món đã xong thì nguội ở quầy ra món vì không ai để ý. Předávka giải quyết chuyện này mà không bắt ai phải nhìn thêm màn hình: **đầu bếp nghe thấy đơn**, **phục vụ nhìn một màn hình là biết bao nhiêu phút nữa món nào đến và cho bàn nào**, còn món đã xong ở quầy ra món sau vài phút sẽ tự nhắc người đến lấy.

Mọi thứ chạy ngay trong nhà hàng trên một máy tính nhỏ: không cloud, không phí máy chủ hằng tháng, và bằng tiếng Séc. Khi mất internet, việc phục vụ vẫn tiếp tục.

### Bếp nghe, không cần đọc

Khi có đơn mới, loa ở quầy ra món nói một câu ngắn, ví dụ “Bàn bảy: hai svíčková, một schnitzel.” Số từ và tên món được chia đúng ngữ pháp tiếng Séc (“jedna svíčková, dvě svíčkové, pět svíčkových”). Giọng nói được tạo ngay tại nhà hàng và trong thử nghiệm đã sẵn sàng phát trong vòng 0,2 giây kể từ sự kiện. Các thông báo không bao giờ chồng lên nhau: chúng có thứ tự theo mức độ quan trọng, có khoảng nghỉ giữa các câu, và đơn cũ mà màn hình đã hiển thị thì không bị đọc lại vô ích. Nút “Nhắc lại” phát lại thông báo gần nhất.

### Hàng đợi để đầu bếp nhận món

Mỗi khu (nướng, món nóng, món nguội, tráng miệng) có hàng đợi riêng trên máy tính bảng hoặc TV. Đầu bếp nhận món bằng một chạm hoặc một nút trên bump bar. Nhờ vậy hệ thống biết ai đang nấu món gì và từ lúc nào, và nếu hai phút không ai nhận đơn, hệ thống sẽ lên tiếng: “Bàn bảy, khu nướng, đang chờ đầu bếp.”

### Phục vụ biết khi nào và mang đi đâu

Màn hình ở khu phục vụ hiển thị các bàn, món nào sắp ra cho bàn đó và còn bao nhiêu phút. Ước tính không nhảy liên tục (tối đa nửa phút đổi một lần), để có thể dựa vào đó mà sắp xếp. Trên cùng luôn là những món cần lấy. Ở quầy ra món, món ăn “cũ dần”: sau ba phút sẽ vang lên “Bàn bảy xong, đã ở quầy ba phút”, và thông báo lặp lại cho đến khi có người mang đi.

### Ước tính học từ chính bếp của bạn

Lúc đầu, bếp trưởng nhập một lần mỗi món mất bao lâu. Sau đó Předávka đo từng món từ lúc được nhận đến lúc xong, và sau năm lần đo sẽ dùng thời gian thực tế của chính bếp này. Nhờ vậy ước tính cho khách tính đến việc phía trước còn bao nhiêu món trong hàng đợi và bao nhiêu đầu bếp ở khu đó đang nấu cùng lúc.

### Dùng được với mọi máy POS

Đơn có thể lấy từ máy in phiếu: Předávka được nối vào giữa máy POS và máy in, phiếu vẫn in ra như trước, còn nó đọc bàn và món từ phiếu đó. Vì thế không cần kết nối với một hệ thống POS cụ thể nào. Đơn cũng có thể nhập trực tiếp từ máy tính bảng của phục vụ.

### Hình ảnh món ăn

Mỗi món trong thực đơn có thể có hình hoặc emoji. Các màn hình trên trình duyệt hiển thị chúng trên nút gọi món, trên thẻ trong bếp, ở quầy ra món và ở khu phục vụ. Cùng hệ thống này cũng có thể chạy ở nhà như trò chơi nhà hàng cho trẻ em: một bếp, thực đơn trẻ em có hình, một máy tính làm cả máy chủ lẫn loa, và các thiết bị khác chỉ cần mở trình duyệt trên cùng mạng Wi-Fi.

Mô tả chi tiết các tính năng và diễn biến của một ca phục vụ có ở trang [Cách hoạt động](predavka-features.html) (bằng tiếng Séc), kèm ba khoảnh khắc của buổi tối: hàng đợi trống, vài bàn và “không kịp nữa rồi!”.

### Tình trạng

Předávka là một bản mẫu đã hoàn thiện và hoạt động được: máy chủ, giọng nói, nghe lén máy in, hàng đợi, ước tính, thứ tự ra món và các màn hình (ứng dụng cho Android TV và máy tính bảng cùng phiên bản trình duyệt) đã được xây dựng và thử nghiệm trong mô phỏng vận hành. **Nó chưa từng chạy ở một nhà hàng thật.** Bước tiếp theo là thử nghiệm ở một bếp: độ rõ của giọng nói trong tiếng ồn máy hút mùi, phủ âm thanh trong bếp bằng nhiều loa và độ dễ đọc của màn hình trên TV thật.

Ảnh chụp màn hình lấy từ các màn hình thật. Trạng thái trên đó được tạo bằng mô phỏng một ca phục vụ: thực đơn và bàn là hư cấu, thời gian dừng ở một thời điểm nhất định của buổi tối.
