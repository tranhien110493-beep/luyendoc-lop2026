# Luyện Đọc Tiếng Việt Lớp 2 — Bản độc lập

Ứng dụng React/Vite + Express + tRPC cho luyện đọc tiếng Việt lớp 2. Bản này **không phụ thuộc Manus**: không dùng Manus OAuth, Manus Forge, Manus Storage, Manus runtime hay Manus hosting.

## Chạy trên máy

1. Cài Node.js 20+ và pnpm.
2. Sao chép `.env.example` thành `.env`.
3. `pnpm install`
4. `pnpm dev`
5. Mở `http://localhost:3000`

Dữ liệu được lưu trong `data/db.json`; audio giáo viên lưu trong `data/uploads/`.

## AI (tùy chọn)

Nếu muốn AI tự tạo câu hỏi/nhận xét, đặt `OPENAI_API_KEY`. Nếu không có khóa AI, ứng dụng vẫn chạy và dùng bộ câu hỏi/nhận xét dự phòng.

## Giọng đọc FPT.AI (tùy chọn)

Đặt `FPT_TTS_API_KEY` nếu muốn tạo audio bằng FPT.AI. Chức năng microphone đọc bài dùng SpeechRecognition của trình duyệt và không đi qua Manus.

## Bảo vệ giáo viên

PIN mặc định là `1234`; có thể đổi bằng `TEACHER_PIN`. Giao diện vẫn cho cô đổi PIN trong trình duyệt.


## Railway

Xem `HUONG-DAN-RAILWAY-TUNG-BUOC.txt`. Khi deploy Railway, dat `DATA_DIR=/app/data` va gan Volume vao `/app/data` de giu du lieu va audio.
