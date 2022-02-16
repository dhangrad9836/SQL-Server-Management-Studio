/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Order ID] =[PurchaseOrderID]
      ,[OrderDetailId] = [PurchaseOrderDetailID]
	  ,[TableType] = 'Purchase Order'
      ,[OrderQty]
      ,[LineTotal]
	  ,[RunDate] = GETDATE()
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderDetail]
  where [LineTotal] > 10000

  UNION

  SELECT [SalesOrderID]
      ,[SalesOrderDetailID]
	  ,[TableType] = 'Sales Order'
      ,[OrderQty]
      ,[LineTotal]
	  ,[RunDate] = GETDATE()
  FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
  where [LineTotal] > 10000
