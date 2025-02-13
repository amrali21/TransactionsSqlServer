begin tran
set transaction isolation level READ COMMITTED /*REPEATABLE READ*/ --read COMMITTED;

--update Cars set CarName = 'test' where CarId = 3;
select * from Cars where CarId = 8;


commit;