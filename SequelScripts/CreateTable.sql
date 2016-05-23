if(OBJECT_ID('Cows') is not null)
	drop table Cows
go

create table Cows (
	ID int primary key identity(1,1),
	Name varchar(50),
	MooCount int
	)

insert into Cows values('Betsy', 10)


select *
from cows