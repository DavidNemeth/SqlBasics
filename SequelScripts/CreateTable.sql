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

	unique(FirstName, LastName, Age),
	check(startdate < enddate)
	)

insert into PubMembers values('Willy', 'Wonka', DATEADD(year, -1, getdate()), GETDATE(), 30)
insert into PubMembers values('Charlie', 'Donk', GETDATE(), null, 21)

alter table PubMembers add Email varchar(100) default null

select *
from PubMembers