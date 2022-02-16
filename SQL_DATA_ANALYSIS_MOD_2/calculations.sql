/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
	[Commission YTD] = [SalesYTD] * [CommissionPct], -- calculate ytd commission
	[Income YTD] = ([SalesYTD] * [CommissionPct]) + [Bonus], -- calc income ytd using multiplication and addition 
	[BusinessEntityID]
      ,[TerritoryID]
      ,[SalesQuota]
      ,[Bonus]
      ,[CommissionPct]
      ,[SalesYTD]
	  ,[Bonus Fairness] = ([Bonus] / [SalesYTD]) * 100 -- calc the bonus vs sales ytd...we will determine in this field how fair is the bonus if a person is making high in commission sales and if they have a low bonus this will tell the percentage of bonus assigned
      ,[SalesLastYear]
	  ,[Difference of sales] = [SalesYTD] - [SalesLastYear] -- calc diffrence of sales from last year and this year to date
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[SalesPerson]