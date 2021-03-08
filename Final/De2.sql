--CREATE DATABASE QuanLyThiTracNghiem
USE QuanLyThiTracNghiem
--drop database QuanLyThiTracNghiem

--CREATE TABLE CoSo(
--MACS nchar(3) primary key, TENCS nvarchar(40) unique, DIACHI nvarchar(100))
--INSERT INTO CoSo VALUES ('CS1', 'Co so 1', 'Dia chi 1: Số 19 Nguyễn Hữu Thọ, P. Tân Phong, Q. 7, Tp. Hồ Chí Minh')
--update CoSo
--set DIACHI = N'Địa chỉ 1: Số 19 Nguyễn Hữu Thọ, P. Tân Phong, Q. 7, Tp. Hồ Chí Minh',
--TENCS = N'Cơ sở 1'
--where MACS = 'CS1'
--INSERT INTO CoSo VALUES ('CS2', N'Cơ sở 2', N'Địa chỉ 2: 22 Nguyễn Đình Chiểu, Vĩnh Phước, Thành phố Nha Trang')
--select * from CoSo

----Mã khoa: KH:STT(01):4_ký_tự_tên
--delete Khoa
--CREATE TABLE Khoa(
--MAKH nchar(8) primary key, TENKH nvarchar(40) unique,
--MACS nchar(3) foreign key references CoSo(MACS))
--INSERT INTO Khoa VALUES ('KH01CNTT', N'Công nghệ thông tin', 'CS1')
--INSERT INTO Khoa VALUES ('KH02DUOC', N'Dược', 'CS1')
--INSERT INTO Khoa VALUES ('KH03DVDT', N'Điện - Điện tử', 'CS2')
--INSERT INTO Khoa VALUES ('KH04KETO', N'Kế toán', 'CS2')

--delete Lop
--alter table SinhVien drop constraint FK__SinhVien__MALOP__35BCFE0A
--CREATE TABLE Lop(
--MALOP char(8) primary key, TENLOP varchar(40) unique,
--MAKH nchar(8) foreign key references Khoa(MAKH))
--INSERT INTO Lop VALUES ('CNTT2001', N'Lớp CNTT 1', 'KH01CNTT')
--INSERT INTO Lop VALUES ('CNTT2002', N'Lớp CNTT 2', 'KH01CNTT')
--INSERT INTO Lop VALUES ('DUOC2001', N'Lớp Dược 1', 'KH02DUOC')
--INSERT INTO Lop VALUES ('DUOC2002', N'Lớp Dược 2', 'KH02DUOC')
--INSERT INTO Lop VALUES ('DVDT2001', N'Lớp Điện - Điện tử 1', 'KH03DVDT')
--INSERT INTO Lop VALUES ('DVDT2002', N'Lớp Điện - Điện tử 2', 'KH03DVDT')
--INSERT INTO Lop VALUES ('KETO2001', N'Lớp Kế toán 1', N'KH04KETO')
--INSERT INTO Lop VALUES ('KETO2002', N'Lớp Kế toán 2', 'KH04KETO')
--ALTER TABLE Lop DROP CONSTRAINT [UQ__Lop__E100BDB733FCEF4A]
--ALTER TABLE Lop
--ALTER COLUMN TENLOP nvarchar(40)
--select * from Lop


--CREATE TABLE MonHoc(MAMH char(5) primary key, TENMH varchar(40) unique)
--INSERT INTO MonHoc VALUES (N'CSPT ', N'Cơ sở dữ liệu phân tán')
--INSERT INTO MonHoc VALUES (N'CTDL ', N'Cấu trúc dữ liệu')
--INSERT INTO MonHoc VALUES (N'TNHD ', N'Thí nghiệm hóa dược')
--INSERT INTO MonHoc VALUES (N'BC1  ', N'Bào chế 1')
--INSERT INTO MonHoc VALUES (N'KTCT ', N'Kỹ thuật chế tạo')
--INSERT INTO MonHoc VALUES (N'DSKTD', N'Dung sai và kỹ thuật đo')
--INSERT INTO MonHoc VALUES (N'NLKT ', N'Nguyên lý kế toán')
--INSERT INTO MonHoc VALUES (N'KTQT ', N'Kế toán quản trị')


