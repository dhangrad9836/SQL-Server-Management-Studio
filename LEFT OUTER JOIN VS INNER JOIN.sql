/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[BusinessEntityID]      
      ,A.[SalesQuota]
      ,A.[SalesYTD]
	  ,[TerritoryName] = B.[Name]
  FROM [AdventureWorks2019].[Sales].[SalesPerson] A
  LEFT OUTER JOIN [AdventureWorks2019].[Sales].[SalesTerritory] B
  ON A.[TerritoryID] = B.[TerritoryID]

  WHERE A.[SalesYTD] < 2000000
  
	/****** DIVISION ABOVE LEFT OUTER JOIN
		BELOW INNER JOIN LOOK AT DIFFERENCE******/

  SELECT A.[BusinessEntityID]      
      ,A.[SalesQuota]
      ,A.[SalesYTD]
	  ,[TerritoryName] = B.[Name]
  FROM [AdventureWorks2019].[Sales].[SalesPerson] A
  INNER JOIN [AdventureWorks2019].[Sales].[SalesTerritory] B
  ON A.[TerritoryID] = B.[TerritoryID]

  WHERE A.[SalesYTD] < 2000000