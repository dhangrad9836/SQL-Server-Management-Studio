/****** Script for SelectTopNRows command from SSMS  ******/
--SELECT TOP (100) [PurchaseOrderID]
--      ,[OrderDate]
--      ,[SubTotal]
--      ,[TaxAmt]
--      ,[Freight]
--      ,[TotalDue]
--  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

--  WHERE [TotalDue] > 50000
--  AND [Freight] < 1000

  /****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (100) [PurchaseOrderID]
      ,[OrderDate]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

  WHERE [SubTotal] NOT BETWEEN 10000 AND 30000

  