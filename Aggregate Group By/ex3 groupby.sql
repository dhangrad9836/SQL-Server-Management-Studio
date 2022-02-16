-- Then add a new column with the sum of the list prices for each group.

--SELECT [Color], 
		
--[Product Count] = count(*)
--FROM [AdventureWorks2019].[Production].[Product] 
--group by [color]

SELECT [Color], [Style],

--Note that since we are using count(*) we will include null values
		
[Product Count] = count(*),
[List Price Total] = sum([listprice])
FROM [AdventureWorks2019].[Production].[Product] 
group by [color], [Style]
