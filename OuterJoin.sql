use NORTHWND

select *

from Customers c left outer join orders o
	on c.CustomerID = o.CustomerID
	
order by o.CustomerID
