CREATE procedure [dbo].[SP_PhucHoiXoaMH]
  @MAMH nchar(8),
  @TENMH varchar(40)
AS
	--Bảng điểm
	 IF  exists(SELECT * FROM dbo.BANGDIEM WHERE MAMH = @MAMH)
		BEGIN
			RETURN 1
		END
	-- Bộ đề
	ELSE IF  exists(SELECT * FROM dbo.BODE WHERE MAMH = @MAMH)
		BEGIN
			RETURN 2
		END

	--Giảng viên đăng ký
	ELSE IF  exists(SELECT * FROM dbo.GIAOVIEN_DANGKY WHERE MAMH = @MAMH)
		BEGIN
			RETURN 3
		END

	-- Xóa môn học
	ELSE 
		BEGIN
			DELETE dbo.MONHOC where MAMH=@MAMH
			RETURN 0;
		END