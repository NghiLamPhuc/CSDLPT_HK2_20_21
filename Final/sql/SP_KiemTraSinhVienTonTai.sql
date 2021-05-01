CREATE procedure SP_KiemTraSinhVienTonTai
  @MASV nchar(8)
AS
IF exists(select MASV from LINK.QuanLyThiTracNghiem_1.dbo.SinhVien where MASV = @MASV)
		raiserror ('Mã Sinh Viên đã tồn tại, vui lòng nhập lại!',16,1)
