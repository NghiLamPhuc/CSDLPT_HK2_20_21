CREATE procedure [dbo].[SP_KTSV_DANGNHAP]
  @MASV  nchar(8)
AS
	IF exists(select masv from dbo.sinhvien where masv =@MASV)
		SELECT * FROM dbo.SINHVIEN where masv =@MASV
	else
		raiserror ('Mã Sinh Viên không tồn tại trong danh sách, vui lòng kiểm tra lại',16,1)

