--WINDOW FUNCTIONS allow you to include aggregate calculations in your queries
--without otherwise changing the output in any way...ie: not having to use groupby
--The aggregate calculation is simply added to your query as an additional column

SELECT TOP (1000) [BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
      ,[SalesLastYear]
	  ,[Total YTD Sales] = SUM([SalesYTD]) OVER()
	  ,[Max YTD Sales] = MAX([SalesYTD]) OVER() --this takes the max of the salesYTD
	  ,[% of Best Performer] = [SalesYTD]/MAX([SalesYTD]) OVER() --the best will be a 1.00
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[SalesPerson]


  