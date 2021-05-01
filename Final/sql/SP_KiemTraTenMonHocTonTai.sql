USE [QuanLyThiTracNghiem_1]
GO
/****** Object:  StoredProcedure [dbo].[SP_KiemTraMonHocTonTai]    Script Date: 4/18/2021 3:05:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_KiemTraMonHocTonTai]
  @MAMH nchar(8),
  @TENMH nvarchar(40)
AS
	IF  exists(SELECT TENMH FROM LINK.QuanLyThiTracNghiem_1.dbo.MonHoc WHERE TENMH = @TENMH AND MAMH!= @MAMH)
		raiserror ('Tên môn học đã tồn tại, vui lòng nhập tên khác!',16,1)