--alter table SinhVien
--alter column DIACHI nvarchar(40)
--CREATE TABLE SinhVien(
--MASV char(8) primary key, HO nvarchar(40), TEN nvarchar(10), NGAYSINH datetime,
--DIACHI varchar(40), MALOP char(8) foreign key references Lop(MALOP),
--)
--INSERT INTO SinhVien values ('01200001', N'Lâm Phúc', N'Nghi', '03/31/1996', N'Lê Văn Lương, phường Tân Phong, quận 7', 'CNTT2001')
--INSERT INTO SinhVien values ('01200002', N'Đậu Minh', N'Lượng', '01/01/1996', N'Nguyễn Thị Thập, p Tân Phong, quận 7', 'CNTT2001')
--INSERT INTO SinhVien values ('01200003', N'Lê Văn', N'Một', '02/02/1996', N'Nguyễn Văn Linh, p Tân Phú, quận 7', 'CNTT2002')
--INSERT INTO SinhVien values ('01200004', N'Lê Văn', N'Hai', '03/03/1996', N'Nguyễn Thị Định, p An Phú, quận 2', 'CNTT2002')

--INSERT INTO SinhVien values ('02200001', N'Nguyễn Văn', N'Ba', '04/04/1996', N'Nguyễn Thị Định, phường An Phú, quận 2', 'DUOC2001')
--INSERT INTO SinhVien values ('02200002', N'Lê Thị', N'Bốn', '05/05/1996', N'Nguyễn Thị Định, phường An Phú, quận 2', 'DUOC2001')
--INSERT INTO SinhVien values ('02200003', N'Đoàn Văn', N'Năm', '06/06/1998', N'Nguyễn Văn Linh, phường Tân Phú, quận 7', 'DUOC2002')
--INSERT INTO SinhVien values ('02200004', N'Lưu Văn', N'Sáu', '07/07/1999', N'Nguyễn Thị Định, phường An Phú, quận 2', 'DUOC2002')

--INSERT INTO SinhVien values ('03200001', N'Nguyễn Thị', N'Bảy', '08/08/1997', N'106 Tên Lửa, p An Lạc A, quận Bình Tân', 'DVDT2001')
--INSERT INTO SinhVien values ('03200002', N'Nguyễn Nhựt', N'Tám', '09/09/2000', N'Kinh Dương Vương, p An Lạc, q Bình Tân', 'DVDT2001')
--INSERT INTO SinhVien values ('03200003', N'Nguyễn Thị', N'Chín', '01/03/1999', N'Kinh Dương Vương, p An Lạc, q Bình Tân', 'DVDT2002')
--INSERT INTO SinhVien values ('03200004', N'Lê Văn', N'Mười', '02/05/1998', N'Nguyễn Thị Định, phường An Phú, quận 2', 'DVDT2002')

--INSERT INTO SinhVien values ('04200001', N'Lê Mười', N'Một', '03/03/1998', N'Nguyễn Thị Định, p An Phú, quận 2', 'KETO2001')
--INSERT INTO SinhVien values ('04200002', N'Lê Mười', N'Hai', '02/10/1999', N'Nguyễn Thị Định, p An Phú, quận 2', 'KETO2001')
--INSERT INTO SinhVien values ('04200003', N'Lê Mười', N'Ba', '04/03/1999', N'Nguyễn Thị Định, p An Phú, quận 2', 'KETO2002')
--INSERT INTO SinhVien values ('04200004', N'Lê Mười', N'Bốn', '03/04/1999', N'Nguyễn Thị Định, p An Phú, quận 2', 'KETO2002')

--select * from SinhVien


--CREATE TABLE GiaoVien(
--MAGV char(8) primary key, HO nvarchar(40), TEN nvarchar(10), HOCVI nvarchar(40),
--MAKH nchar(8) foreign key references Khoa(MAKH))
--INSERT INTO GiaoVien VALUES ('GV010001', N'Thái Trà', N'My', N'Tiến sỹ', 'KH01CNTT')
--INSERT INTO GiaoVien VALUES ('GV010002', N'Phạm Văn', N'Huy', N'Tiến sỹ', 'KH01CNTT')
--INSERT INTO GiaoVien VALUES ('GV010003', N'Lê Văn', N'Vang', N'Thạc sỹ', 'KH01CNTT')
--INSERT INTO GiaoVien VALUES ('GV010004', N'Đỗ Quốc', N'Hưng', N'Cử nhân', 'KH01CNTT')

