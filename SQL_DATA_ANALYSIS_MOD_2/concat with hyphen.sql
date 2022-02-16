/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[PersonType]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
	  ,[Person Title] = [FirstName] + ' ' + [LastName] + '-' + [PersonType] 
      
  FROM [AdventureWorks2019].[Person].[Person]