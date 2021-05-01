CREATE procedure [dbo].[SP_KT_GVDK]
  @MAMH nchar(5),
  @MALOP nchar(8),
  @LAN smallint
AS

IF exists(select * from dbo.GIAOVIEN_DANGKY where MAMH =@MAMH AND MALOP =@MALOP AND LAN= @LAN)
	raiserror ('Môn học này lớp này và lần thi này đã tồn tại, vui lòng nhập lại',16,1)