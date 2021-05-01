CREATE procedure [dbo].[SP_PhucHoiSuaMH]
  @MAMH nchar(8),
  @TENMH varchar(40)
AS
	-- Trùng tên môn học
	 IF  exists(SELECT TENMH FROM  dbo.MONHOC WHERE TENMH = @TENMH AND MAMH!= @MAMH)
		BEGIN
			RETURN 2
		END
	--  Sửa môn học
	ELSE 
		BEGIN
			UPDATE dbo.MONHOC SET TENMH = @TENMH where MAMH=@MAMH
			RETURN 0;
		END