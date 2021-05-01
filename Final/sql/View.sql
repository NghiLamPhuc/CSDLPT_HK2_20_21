CREATE VIEW V_DanhSachCoSo
AS
SELECT        dbo.COSO.MACS, PUBS.description AS TENCS, SUBS.subscriber_server AS TENSERVER
FROM            dbo.COSO INNER JOIN
                         dbo.sysmergepublications AS PUBS INNER JOIN
                         dbo.sysmergesubscriptions AS SUBS ON PUBS.pubid = SUBS.pubid AND PUBS.publisher <> SUBS.subscriber_server ON dbo.COSO.TENCS = PUBS.description
WHERE        (PUBS.description <> N'TRACUU')


--CREATE VIEW [dbo].[V_DSLOP]
--AS
--SELECT        MALOP, TENLOP, MAKH
--FROM            dbo.LOP
