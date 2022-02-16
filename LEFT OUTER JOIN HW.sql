/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[SalesOrderID]     
      ,A.[OrderDate]
      ,A.[TotalDue]
	  ,B.[SalesYTD]
	  ,[Percent of Sales] = (A.[TotalDue] / B.[SalesYTD]) * 100
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader] A
  --INNER JOIN [AdventureWorks2019].[Sales].[SalesPerson] B
  LEFT OUTER JOIN [AdventureWorks2019].[Sales].[SalesPerson] B
  on A.[SalesOrderID] = B.[BusinessEntityID]  
  AND B.[SalesYTD] < 2000000
  -- note that we used different tables above in the "on" statement b/c
  -- some databases will have tables labeled differently that you will have to inspect
  -- and understand that they are the same tables
  
 -- WHERE B.[SalesYTD] < 2000000
  WHERE A.[TotalDue] > 2000   
  ORDER BY A.[TotalDue] asc