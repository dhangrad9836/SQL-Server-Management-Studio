/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[BusinessEntityID]
      ,A.[FirstName]      
      ,A.[LastName]
      ,B.[VacationHours]
	  ,B.[SickLeaveHours]
	  ,C.[EmailAddress]
  FROM [AdventureWorks2019].[Person].[Person] A
  LEFT OUTER JOIN [AdventureWorks2019].[HumanResources].[Employee] B
  ON A.[BusinessEntityID] = B.[BusinessEntityID]
  and b.[VacationHours] > 50
  INNER JOIN [Person].[EmailAddress] C
 on a.[BusinessEntityID] = C.[BusinessEntityID]

  WHERE A.[FIRSTNAME] = 'John'
  --and b.[VacationHours] > 50