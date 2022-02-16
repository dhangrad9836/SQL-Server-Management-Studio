/****** Script for SelectTopNRows command from SSMS  ******/

-- note that these are inner joins by default which are records that can be matched
--by all the tables will be included
SELECT 
	B.FirstName,
	B.LastName,
	B.PersonType,
      A.[TerritoryID]
      ,A.[SalesQuota]
      ,A.[Bonus]
      ,A.[CommissionPct]
      ,A.[SalesYTD]
      ,A.[SalesLastYear],
	  C.[Group]

  FROM [AdventureWorks2019].[Sales].[SalesPerson] A
  JOIN [AdventureWorks2019].[Person].[Person] B
  ON A.BusinessEntityID = B.BusinessEntityID
  JOIN [AdventureWorks2019].[Sales].[SalesTerritory] C
  ON A.TerritoryID = C.TerritoryID

  WHERE C.[Group] = 'Europe'