/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [OrderDate]
      ,[ShipDate]
	  ,[Elapsed Days] = DATEDIFF(day, [OrderDate], [ShipDate])
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]