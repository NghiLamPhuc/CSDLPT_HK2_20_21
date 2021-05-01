CREATE PROCEDURE [dbo].[SP_DSLanThi]
@maSV nchar(8),
@maMH nchar(5)

AS 
	BEGIN
		SELECT LAN FROM BANGDIEM WHERE BANGDIEM.MASV = @maSV AND BANGDIEM.MAMH =@maMH AND BANGDIEM.DIEM IS NULL
	END;