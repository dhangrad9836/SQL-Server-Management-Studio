/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
      A.[FirstName],
      A.[LastName],
	  B.EmailAddress
  FROM [AdventureWorks2019].[Person].[Person] A
  JOIN [AdventureWorks2019].[Person].[EmailAddress] B
  ON A.BusinessEntityID = B.BusinessEntityID