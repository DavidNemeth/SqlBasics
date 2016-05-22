use NORTHWND

select *

from Customers c left join orders o
	on c.CustomerID = o.CustomerID

where o.OrderID is null
order by o.CustomerID
