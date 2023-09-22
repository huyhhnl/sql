## Cơ sở dữ liệu báo điện tử sẽ có 6 đối tượng chính:
- Quản trị viên trang web sẽ quản lý bài đăng của các reposter (duyệt hay không duyệt).
- Reposter (phóng viên) sẽ thực hiện viết bài và đăng bài( chờ quản trị viên duyệt).
- Người sử dụng xem thông tin trên các bài viết, có thể tìm bài viết qua các tiêu đề, ...
- POST (bài viết) được viết bởi các reposter và được quản lý bởi quản trị viên website.
- SHARE - hành động này là của người dùng, đối tượng share là bài viết (POST). 
- COMMENT - hành động này là của người dùng, đối tượng bình luận là bài viết (POST). Một người dùng có thể bình luận nhiều bài viết và một bài viết cũng có thể được bình luận bởi nhiều người dùng.     
## 6 đối tượng trên sẽ có các thông tin tương ứng như dưới đây:
- MANAGERS(ID_MNG, TEN, NAM_SINH)
- REPOSTER(ID_REPOSTER, TEN ,NAM_SINH, TO_CHUC)
- USER(ID_USER , ACCOUNT_NAME, PASSWORD , FACEBOOK_USER, EMAIL_USER )
- POST(ID_POST , TIEU_DE , NOI_DUNG , IMAGE , TAC_GIA ,LUOT_XEM,  XET_DUYET, NGUOI_DUYET, THOI_GIAN_DANG )
- SHARE(ID_SHARE, TIME_SHARE)
- COMMENT(ID_COMMENT , TIME_COMMENT, NOI_DUNG)

## Thiết kế ERD
![Báo điện tử ERD](https://scontent.fhan16-1.fna.fbcdn.net/v/t1.15752-9/381056760_285121790978831_1271942975210733334_n.png?_nc_cat=107&ccb=1-7&_nc_sid=ae9488&_nc_ohc=tOcO_m3UXQ4AX_9BXaF&_nc_ht=scontent.fhan16-1.fna&_nc_e2o=s&oh=03_AdTNg7YxSDWQrGHHI_zt0nqK7akx2aseEHC87vQcmLfI9g&oe=65349343)
