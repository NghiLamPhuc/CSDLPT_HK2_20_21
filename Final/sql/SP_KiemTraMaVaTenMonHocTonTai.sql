CREATE procedure SP_KiemTraMaMonHocTonTai
  @MAMH nchar(8),
  @TENMH nvarchar(40)
AS
	If  exists(SELECT MAMH FROM  dbo.MonHoc WHERE MAMH = @MAMH)
   		raiserror ('Mã môn học đã tồn tại, vui lòng nhập mã khác!',16,1)

	If  exists(SELECT TENMH FROM  dbo.MonHoc WHERE TENMH = @TENMH)
		raiserror ('Tên môn học đã tồn tại, vui lòng nhập tên khác!',16,1)
