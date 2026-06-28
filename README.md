VIỆT HÓA PROJECT ZOMBOID B42.19.0

Nội dung gói:
- media/lua/shared/Translate/VI: bản dịch tiếng Việt.
- media/fonts/VI: font riêng cho ngôn ngữ VI.
- media/fonts/zomboidNormal11..25: font gốc đã bổ sung dấu tiếng Việt cho các màn hình game hardcode font.
- FONT_LICENSE_OFL.txt: giấy phép font Noto Sans/Noto Sans Mono.

Cách cài nhanh:
0. Thoát hẳn Project Zomboid trước khi cài. Không để game ở menu hoặc chạy nền.
1. Giải nén file zip này.
2. Copy thư mục "media" vào thư mục game ProjectZomboid.
   Ví dụ: C:\Games\ProjectZomboid
3. Mở file:
   C:\Users\<tên máy>\Zomboid\options.ini
4. Sửa hoặc thêm dòng:
   language=VI
5. Mở game lại từ đầu.

Cách cài bằng script:
1. Thoát hẳn Project Zomboid.
2. Giải nén file zip này.
3. Chuột phải "Install-Vietnamese.bat" -> Run as administrator nếu game nằm trong Program Files.
4. Nếu script không tự tìm thấy game, chạy PowerShell:
   powershell -ExecutionPolicy Bypass -File .\Install-Vietnamese.ps1 -GamePath "ĐƯỜNG_DẪN_THƯ_MỤC_ProjectZomboid"

Lỗi chữ bị vỡ/nhiễu trắng như hạt:
- Nguyên nhân thường gặp: copy font hoặc đổi language khi game đang chạy, khiến font atlas cũ bị cache với file .fnt mới.
- Cách sửa nhanh: thoát hẳn game, đợi 5-10 giây, rồi mở lại.
- Nếu vẫn bị: tắt hẳn game, cài lại gói Việt hóa, rồi mở game lại từ đầu.
- Installer sẽ tự chặn nếu phát hiện Project Zomboid đang chạy.

Lưu ý chia sẻ:
- Không nên nén/copy cả game để share. Chỉ share gói Việt hóa này.
- Gói này không bao gồm game gốc. Người dùng cần có Project Zomboid trước khi cài.
- Gói này dùng font Noto Sans theo giấy phép SIL Open Font License.
- Bản dịch đã đủ key và đã kiểm tra lỗi placeholder/lỗi font, nhưng vẫn nên cho người chơi báo lỗi chính tả để sửa dần.
- Một số tên riêng, tên xe, brand, địa danh, credit được giữ tiếng Anh để đúng lore game và tránh dịch sai tên riêng.

Kiểm tra trong game:
- Menu chính phải hiện tiếng Việt có dấu, ví dụ: TÙY CHỌN, NHIỀU NGƯỜI CHƠI.
- Intro phải hiện: ĐÂY LÀ NHỮNG NGÀY TẬN THẾ.
- Nếu mất dấu hoặc chữ bị vỡ, hãy thoát hẳn game rồi mở lại.
