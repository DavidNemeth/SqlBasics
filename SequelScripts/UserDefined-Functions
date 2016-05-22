--drop function getNumOrders

create function getNumOrders(@customerID nchar(5))
returns int
as
begin
	declare @ret int
		select @ret = count(*)
		from orders
		where CustomerID = @customerID
	return @ret
end

go

declare @numOrders int
exec @numOrders = getNumOrders 'alfki'
print @numOrders
