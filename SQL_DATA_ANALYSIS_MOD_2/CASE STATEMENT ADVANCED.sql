/****** Script for SelectTopNRows command from SSMS  ******/
SELECT --AGING BUCKETS
      [OrderDate],
	  [Current Date] = CAST('07-31-2013' AS DATE),
	  [Elapsed Days] = DATEDIFF(DAY, [OrderDate], CAST('07-31-2013' AS DATE)),
	  [Aging Bucket] =
	  CASE
	  WHEN DATEDIFF(DAY, [OrderDate], CAST('07-31-2013' AS DATE)) < 10 THEN '< 10'
	  WHEN DATEDIFF(DAY, [OrderDate], CAST('07-31-2013' AS DATE)) BETWEEN 10 AND 19 THEN '10-19'
	  ELSE '20+'
	  END
  FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

  where [OrderDate] BETWEEN CAST('07-01-2013' AS DATE) AND CAST('07-31-2013' AS DATE)