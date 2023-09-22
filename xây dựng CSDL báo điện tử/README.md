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
![Báo điện tử ERD](https://drive.google.com/file/d/1A1Gk8FpIwYNVXo_ujO5Wn6ZgdoK5PvL8/view?usp=sharing)
