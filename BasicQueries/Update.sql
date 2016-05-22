use NORTHWND

select * 
from customers
where CustomerID = 'dave'

update Customers
	set ContactTitle = 'Associate'		
	where customerid = 'Dave'

update customers
	set CompanyName = ContactTitle + ' ' + ContactName
	where CustomerID = 'dave'
