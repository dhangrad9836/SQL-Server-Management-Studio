--SELECT Count(*) from [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader] A
--where A.[TotalDue] > 20000

--SELECT SUM([TotalDue]) from [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader] 
--SELECT Max([TotalDue]) from [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]

SELECT AVG([SubTotal] + [Freight]) from [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]  