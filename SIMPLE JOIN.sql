/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[BusinessEntityID]
      ,A.[FirstName]
      ,A.[LastName]
	  ,B.[JobTitle]
	  ,B.[VacationHours],
	  B.[SickLeaveHours]
  FROM [AdventureWorks2019].[Person].[Person] A
   JOIN [AdventureWorks2019].[HumanResources].[Employee] B
  ON A.[BusinessEntityID] = B.[BusinessEntityID]
  WHERE A.[FirstName] = 'John'
  
 