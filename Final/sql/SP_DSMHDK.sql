CREATE PROCEDURE [dbo].[SP_DSMHDK]
@maLop nchar(8)
AS
BEGIN
		SELECT DISTINCT  MONHOC.MAMH, MONHOC.TENMH FROM GIAOVIEN_DANGKY GVDK INNER JOIN MONHOC ON  (GVDK.MALOP=@maLop AND GVDK.MAMH=MONHOC.MAMH)
END