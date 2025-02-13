ALTER DATABASE TestTransactions SET ALLOW_SNAPSHOT_ISOLATION ON;

begin tran
set transaction isolation level snapshot

declare @Balance float;
declare @UserId INT;

set @UserId = 1;

update Accounts set balance = balance - 1000 where UserId = @UserId;

set @Balance = (select balance from Accounts where UserId = @UserId)

if(@Balance < 0.0)
begin
  rollback;
  RAISERROR('balance cannot be negativ', 16,1)
end

commit;
