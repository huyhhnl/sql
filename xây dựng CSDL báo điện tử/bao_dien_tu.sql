use bao_dien_tu;
-- Truy vấn tất cả bảng POST và MANAGERS
select * from post;
select * from managers;
-- Trong bảng POST, truy vấn những bài viết có LUOT_XEM lớn hơn 20.
select * from post where luot_xem > 20;
/*Trong bảng POST, viết truy vấn những bài viết đã được xét duyệt và sắp xếp kết quả theo thứ tự bảng chữ cái của
 cột tiêu đề.*/
 select * from post where xet_duyet = 1 order by tieu_de;
 -- Viết truy vấn để lấy tên các acount_name của user comment vào POST: 
 select 
	nguoi_comment,
    account_name,
    noi_dung
from comment
join users on nguoi_comment = id_user;
-- Viết truy vấn để tìm nội dung bài viết bắt đầu bằng chữ ‘n’
select * from post where noi_dung like 'n%';
-- Tạo VIEW để lấy ra những bài viết đã được duyệt bởi những người quản lý.
create view postview as select * from post where xet_duyet = 1;
select * from postview;
-- Tạo VIEW để lấy ra các comment của user.
create view commentview as select * from comment;
select * from commentview;
-- Tạo thủ tục để lấy được những bài viết đã được duyệt
delimiter $$
create procedure bai_viet_da_duyet()
begin
	select * from post where xet_duyet = 1;
    
end$$
delimiter ;
call bai_viet_da_duyet();
-- Tạo thủ tục để lấy những bài viết chưa được duyệt trước ngày 01-02-2018.
delimiter $$
create procedure bai_viet_chua_duyet()
begin
	select * from post where xet_duyet = 0 and thoi_gian_dang < cast('2018-02-01' as datetime);
end$$
delimiter ;
call bai_viet_chua_duyet();
drop procedure bai_viet_chua_duyet;
-- Tạo function để tính số tháng mà các bài viết đã đăng kể từ thời điểm 01-01-2019 trong bảng POST.
delimiter $$
CREATE FUNCTION SO_THANG_DA_DANG(THOI_GIAN_DANG TIMESTAMP) RETURNS INT DETERMINISTIC 
BEGIN
  DECLARE SO_THANG INT;
  SET SO_THANG = TIMESTAMPDIFF(MONTH,'2019-01-01',THOI_GIAN_DANG);
  RETURN SO_THANG;
END$$
delimiter ;
SELECT 
  SO_THANG_DA_DANG(THOI_GIAN_DANG) AS SO_THANG_DA_DANG
FROM POST;
drop function SO_THANG_DA_DANG;

-- Đánh index cho cột
CREATE INDEX p_index ON post(luot_xem) USING BTREE;
