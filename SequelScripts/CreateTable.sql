if(OBJECT_ID('PubMembers') is not null)
	drop table PubMembers
go

create table PubMembers (
	ID int primary key identity(1,1),
	FirstName varchar(100) not null,
	LastName varchar(100) not null,
	startdate datetime not null,
	enddate datetime null,
	Age int constraint LegalAge check(Age >= 18),
	
	check(startdate < enddate)
	)

insert into PubMembers values('Willy', 'Wonka', GETDATE(), DATEADD(year, 1, getdate()), 30)


select *
from PubMembers