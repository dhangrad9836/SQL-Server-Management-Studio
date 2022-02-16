SELECT
[JobTitle],
[EmployeeCount] = Count(*)  --this is an alias

from [HumanResources].Employee

group by
[JobTitle]

select count(*) from HumanResources.Employee