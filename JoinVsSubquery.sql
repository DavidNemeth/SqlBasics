use NORTHWND

--subquery
select *
from customers
where CustomerID not in 
	(select customerid
	from Orders)

--join
select *
from customers c left join orders o
	on c.customerid = o.customerid
where o.CustomerID is null
