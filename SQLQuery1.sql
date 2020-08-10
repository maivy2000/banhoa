--Create database BTLON
CREATE TABLE THANHVIEN
(
HOTEN NVARCHAR(200),
TKMAIL NVARCHAR(200),
MATKHAU NVARCHAR(200),
GIOITINH NVARCHAR(200),
DIENDAN NVARCHAR(200),
ODAU NVARCHAR(200),
DIACHI NVARCHAR(200),
)
CREATE TABLE HANGHOA
(
MAMH NVARCHAR(200),
TENMH NVARCHAR(200),
GIA NVARCHAR(200),
ANH NVARCHAR(200),
THONGTIN NVARCHAR(MAX),
SK NVARCHAR(200),
GIACU NVARCHAR(200),
MAPL NVARCHAR(200),
SOLUONG INT,
)
CREATE TABLE DANHGIA
(
MAMH NVARCHAR(200),
VOTE NVARCHAR(200),
DANHGIA NVARCHAR(200),
)
CREATE TABLE GIOHANG
(
MAMH NVARCHAR(200),
TENMH NVARCHAR(200),
GIA NVARCHAR(200),
ANH NVARCHAR(200),
SOLUONG NVARCHAR(200),
TONGTIEN NVARCHAR(200),
)
CREATE TABLE PHANLOAI
(
MAPL NVARCHAR(200),
TENPL NVARCHAR(200)
)
insert into PHANLOAI
values('L01',N'Flower'),
		('L02',N'Hoa Hồng Đỏ'),
		('L03',N'Hoa Hướng Dương')



INSERT INTO THANHVIEN
VALUES('THANH VY','thanhvyela@gmail.com','123456',N'Nữ',N'Bạn bè',N'TPHCM',N'839 Lũy Bán Bích P.Tân Thành, Quận Tân Phú')

INSERT INTO HANGHOA
VALUES('MH01',N'Cho Người Mình Yêu',N'860000','flower/a18-1-247x296.jpg',N'40 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-20%','960.000 đ','L01',3),
		('MH02',N'Hoa Hồng 25 Bông',N'660000','flower/a66-1-247x296.jpg',N'40 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-10%','760.000 đ','L01',4),
		('MH03',N'Hồng Cúc Yêu Thương',N'460000','flower/a25-1-247x296.jpg',N'40 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','HOT','560.000 đ','L01',5),
		('MH04',N'Tình Yêu Muôn Màu',N'560000','flower/a29-1-247x296.jpg',N'40 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-30%','660.000 đ','L01',6),
		('MH05',N'Hồng Kem Huyền Bí',N'460000','flower/a53-1-247x296.jpg',N'40 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-20%','660.000 đ','L01',7),
		('MH06',N'Hoa Hồng 30 Bông',N'460000','flower/a59-1-247x296.jpg',N'40 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-40%','560.000 đ','L01',8)
		
		
--MẶT HÀNG HOA HỒNG ĐỎ 
INSERT INTO HANGHOA
VALUES('MH10',N'Seven Ohara',N'399000','loaihoa_hongdo/a69-1-247x296.jpg',N'40 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-20%','400000','L02',5),
		('MH11',N'King Red Ohara',N'300000','loaihoa_hongdo/bo-88.jpg.300.jpg',N'20 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-20%','400000','L02',4),
		('MH12',N'Queen Red Ohara',N'399000','loaihoa_hongdo/moi-6.jpg.300.jpg',N'40 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','NEW','500000','L02',5),
		('MH13',N'Hoa Hồng 25 Bông',N'399000','loaihoa_hongdo/moi-10.jpg.300.jpg',N'30 Hồng đỏ,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','HOT','400000','L02',7),
		('MH14',N'Red Rose Wicky',N'599000','loaihoa_hongdo/moi-19.jpg.300.jpg',N'20 Hồng đỏ,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','NEW','700000','L02',8),
		('MH15',N'Hoa Hồng Đỏ',N'600000','loaihoa_hongdo/moi-49000.jpg.300.jpg',N'35 Hồng đỏ,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','HOT','750000','L02',8)
--MẶT HÀNG HOA HƯỚNG DƯƠNG
INSERT INTO HANGHOA
VALUES('MH16',N'Hạnh Phúc Sớm Mai',N'359000','loaihoa_huongduong/gio-35.jpg.300.jpg',N'6 Hướng Dương,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-20%','400000','L03',3),
		('MH17',N'Hướng Dương Lan Vàng',N'300000','loaihoa_huongduong/friend.jpg.300.jpg',N'9 Hồng Kem,3 Hướng Dương,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','-20%','400000','L03',2),
		('MH18',N'Hướng Dương Cúc',N'399000','loaihoa_huongduong/bo-97.jpg.300.jpg',N'9 Hồng Kem,3 Hướng Dương,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','NEW','500000','L03',5),
		('MH19',N'Hoa Hướng Dương 6 Hoa',N'399000','loaihoa_huongduong/bo-93.jpg.300.jpg',N'9 Hồng Kem,3 Hướng Dương,Bi trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc)','HOT','400000','L03',3),
		('MH20',N'Dành Cho Em',N'599000','loaihoa_huongduong/bo-23.jpg.300.jpg',N'6 Hướng Dương,Bi Trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc) ','NEW','700000','L03',7),
		('MH21',N'Mặt Trời Diệu Êm',N'600000','loaihoa_huongduong/bo-11-jpg.jpg.300.jpg',N'9 Hồng Kem,3 Hướng Dương,Bi Trắng,Lá và phụ liệu,Nơ, giấy lụa( Hàn Quốc) ','HOT','750000','L03',5)

SELECT * FROM HANGHOA
