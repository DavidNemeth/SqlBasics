use NORTHWND

select * 
from Customers c
where exists
	(select *
	from Orders o
	where c.customerid = o.customerid and
		c.City <> o.ShipCity)
