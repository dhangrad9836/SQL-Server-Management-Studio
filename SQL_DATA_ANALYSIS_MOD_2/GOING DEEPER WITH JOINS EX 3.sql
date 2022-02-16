/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[SalesOrderID]
	  ,A.[SalesPersonID]
      ,A.[OrderDate]
      ,A.[TotalDue]
	  ,[detail] = C.[SalesOrderId]
	  ,[Line] = C.[Linetotal]
	  ,[Sales] = a.[SalesPersonid]
	  ,[Person] = b.[BusinessEntityId],
	  [Percent of Sales] = (A.[totaldue] / B.[salesytd]) * 100
--Here is an example where you have two columns with different names but the values are
--of the same. In some instances with sql you may have columns that mean the same
--but have different names

  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader] A
  left outer join [AdventureWorks2019].[Sales].[SalesPerson] B
  --the left outer join will return all columns of salespersons whether there is a salesperson
  --or not...just return null
  on A.[SalesPersonId] = B.[BusinessEntityId]
  AND B.[SALESYTD] < 2000000
  INNER JOIN [AdventureWorks2019].[Sales].[SalesOrderDetail] C
  ON A.[salesorderid] = C.[salesorderid]

 WHERE A.[TotalDue] > 2000
 
  ORDER BY A.[SalesOrderID]