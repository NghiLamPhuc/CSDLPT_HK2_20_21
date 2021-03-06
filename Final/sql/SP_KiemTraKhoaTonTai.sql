USE [QuanLyThiTracNghiem_1]
GO
/****** Object:  StoredProcedure [dbo].[SP_KiemTraKhoaTonTai]    Script Date: 4/18/2021 1:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[SP_KiemTraKhoaTonTai]
  @MAKH nchar(8),
  @TENKH nvarchar(40)
AS

BEGIN
	IF exists(select MAKH from LINK.QuanLyThiTracNghiem_1.dbo.Khoa where MAKH = @MAKH)
		raiserror ('Mã khoa đã tồn tại, vui lòng đặt mã khác!',16,1)

	IF exists(select TENKH from LINK.QuanLyThiTracNghiem_1.dbo.Khoa where TENKH = @TENKH)
		raiserror ('Tên khoa đã tồn tại, vui lòng đặt tên khác!',16,1)
END
