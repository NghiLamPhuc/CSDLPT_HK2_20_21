CREATE procedure [dbo].[SP_KT_MONHOC_TON_TAI]
  @MAMH nchar(8),
  @TENMH varchar(40)
AS
	If  exists(SELECT MAMH FROM  dbo.MONHOC WHERE MAMH = @MAMH)
   		raiserror ('Mã môn học đã tồn tại, vui lòng nhập mã khác',16,1)

	If  exists(SELECT TENMH FROM  dbo.MONHOC WHERE TENMH = @TENMH)
		raiserror ('Tên môn học đã tồn tại, vui lòng nhập tên khác',16,1)