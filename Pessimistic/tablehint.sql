
begin tran
--set transaction isolation level snapshot

SELECT * FROM [dbo].[Cars] with (XLOCK) where CarID = 3;

 commit;
