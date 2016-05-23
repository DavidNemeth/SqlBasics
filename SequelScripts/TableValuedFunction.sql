use NORTHWND

if object_id('getnumorders') is not null
	drop function getNumOrders

go

create function getNumOrders(@customerID nchar(5))
returns @myTable table(TheOrderID int, OrderDate datetime)
as
begin
	insert into @myTable
		   select orderid, orderdate
		   from Orders
		   where CustomerID = @customerid
	return
end

go

select *
from getNumOrders('alfki')