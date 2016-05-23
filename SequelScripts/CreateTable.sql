if(OBJECT_ID('Cows') is not null)
	drop table Cows
go

create table Cows (
	Name varchar(50),
	MooCount int
	)

insert into Cows values
	('Betsy', 10)

insert into Cows default values


select *
from cows