if(OBJECT_ID('Cars') is not null)
	drop table Cars
if(OBJECT_ID('People') is not null)
	drop table People

go

create table People (
	ID int primary key identity(1,1),
	FistName varchar(100) not null,
	LastName varchar(100) not null,
	Age int constraint MinAge Check(Age >= 18),
	Email varchar(100) unique
)

create table Cars(	
	PlateNumber char(6) primary key,
	Make varchar(50),
	Model varchar(50),
	OwnerID int references People (ID) on delete cascade,
)

insert into People values ('Charlie', 'Bean', 24, 'charlie@bean.info')
insert into People values ('Suzie', 'Lee', 18, 'suzie@white.io')
insert into People values ('Meg', 'White', 32, 'meg@white.us')

insert into cars values('KGB121', 'Honda', 'Civic', 1)
insert into cars values('ABC123', 'Ford', 'Mustang', 2)

--delete from people where ID = 1

select *
from people join cars
on cars.OwnedID = People.ID
