-- here you need to activate option to allow read committed snapshot first
begin tran
set transaction isolation level read committed

select *
   from [dbo].[Cars] where CarID = 3;

 commit;

