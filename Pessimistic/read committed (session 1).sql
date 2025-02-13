begin tran
set transaction isolation level READ COMMITTED --REPEATABLE READ --read COMMITTED;

update Cars set CarName = 'test2' where CarId = 8;
select * from Cars where CarId = 4;

commit;