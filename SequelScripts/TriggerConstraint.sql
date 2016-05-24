create trigger EmployeeOverloading
on EmployeeTerritories
after insert, update
as
begin
	declare @employeeID int
	declare @count int

	select @employeeID = employeeid from inserted	

	select @count = count(*)
	from EmployeeTerritories
	where EmployeeID = @employeeID

	if(@count > 10)
	begin
		raiserror('You are overloading your employee!', 15, 0)
		rollback
	end
end

select *
from EmployeeTerritories
where EmployeeID = 7

insert into EmployeeTerritories
	values (7, '01833')