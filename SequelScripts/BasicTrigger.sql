if OBJECT_ID('MyTrigger') is not null
	drop trigger mytrigger

go

create trigger MyTrigger
on Customers
after insert, update, delete
as
begin
	select * from inserted
	select * from deleted
end

go

insert into customers (CustomerID, ContactName, CompanyName)
	values ('Newid', 'billy bob', 'skillcap')

update customers
set ContactName = 'davie'
where CustomerID = 'Newid'

delete from customers
where CustomerID = 'Newid'