/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [AccountNumber]
	 ,[Last 6] = Right([AccountNumber], 6)
	 -- we want to grab the last 6 characters off the the account number
	 -- so the syntax is Function([FieldName], num of characters)
	 -- Right([AccountNumber], 6)
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]