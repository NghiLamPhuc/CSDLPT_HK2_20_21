CREATE procedure [dbo].[SP_KT_LOP_TONTAI]
  @MALOP nchar(8),
  @TenLop nvarchar(50)
AS

IF exists(select MALOP from LINK2.TN.dbo.LOP where MALOP =@MALOP)
	raiserror ('Mã lớp đã tồn tại, vui lòng nhập lại',16,1)

ELSE IF exists(SELECT TENLOP from LINK2.TN.dbo.LOP where TENLOP =@TenLop)
	raiserror ('Tên lớp đã tồn tại, vui lòng nhập lại',16,1)