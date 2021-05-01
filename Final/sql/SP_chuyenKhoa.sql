CREATE PROCEDURE [dbo].[sp_chuyenKhoa](@MAKH nchar(8),
							   @MAGV nchar(8))
    AS
    BEGIN
        UPDATE dbo.GIAOVIEN 
		SET MAKH = @MAKH
		WHERE MAGV = @MAGV
	IF  exists(SELECT * from  dbo.GIAOVIEN where MAGV = @MAGV AND MAKH = @MAKH)
   		raiserror ('Chuyển khoa thành công',16,1)
	ELSE
        raiserror ('Chuyển khoa thất bại',16,1)
    END;