use NORTHWND

select c1.contactname, c2.contactname

from customers c1 cross join customers c2

where c1.ContactName < c2.ContactName
order by c1.contactname, c2.contactname
