
begin tran

update
   [dbo].[Cars] set CarName = 'test6' where CarID = 3;

 commit;
