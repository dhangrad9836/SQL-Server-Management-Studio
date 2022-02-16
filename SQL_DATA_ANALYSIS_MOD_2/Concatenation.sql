/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
[FirstName],
[LastName],
[Full Name] = [FirstName] + ' ' + [LastName]
  FROM [AdventureWorks2019].[Person].[Person]

