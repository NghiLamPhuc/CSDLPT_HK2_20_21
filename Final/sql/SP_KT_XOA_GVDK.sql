CREATE procedure [dbo].[SP_KT_XOA_GVDK]
  @MAMH nchar(5),
  @MALOP nchar(8),
  @LAN smallint
AS
BEGIN
	
	SELECT BANGDIEM.MASV INTO ##tb_tamSV FROM dbo.SINHVIEN JOIN dbo.BANGDIEM ON BANGDIEM.MASV = SINHVIEN.MASV WHERE LAN = @LAN AND MAMH =@MAMH

	SELECT dbo.SINHVIEN.MALOP INTO ##tamLop FROM ##tb_tamSV JOIN dbo.SINHVIEN ON SINHVIEN.MASV = ##tb_tamSV.MASV GROUP BY MALOP

	IF exists(select * FROM ##tamLop WHERE MALOP = @MALOP)
		raiserror ('Thông tin của giảng viên đăng ký này đã tồn tại trong bảng bảng điểm, Không thể xóa',16,1)

	DROP TABLE ##tb_tamSV;
	DROP TABLE ##tamLop;
END