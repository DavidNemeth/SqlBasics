if object_id('getnumorders') is not null
	drop function getnumorders

go

create function getNumOrders(@customerID nchar(5))
returns table
as
	return select * 
	from orders
	where CustomerID = @customerID

go

select *
from getNumOrders ('alfki')