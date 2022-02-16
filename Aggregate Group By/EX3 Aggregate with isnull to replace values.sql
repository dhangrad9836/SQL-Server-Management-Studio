--You are not limited to only grouping by individual fields in your data; you can actually group by derived fields as well! You just have to make sure that you include the same derived field in both your SELECT and GROUP BY.

--With that in mind, "prettify" your output from Exercise 2 by displaying "No color" in the "Color" column in place of NULL values, and "NA" in the "Style" column in place of NULL values.

--HINT: The ISNULL function could be handy here.

SELECT [Color] = ISNULL([Color], 'No Color'), 
		[Style] = ISNULL([Style], 'NA'),

--Note that since we are using count(*) we will include null values
		
[Product Count] = count(*),
[List Price Total] = sum([listprice])
FROM [AdventureWorks2019].[Production].[Product] 
group by [color], [Style]


--[Color] = ISNULL([Color], 'None')  --this will replace the nulls in the color column with none
	  --,[Modified Color] = ISNULL([Color], 'None')