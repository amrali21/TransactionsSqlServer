
begin tran
set transaction isolation level snapshot

update
   [dbo].[Cars] set CarName = 'CAR6' where CarID = 3;

 commit;


 /* this isolation level cannot update a record that's locked by another transaction. it will wait for the other transaction to commit then throw an error.
