CREATE PROCEDURE [dbo].[SP_DSLanThiDK]
@maMH nchar(5),
@maLop nchar(8)
AS
BEGIN
		SELECT DISTINCT  GVDK.LAN FROM GIAOVIEN_DANGKY GVDK INNER JOIN MONHOC ON  (GVDK.MALOP=@maLop AND GVDK.MAMH=@maMH AND GVDK.MAMH=MONHOC.MAMH)
END