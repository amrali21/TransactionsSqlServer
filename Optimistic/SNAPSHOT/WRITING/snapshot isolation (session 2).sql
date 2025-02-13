begin tran
set transaction isolation level snapshot

/*SELECT *
  FROM [dbo].[Cars] where CarID = 3;
  */
  
  update
   [dbo].[Cars] set CarName = 'test8' where CarID = 3;

 commit;


