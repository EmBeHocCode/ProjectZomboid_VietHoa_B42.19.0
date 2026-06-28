# Việt Hóa Project Zomboid B42.19.0

Bản Việt hóa cho **Project Zomboid B42.19.0**.

Gói này **không bao gồm game gốc**. Bạn cần có Project Zomboid trước khi cài.

## Tải xuống

Tải bản cài sẵn tại đây:

[**Tải ProjectZomboid_VietHoa_B42.19.0.zip**](https://github.com/EmBeHocCode/ProjectZomboid_VietHoa_B42.19.0/raw/main/release/ProjectZomboid_VietHoa_B42.19.0.zip)

Sau khi tải xong, giải nén file `.zip` rồi làm theo hướng dẫn bên dưới.

## Cách Cài Nhanh

0. Thoát hẳn Project Zomboid trước khi cài. Không để game ở menu hoặc chạy nền.
1. Giải nén file `ProjectZomboid_VietHoa_B42.19.0.zip`.
2. Copy thư mục `media` vào thư mục game `ProjectZomboid`.
   Ví dụ:
   ```text
   C:\Games\ProjectZomboid
   ```
3. Mở file:
   ```text
   C:\Users\<tên máy>\Zomboid\options.ini
   ```
4. Sửa hoặc thêm dòng:
   ```ini
   language=VI
   ```
5. Mở game lại từ đầu.

## Cách Cài Bằng Script

1. Thoát hẳn Project Zomboid.
2. Giải nén file `ProjectZomboid_VietHoa_B42.19.0.zip`.
3. Chuột phải `Install-Vietnamese.bat` -> chọn `Run as administrator` nếu game nằm trong `Program Files`.
4. Nếu script không tự tìm thấy game, chạy PowerShell:
   ```powershell
   powershell -ExecutionPolicy Bypass -File .\Install-Vietnamese.ps1 -GamePath "ĐƯỜNG_DẪN_THƯ_MỤC_ProjectZomboid"
   ```

## Lỗi Chữ Bị Vỡ Hoặc Nhiễu Trắng

Nguyên nhân thường gặp: copy font hoặc đổi `language=VI` khi game đang chạy, khiến font atlas cũ bị cache với file `.fnt` mới.

Cách sửa:

1. Thoát hẳn game.
2. Đợi 5-10 giây.
3. Mở game lại từ đầu.

Nếu vẫn bị:

1. Tắt hẳn game.
2. Cài lại gói Việt hóa.
3. Mở game lại.

Installer sẽ tự chặn nếu phát hiện Project Zomboid đang chạy.

## Nội Dung Gói

- `media/lua/shared/Translate/VI`: bản dịch tiếng Việt.
- `media/fonts/VI`: font riêng cho ngôn ngữ VI.
- `media/fonts/zomboidNormal11..25`: font gốc đã bổ sung dấu tiếng Việt cho các màn hình game hardcode font.
- `FONT_LICENSE_OFL.txt`: giấy phép font Noto Sans/Noto Sans Mono.

## Kiểm Tra Sau Khi Cài

Menu chính phải hiện tiếng Việt có dấu, ví dụ:

```text
TÙY CHỌN
NHIỀU NGƯỜI CHƠI
```

Intro phải hiện:

```text
ĐÂY LÀ NHỮNG NGÀY TẬN THẾ
```

Nếu mất dấu hoặc chữ bị vỡ, hãy thoát hẳn game rồi mở lại.

## Lưu Ý Chia Sẻ

- Không nén/copy cả game để share. Chỉ share gói Việt hóa này.
- Gói này không bao gồm game gốc.
- Font Noto Sans dùng theo giấy phép SIL Open Font License.
- Bản dịch đã đủ key và đã kiểm tra lỗi placeholder/lỗi font, nhưng vẫn nên cho người chơi báo lỗi chính tả để sửa dần.
- Một số tên riêng, tên xe, brand, địa danh, credit được giữ tiếng Anh để đúng lore game và tránh dịch sai tên riêng.
