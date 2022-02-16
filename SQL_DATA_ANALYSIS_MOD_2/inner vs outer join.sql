--/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT A.[BusinessEntityID]
--      ,A.[SalesQuota]
--      ,[col a] = A.[SalesYTD]
--	  ,[TerritoryName] = B.[Name]
--	  ,[col b] = B.[SalesYTD]
--  FROM [AdventureWorks2019].[Sales].[SalesPerson] A
--  LEFT OUTER JOIN [AdventureWorks2019].[Sales].[SalesTerritory] B
--  ON A.[TERRITORYID] = B.[TERRITORYID]
--  where A.[SalesYTD] < 2000000

--changed above query from outer join to inner join below
/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[BusinessEntityID]
      ,A.[SalesQuota]
      ,[col a] = A.[SalesYTD]
	  ,[TerritoryName] = B.[Name]
	  ,[col b] = B.[SalesYTD]
  FROM [AdventureWorks2019].[Sales].[SalesPerson] A
  inner JOIN [AdventureWorks2019].[Sales].[SalesTerritory] B
  ON A.[TERRITORYID] = B.[TERRITORYID]
  where A.[SalesYTD] < 2000000