--SELECT
--[JobTitle],
--[Gender],
--[VacationTime] = SUM([VacationHours])

--from [HumanResources].[Employee]

--group by 
--[JobTitle],
--[Gender]


SELECT
[JobTitle],
[Gender],
--Note that we are not limited to only one aggregatg function we  can use more that one;IE: here we used sum and count
[VacationTime] = SUM([VacationHours]),
[Total] = count(*)

from [HumanResources].[Employee]

group by 
[JobTitle],
[Gender]

SELECT Distinct
[JobTitle],
[Gender]

from [HumanResources].[Employee]
