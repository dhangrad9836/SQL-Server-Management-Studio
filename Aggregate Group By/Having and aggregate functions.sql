SELECT 
[TOTALSALES] = SUM(A.[LINETOTAL]),
[PRODUCT] = B.[NAME]

FROM [AdventureWorks2019].[Sales].[SalesOrderDetail] A
JOIN [AdventureWorks2019].[Production].[Product] B
ON A.[ProductID] = B.[ProductID]

Group By B.[Name]

Having SUM(A.[LINETOTAL])> 10000