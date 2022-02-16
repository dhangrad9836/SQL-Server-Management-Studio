/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	B.FirstName,
	B.LastName,
	B.PersonType,
      A.[TerritoryID]
      ,A.[SalesQuota]
      ,A.[Bonus]
      ,A.[CommissionPct]
      ,A.[SalesYTD]
      ,A.[SalesLastYear]
  FROM [AdventureWorks2019].[Sales].[SalesPerson] A
  JOIN [AdventureWorks2019].[Person].[Person] B
  ON A.BusinessEntityID = B.BusinessEntityID
