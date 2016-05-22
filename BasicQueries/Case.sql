use NORTHWND

select productid,
	case
		when unitprice < 20 then 'Cheap product'
		when unitprice < 80 then 'moderate product'
		else 'wow, thats expensive!'
		end as price
		
from Products
order by price
