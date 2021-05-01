CREATE PROC SP_TaoTaiKhoan
	@LGNAME VARCHAR(50),
	@PASS VARCHAR(50),
	@USERNAME VARCHAR(50),
	@ROLE VARCHAR(50)
AS
BEGIN
  DECLARE @RET INT
  EXEC @RET= SP_ADDLOGIN @LGNAME, @PASS,'QuanLyThiTracNghiem_1'                     

  IF (@RET =1)  -- LOGIN NAME BI TRUNG
     RETURN 1

  EXEC @RET= SP_GRANTDBACCESS @LGNAME, @USERNAME
  IF (@RET =1)  -- USER  NAME BI TRUNG

  BEGIN
       EXEC SP_DROPLOGIN @LGNAME
       RETURN 2
  END

  EXEC sp_addrolemember @ROLE, @USERNAME

  IF @ROLE= 'TRUONG'  OR @ROLE ='COSO'
	BEGIN
		EXEC sp_addsrvrolemember @LGNAME, 'sysadmin'
		EXEC sp_addsrvrolemember @LGNAME, 'SecurityAdmin'
		EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
	END

  ELSE IF @ROLE= 'GIAOVIEN'
	BEGIN  
		EXEC sp_addsrvrolemember @LGNAME, 'ProcessAdmin'
	END

	RETURN 0  -- THANH CONG
END