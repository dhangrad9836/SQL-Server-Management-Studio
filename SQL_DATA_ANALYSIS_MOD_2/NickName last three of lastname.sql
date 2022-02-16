/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [FirstName]
      ,[LastName]
	  ,[NickName] = [FirstName] + '-' + LEFT(([LastName]), 3)
  FROM [AdventureWorks2019].[Person].[Person]
  --here we took the first name added a hyphen and only returned the first three of
  -- the last name