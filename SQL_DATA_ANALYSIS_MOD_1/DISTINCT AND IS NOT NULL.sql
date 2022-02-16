--SELECT DISTINCT [JobTitle]
--from [HumanResources].[Employee]
--order by 1

--SELECT DISTINCT [FirstName],
--		[LastName]
--from Person.Person
--ORDER BY 1, 2

--SELECT DISTINCT
--		[Person Type] = [PersonType]
--FROM [Person].[Person]
--order by [Person Type] asc

SELECT DISTINCT
	[First Name] = [FirstName], 
	[Middle Name] = [MiddleName], 
	[Last Name] = [LastName]
FROM [Person].[Person]
WHERE MiddleName IS NOT NULL
ORDER BY 1 ASC






