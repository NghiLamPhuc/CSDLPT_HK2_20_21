CREATE procedure [dbo].[SP_KT_MA_BO_DE]
  @MACAUHOI INT
AS

IF exists(select * from dbo.BODE where CAUHOI = @MACAUHOI)
	raiserror ('Mã câu hỏi đã tồn tại, vui lòng nhập lại',16,1)