SELECT 
	[OrderDate]
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  WHERE YEAR([OrderDate]) = 2013

  union all -- union all does not distinct the columns it joins all the rows from both tables

SELECT 
      [OrderDate]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  
  WHERE YEAR([OrderDate]) = 2013