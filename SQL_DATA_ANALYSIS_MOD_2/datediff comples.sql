/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

  --WHERE DATEDIFF(DAY,[ORDERDATE],DATEFROMPARTS(2013,12,25)) BETWEEN 0 AND 7
  WHERE DATEDIFF(DAY,[ORDERDATE],DATEFROMPARTS(YEAR([orderdate]),12,25)) BETWEEN 0 AND 7
  --note that the last expression is pulling the year from orderdate to evaluate years
  --2013 through 2006

  --DATEDIFF EXAMPLE!!!!!!!!!!!!!!!!!!!! BELOW!!!!!!!!!!!!!
  --[Elapsed Days] = DATEDIFF(day, [OrderDate], [ShipDate])
  --SELECT DATEFROMPARTS(2013,12,25)
  
  --EXPLANATION ...so like the original example...[Elapsed Days] = DATEDIFF(day, [OrderDate], [ShipDate])
  -- we take the datediff(day, [orderdate], [shipdate]
  --so we specify orderdate for the first param after using day as our indicator
  --and shipdate as the other date to subtract from
  --in our question we needed to find the differences of 7 days from 12-25-2013
  --so datefromparts will allow us to hardcode that date in it and we need to specify
  -- an expression after that so using the between 0 and 7 will tell sql 0 to 7 days prior