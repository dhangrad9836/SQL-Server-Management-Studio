/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [BusinessEntityID]
      ,[Rate]
	  ,[Weekly Pay] = [Rate] * 40
  FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory]
  order by [Weekly Pay] desc