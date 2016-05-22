use NORTHWND

declare @count int = 0
declare @max int

select @max = MAX(orderid) from orders
select @count = min(orderid) from Orders

while (@count < @max)
begin
	print @count
	set @count = @count + 1
end
