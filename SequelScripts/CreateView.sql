if OBJECT_ID('CustomersWithNoOrders') is not null
	drop view CustomersWithNoOrders

go

create view CustomersWithNoOrders (ID, Name,Country,CompanyName) as
	select ContactName, CustomerID, country, CompanyName
	from Customers
	where CustomerID not in (select CustomerID from Orders)

go

insert into CustomersWithNoOrders
	values ('D�v', 'D�vid', 'Hungary', 'arenaboost')

delete from CustomersWithNoOrders
where ID = 'D�v'

select *
from CustomersWithNoOrders

