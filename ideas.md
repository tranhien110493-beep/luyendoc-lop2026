# Định hướng thiết kế — Luyện Đọc Tiếng Việt Lớp 2

## Nguồn tham chiếu

Đây là yêu cầu tái tạo website từ project cũ. Giao diện và hành vi của mã nguồn sao lưu là đặc tả chuẩn: giữ phong cách thân thiện với học sinh lớp 2, các thẻ nội dung bo tròn, màu nền kem, xanh ngọc/xanh dương làm màu tin cậy, điểm nhấn cam/đỏ cho hành động và trạng thái thành tích.

## Nguyên tắc

- Ưu tiên đọc dễ trên điện thoại, thao tác chạm lớn và phản hồi rõ ràng.
- Giữ bố cục một trang với thư viện bài đọc, khu vực luyện đọc và các panel kết quả/giáo viên.
- Câu chữ tiếng Việt tự nhiên, khích lệ học sinh, tránh thông báo kỹ thuật khó hiểu.
- Hiển thị trạng thái microphone, lưu kết quả, quiz và bảng xếp hạng minh bạch.
- Dùng typography tròn, thân thiện; màu nền sáng và tương phản đủ cho học sinh lớp 2.
- Âm thanh mẫu và nhận xét dùng nhịp chậm, rõ, có ngữ điệu hỏi/kể; luôn có đường dự phòng trên thiết bị.

## Thương hiệu

- Biểu tượng: quyển sách mở kết hợp dấu âm thanh, nền xanh dương đậm và điểm nhấn cam.
- Giọng thương hiệu: cô giáo thân thiện, hướng dẫn ngắn gọn, tích cực.
- Logo dùng chung cho favicon và thẻ project; không dùng ảnh stock hoặc chi tiết nhỏ khó đọc ở kích thước 24–48 px.

## Kiến trúc giao diện

- Trang `/` là ứng dụng client-rendered; query string dùng cho link chia sẻ bài đọc.
- Backend Express/tRPC phục vụ lưu kết quả, đọc leaderboard và các thao tác giáo viên; database MySQL/Drizzle lưu dữ liệu bền vững.
- Static frontend build và backend container dùng chung origin; `/api/*` đi vào server, phần còn lại là SPA.
