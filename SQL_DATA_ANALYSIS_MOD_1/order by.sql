/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [SalesOrderID]
      ,[RevisionNumber]
      ,[OrderDate]
	  ,[Total Amount Due] = [TotalDue]
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

  where [TotalDue] > 10000
  --order by [Total Amount Due] 
  -- you can use numbers to specify order ie 3 will represent the total amount due column
  order by 3 desc