--INSERT INTO GiaoVien VALUES ('GV020001', N'Nguyễn Minh', N'Đức', N'Tiến sỹ', 'KH02DUOC')
--INSERT INTO GiaoVien VALUES ('GV020002', N'Nguyễn Trường', N'Huy', N'Tiến sỹ', 'KH02DUOC')
--INSERT INTO GiaoVien VALUES ('GV020003', N'Vũ Huỳnh Kim', N'Long', N'Thạc sỹ', 'KH02DUOC')
--INSERT INTO GiaoVien VALUES ('GV020004', N'Nguyễn Văn', N'Thắng', N'Thạc sỹ', 'KH02DUOC')

--INSERT INTO GiaoVien VALUES ('GV030001', N'Đồng Sĩ Thiên', N'Châu', N'Tiến sỹ', 'KH03DVDT')
--INSERT INTO GiaoVien VALUES ('GV030002', N'Võ Hoàng', N'Duy', N'Tiến sỹ', 'KH03DVDT')
--INSERT INTO GiaoVien VALUES ('GV030003', N'Nguyễn Quang', N'Dũng', N'Thạc sỹ', 'KH03DVDT')
--INSERT INTO GiaoVien VALUES ('GV030004', N'Phan Tấn', N'Phát', N'Thạc sỹ', 'KH03DVDT')

--INSERT INTO GiaoVien VALUES ('GV040001', N'Lê Thị Mỹ', N'Hạnh', N'Tiến sỹ', 'KH04KETO')
--INSERT INTO GiaoVien VALUES ('GV040002', N'Trần Đỗ Thùy', N'Linh', N'Thạc sỹ', 'KH04KETO')
--INSERT INTO GiaoVien VALUES ('GV040003', N'Tăng Trí', N'Hùng', N'Tiến sỹ', 'KH04KETO')
--INSERT INTO GiaoVien VALUES ('GV040004', N'Trần Thị Kim', N'Phượng', N'Thạc sỹ', 'KH04KETO')
--delete GiaoVien
--SELECT * FROM GiaoVien

--drop table GiaoVien_DangKy
--CREATE TABLE GiaoVien_DangKy(
--MAGV char(8) foreign key references GiaoVien(MAGV) NOT NULL,
--MALOP char(8) foreign key references Lop(MALOP) NOT NULL,
--MAMH char(5) foreign key references MonHoc(MAMH) NOT NULL,
--TRINHDO char(1) CHECK (TRINHDO = 'A' OR TRINHDO = 'B' OR TRINHDO = 'C'),
--NGAYTHI datetime DEFAULT GETDATE(),
--LAN smallint NOT NULL CHECK (LAN >= 1 AND LAN <= 2), 
--SOCAUTHI smallint CHECK (SOCAUTHI >= 10 AND SOCAUTHI <= 100),
--THOIGIAN smallint CHECK (THOIGIAN >= 15 AND THOIGIAN <= 60),
--PRIMARY KEY (MALOP, MAMH, LAN))

--INSERT INTO GiaoVien_DangKy VALUES ('GV020001', 'CNTT2001', 'CSPT', 'A', '01/01/2021', 1, 10, 15)

--select * from GiaoVien_DangKy


--DROP TABLE BoDe
--CREATE TABLE BoDe(
--MAMH char(5) foreign key references MonHoc(MAMH),
--CAUHOI int primary key,
--TRINHDO char(1) CHECK (TRINHDO = 'A' OR TRINHDO = 'B' OR TRINHDO = 'C'),
--NOIDUNG text,
--A nvarchar(30),
--B nvarchar(30),
--C nvarchar(30),
--D nvarchar(30),
--DAPAN char(1) CHECK (DAPAN = 'A' OR DAPAN = 'B' OR DAPAN = 'C' OR DAPAN = 'D'),
--MAGV char(8) foreign key references GiaoVien(MAGV))

--INSERT INTO BoDe VALUES ('CSPT', 10, 'A', 'Noi dung 1', 'Dap an A', 'Dap an B', 'Dap an C', 'Dap an D', 'A', 'GV010001')
--SELECT * FROM BoDe



--DROP TABLE BangDiem
--CREATE TABLE BangDiem(
--MASV char(8) foreign key references SinhVien(MASV),
--MAMH char(5) foreign key references MonHoc(MAMH),
--LAN smallint CHECK (LAN >= 1 AND LAN <= 2),
--NGAYTHI datetime DEFAULT GETDATE(),
--DIEM float CHECK (DIEM >= 0 AND DIEM <= 10),
--BAITHI text,
--PRIMARY KEY (MASV, MAMH, LAN))

--INSERT INTO BangDiem VALUES ('01200001', 'CSPT', 1, '01/01/2021', 10.0, null)
--SELECT * FROM BangDiem

