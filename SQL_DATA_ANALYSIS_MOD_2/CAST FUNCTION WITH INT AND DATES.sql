/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT  
--      [TotalDue],
--	  [Truncated Due] = CAST([TotalDue] as int)
--  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

--select getdate() - 2222

SELECT [OrderDate]
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

Where [OrderDate] >= CAST(GETDATE() - 199 AS DATE)
ORDER BY 1

--select 
--	[OrderDate]
--from [AdventureWorks2019].[Sales].[SalesOrderHeader]

--where [OrderDate] >= CAST(getdate() - 2222 as date)

-- SELECT CAST('123' AS INT)

-- SELECT CAST('ABC' AS INT)

SELECT CAST('01-01-2020' AS DATE)