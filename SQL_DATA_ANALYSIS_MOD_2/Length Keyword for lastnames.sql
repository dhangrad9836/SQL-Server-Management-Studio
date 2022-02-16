/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [FirstName]
      ,[LastName]
	  ,[Last Name Length] = LEN(LastName)

  FROM [AdventureWorks2019].[Person].[Person]
  where LEN(LastName) >= 10
  -- include only last names greater than or equal to 10
  order by LEN(LastName) desc