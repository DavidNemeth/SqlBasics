use NORTHWND

insert into customers
	(CustomerID, ContactName, CompanyName)
	values ('--max(CustomerID)+1', 'David', 'elitist-gaming.com')

select * 
from Customers
where ContactName = 'david'
