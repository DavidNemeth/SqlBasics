use NORTHWND

select * 
from region
--make sure to always have backup before making db changes
delete 
from region
where RegionID >= 5