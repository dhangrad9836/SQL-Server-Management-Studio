/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (100) [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      
  FROM [AdventureWorks2019].[Person].[Person]

  WHERE PersonType IN('EM', 'SP')
  AND (Title IS NULL
  OR MiddleName IS NULL
  OR Suffix IS NULL)