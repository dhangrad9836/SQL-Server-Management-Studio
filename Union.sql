/****** Script for SelectTopNRows command from SSMS  ******/

-- For Union both queries must be the same number of columns, and you 
-- cannot mix the columns names ie: if the order is: id, FirstName, LastName, AmountDue
-- the second query must match in that order or you will get an error

SELECT [Order ID] = [SalesOrderID], -- we aliased this column b/c w/o the alias both queries will display [salesorderid] and that is not correct
	[Order Type] = 'Customer Order' -- we made this column in order to differentiate
	,[OrderDate],					-- the Customers from the vendors b/c we have duplicates
	[TotalDue]
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
  WHERE YEAR([OrderDate]) = 2013

  union

SELECT [PurchaseOrderID],
		[Order Type] = 'Vendor Order'
      ,[OrderDate],
	  [TotalDue]
  FROM [AdventureWorks2019].[Purchasing].[PurchaseOrderHeader]
  
  WHERE YEAR([OrderDate]) = 2013