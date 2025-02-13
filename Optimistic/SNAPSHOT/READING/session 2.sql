
begin tran
set transaction isolation level snapshot

SELECT * FROM [dbo].[Cars] where CarID = 3;

 commit;


