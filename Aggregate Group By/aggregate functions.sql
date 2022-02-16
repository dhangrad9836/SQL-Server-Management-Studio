--SELECT COUNT(*) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
--WHERE [TotalDue] > 10000

--Note that count does not count null values

--select totaldue
--from [AdventureWorks2019].[Sales].[SalesOrderHeader]
--where totaldue  > 10000

-- this has no null values
--SELECT COUNT([SalesOrderId]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

--The return value will be 13976 which is less than the 39000 value
--so in return this means that there are null values
--and be congnizent that there might be null values when using count([tablename])
--rather than using count(*) which will show null values
--SELECT COUNT([CurrencyRateID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

-- sum..WHICH sums or adds the values in a column of our data
--SELECT SUM([TOTALDUE]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
--where onlineorderflag = 1

--MIN / MAX Values
--SELECT MIN([TOTALDUE]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
--SELECT MAX([TOTALDUE]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]


--TEMP TABLE EX
--SELECT * INTO #avg_demo FROM
--(
--SELECT [NUM] = 1 UNION
--SELECT [NUM] = 2
--) X

--SELECT * FROM #avg_demo
--select avg([num] * 1.0) from #avg_demo

-- AVG FUNCTION
SELECT AVG([TaxAmt] + [Freight]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]