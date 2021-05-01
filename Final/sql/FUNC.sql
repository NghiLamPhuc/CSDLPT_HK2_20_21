CREATE FUNCTION [dbo].[checkMH](@maMH nchar(5))

RETURNS VARCHAR(50) 
AS

BEGIN



DECLARE @checked VARCHAR(50);
DECLARE  @len INT = 0;

 SELECT @len = COUNT(*) FROM BANGDIEM WHERE BANGDIEM.DIEM IS NOT NULL AND BANGDIEM.MAMH=@maMH;

IF @len > 0
 SET @checked = 'X';
 ELSE
 SET @checked = '';

RETURN @checked;

END;
GO
/****** Object:  UserDefinedFunction [dbo].[Num2Text]    Script Date: 12/7/2019 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[Num2Text](@Number float)
RETURNS nvarchar(4000) AS 
BEGIN
	DECLARE @sNumber nvarchar(4000)
	DECLARE @Return	nvarchar(4000)
	DECLARE @mLen int
	DECLARE @i int

	DECLARE @mDigit char(1)
	DECLARE @mTemp nvarchar(4000)
	DECLARE @mNumText nvarchar(4000)

	SELECT @sNumber=LTRIM(cast(@Number as nvarchar))
	SELECT @mLen = Len(@sNumber)

	if @mLen =2
		BEGIN
			SELECT @Return = N'Mười'
			RETURN @Return
		END
	SELECT @i=1
	SELECT @mTemp=''

	WHILE @i <= @mLen
		BEGIN

		SELECT @mDigit=SUBSTRING(@sNumber, @i, 1)

		IF @mDigit='0' SELECT @mNumText=N'không'
		ELSE
			BEGIN
			IF @mDigit='1' SELECT @mNumText=N'một'
			ELSE
			IF @mDigit='2' SELECT @mNumText=N'hai'
			ELSE
			IF @mDigit='3' SELECT @mNumText=N'ba'
			ELSE
			IF @mDigit='4' SELECT @mNumText=N'bốn'
			ELSE
			IF @mDigit='5' SELECT @mNumText=N'năm'
			ELSE
			IF @mDigit='6' SELECT @mNumText=N'sáu'
			ELSE
			IF @mDigit='7' SELECT @mNumText=N'bảy'
			ELSE
			IF @mDigit='8' SELECT @mNumText=N'tám'
			ELSE
			IF @mDigit='9' SELECT @mNumText=N'chín'
			ELSE 
			IF @mDigit='.' SELECT @mNumText=N'phẩy'
			END

		SELECT @mTemp = @mTemp + ' ' + @mNumText

		IF (@mLen = @i) BREAK
		
		IF @i =3
			SELECT @mTemp = @mTemp + N' mươi'
		SELECT @i=@i+1
		END


	SELECT @mTemp = Replace(@mTemp, N'không mươi ', N'không ')

	SELECT @mTemp = Replace(@mTemp, N'một mươi', N'mười')

	SELECT @mTemp = Replace(@mTemp, N'mươi năm', N'mươi lăm')

	--'Fix trường hợp x1, x>=2

	SELECT @mTemp = Replace(@mTemp, N'mươi một', N'mươi mốt')

	--'Fix trường hợp x15

	SELECT @mTemp = Replace(@mTemp, N'mười năm', N'mười lăm')

	--'Bỏ ký tự space

	SELECT @mTemp = LTrim(@mTemp)

	--'Ucase ký tự đầu tiên

	SELECT @Return=UPPER(Left(@mTemp, 1)) + SUBSTRING(@mTemp,2, 4000)

	RETURN @Return
END