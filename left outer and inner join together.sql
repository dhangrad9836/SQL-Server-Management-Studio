/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[BusinessEntityID]
      ,A.[FirstName]
      ,A.[LastName]
	  ,B.[JobTitle]
	  ,B.[VacationHours],
	  B.[SickLeaveHours],
	  C.[EmailAddress]
  FROM [AdventureWorks2019].[Person].[Person] A
   LEFT OUTER JOIN [AdventureWorks2019].[HumanResources].[Employee] B
  ON A.[BusinessEntityID] = B.[BusinessEntityID]
  AND B.[VacationHours] > 50	-- HERE the filter will include null values
  INNER JOIN [Person].[EmailAddress] C
  ON A.[BusinessEntityID] = C.[BusinessEntityID]
  -- ON B.[BusinessEntityID] = C.[BusinessEntityID]
  --if you use the convention above you will only get back 6 rows -w- no nulls
  --the reason is that the person.person table returns everthing back to us with the left join

  WHERE A.[FirstName] = 'John'
  --AND B.[VacationHours] > 50 
  -- note if you execute the vacation hrs here you will filter out all null values too
  --unless you place directly after the left outer join which is after the humanresources join
  
 