---
tagline: Vô lê chỉ bằng một lần vuốt — mu bàn chân chạm bóng ở đâu, xoáy bao nhiêu và vào mili giây nào
---
Fotball Simulator mô phỏng duy nhất một động tác: cú vô lê. Bóng nảy trước mặt bạn, mỗi lần một kiểu, và chỉ với một lần vuốt ngón tay, bạn sút bóng về phía khung thành. Không đội bóng, không trận đấu, chỉ có câu hỏi mu bàn chân chạm bóng ở đâu và lúc nào. Mọi thứ khác, đường bay, độ xoáy, cú nảy và việc có thành bàn hay không, đều do vật lý quyết định từ đó.

### Một lần vuốt, bốn quyết định

Phía dưới màn hình là một quả bóng lớn, và một lần vuốt qua nó nói lên tất cả cùng lúc:

- **Bạn đặt ngón tay ở đâu**, mu bàn chân chạm bóng ở đó. Dưới tâm thì bóng bay lên, trên tâm thì bạn sút bóng xuống đất, từ bên cạnh thì bóng có xoáy.
- **Đường cong của cú vuốt** là độ xoáy. Bạn vuốt càng cong, bóng càng đổi hướng nhiều khi bay.
- **Tốc độ của cú vuốt** là lực sút.
- **Khoảnh khắc bạn nhấc ngón tay** là thời điểm chạm bóng. Cú vô lê có một khoảng thời gian: sau khi nảy, bóng bay lên, dừng lại rồi rơi xuống, và thời điểm lý tưởng là khi bóng hạ xuống ngang tầm mu bàn chân. Trò chơi biết trước thời điểm đó, vì nó tính toán đường bay của bóng ngay khi tung bóng.

Độ lệch được đo bằng mili giây. Trong khoảng ±30 ms là PERFECT, sau đó là GOOD, LATE và EARLY. Muộn là muộn: mu bàn chân chạm vào quả bóng đang rơi từ phía trên, bóng bị xoáy lên và cắm xuống đất hoặc không tới được khung thành. Ai trượt hẳn thì sút vào không khí.

### Khung hình đóng băng và đường bay

Vào lúc chạm bóng, thế giới dừng lại trong tích tắc. Trên quả bóng sáng lên điểm mà mu bàn chân đã chạm, và một mũi tên chỉ hướng bóng bay. Phía trên hiện tốc độ tính bằng km/h, độ xoáy tính bằng vòng mỗi giây và đánh giá thời điểm cùng độ lệch chính xác. Rồi bóng bay đi để lại một vệt phía sau, nên bạn thấy rõ bóng cong thế nào. Kết quả là VÀO, RA NGOÀI hoặc KHÔNG TỚI, và chỉ lát sau quả bóng tiếp theo lại nảy tới.

Nếu cần thêm thời gian, hãy bật **slow-mo**: khi ngón tay chạm màn hình, trò chơi chậm lại để bạn vuốt cho xong. Nhưng thời điểm được đo theo thời gian trong game, nên làm chậm không giúp bạn gian lận.

### Vật lý

Đường bay của bóng là phép tính riêng, không phải vật lý của engine: trọng lực, lực cản không khí, hiệu ứng Magnus (vì thế bóng xoáy sẽ bay cong) và độ xoáy giảm dần. Cú nảy trên cỏ làm bóng mất độ cao và độ xoáy chuyển thành hướng đi. Việc chạm bóng có tính đến tốc độ bóng bay tới, nên một quả sút yếu chỉ bật ra chứ không lơ lửng giữa không trung. Kết quả được bảo đảm bằng các bài kiểm thử tự động so với một bản triển khai tham chiếu độc lập của cùng mô hình bằng Python.

Trò chơi được làm bằng Godot 4.7, còn trên điện thoại là bản viết lại bằng Flutter với cùng các hằng số và cùng các bài kiểm thử. Khung cảnh được vẽ bằng phép chiếu phối cảnh riêng, không dùng engine 3D.

### Tình trạng

Giai đoạn đầu đã xong: một vòng lặp chơi được gồm tung bóng, sút, khung hình đóng băng, đường bay và kết quả. Sân và khung thành hiện còn đơn giản; vẫn thiếu một cái chân vung lên, tấm lưới phồng lên khi có bàn thắng và camera bay theo bóng. Sau đó sẽ là tinh chỉnh cảm giác chơi, bản đồ nhiệt các cú sút vào khung thành và thống kê.

APK bên dưới là bản thử nghiệm (alpha). Trên iPhone hiện chỉ có qua TestFlight dành cho người thử nghiệm.
