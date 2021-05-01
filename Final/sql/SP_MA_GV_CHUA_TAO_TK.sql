CREATE procedure [dbo].[SP_MA_GV_CHUA_TAO_TK]
AS
BEGIN
	SELECT name as MAGV,
		   type_desc as type
		   INTO  ##Users
	FROM sys.database_principals
	WHERE type not in ('A', 'G', 'R', 'X')
		  and sid is not null
		  and name != 'guest'
	ORDER BY MAGV;

	SELECT GIAOVIEN.MAGV , HO +' '+TEN AS TEN
		FROM dbo.GIAOVIEN LEFT JOIN ##Users 
			ON GIAOVIEN.MAGV =##Users.MAGV
		where ##Users.MAGV IS NULL; 
		--GROUP BY dbo.GIAOVIEN.MAGV

	DROP TABLE ##Users
END