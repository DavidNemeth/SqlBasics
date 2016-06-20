
--Create
Create Proc spGetOrdersByYear
@year nvarchar(20)
as
begin
	select * from Orders
	where YEAR(OrderDate) = @year
end

--Alter
Alter Proc spGetOrdersByYear
@year nvarchar(20)
with Encryption
as
begin
	select OrderID, CustomerID, OrderDate from Orders
	where YEAR(OrderDate) = @year
	order by OrderDate
end

--execute
exec spGetOrdersByYear '1996'

--Drop
Drop Proc spGetOrdersByYear
