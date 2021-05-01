CREATE PROC [dbo].[SP_KTLANTHI]
@MASV CHAR(8), @MAMH CHAR(5), @LAN INT
AS

IF EXISTS (SELECT * FROM BANGDIEM WHERE MASV= @MASV AND MAMH =@MAMH AND LAN =@LAN)
	raiserror ('Sinh viên đã thi lần này, không được thi lại',16,1)