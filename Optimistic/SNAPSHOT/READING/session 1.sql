begin tran
--set transaction isolation level snapshot
  update
   [dbo].[Cars] set CarName = 'test4' where CarID = 3;

 commit;


