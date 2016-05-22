use NORTHWND

insert into customers
	(CustomerID, ContactName, CompanyName)
	values ('Dave', 'David', 'elitist-gaming.com')

select * 
from Customers
where customerid = 'dave'
