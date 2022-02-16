/****** Script for SelectTopNRows command from SSMS  ******/
SELECT	[ORDER YEAR] = YEAR([OrderDate]),
	[SalesOrderID]
      ,[RevisionNumber]
      ,[OrderDate]
      ,[DueDate]
      ,[ShipDate]
      ,[Status]
      ,[OnlineOrderFlag]
      ,[SalesOrderNumber]
      ,[PurchaseOrderNumber]
      ,[AccountNumber]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[TerritoryID]
      ,[BillToAddressID]
      ,[ShipToAddressID]
      ,[ShipMethodID]
      ,[CreditCardID]
      ,[CreditCardApprovalCode]
      ,[CurrencyRateID]
      ,[SubTotal]
      ,[TaxAmt]
      ,[Freight]
      ,[TotalDue]
      ,[Comment]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

  --WHERE [OrderDate] >= DATEFROMPARTS(2014,1,1)
  --WHERE [OrderDate] BETWEEN DATEFROMPARTS(2013,1,1) AND DATEFROMPARTS(2013,12,31)
  where year([orderdate]) = 2013