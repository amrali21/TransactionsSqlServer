begin tran
set transaction isolation level READ UNCOMMITTED --REPEATABLE READ --read COMMITTED;

select * from Cars where CarId = 3;
select * from Cars where CarId = 4;

commit;