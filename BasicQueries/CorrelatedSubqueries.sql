use NORTHWND

select contactname, orderdate
from customers c join orders o
	on c.CustomerID = o.CustomerID
where OrderDate = 
	(select max(orderdate)
	from orders oo
	where oo.CustomerID = c.CustomerID) 
