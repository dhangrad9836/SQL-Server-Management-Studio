SELECT 
[Product Count] = Count(*), -- this gives a count of all of our products in the query
[TOTALSALES] = SUM(A.[LINETOTAL]),
[PRODUCT] = B.[NAME],
B.[Size]

FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] A
JOIN [AdventureWorks2019].[Production].[Product] B
ON A.[ProductID] = B.[ProductID]

where B.[Size] is not null --this filters out all records that have null values

Group By B.[Name], B.[Size]
-- note that having clause is similar to a where clause but using for aggregate functions
Having SUM(A.[LINETOTAL])> 10000

order by [TotalSales]