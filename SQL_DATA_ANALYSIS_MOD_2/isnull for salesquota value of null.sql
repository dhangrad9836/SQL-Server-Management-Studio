/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[SalesPerson]

  --lets filter salesquota not equal to 250000 and include null values
  where ISNULL([SalesQuota], 0) != 250000
  -- what this is doing is we are using the isnull function to enter the first parameter
  -- of SalesQuota and the second value of 0 and this will return back the 
  --any values not equal to 250000 or null values too