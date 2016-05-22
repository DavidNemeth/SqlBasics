use NORTHWND

select *
from Products
where UnitPrice = (select min(unitprice)
		from products)

--count() sum() avg() max() min()
