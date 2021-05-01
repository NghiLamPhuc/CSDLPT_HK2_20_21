CREATE procedure SP_KiemTraLopTonTai
  @MALOP nchar(8),
  @TenLop nvarchar(40)
AS

IF exists(select MALOP from LINK.QuanLyThiTracNghiem_1.dbo.LOP where MALOP = @MALOP)
	raiserror ('Mã lớp đã tồn tại, vui lòng nhập lại!',16,1)

ELSE IF exists(SELECT TENLOP from LINK.QuanLyThiTracNghiem_1.dbo.LOP where TENLOP = @TenLop)
	raiserror ('Tên lớp đã tồn tại, vui lòng nhập lại!',16,1)
