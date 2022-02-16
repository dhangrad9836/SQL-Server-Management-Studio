/****** Script for SelectTopNRows command from SSMS  ******/
SELECT DISTINCT
	[JobTitle],
	-- Derived Column called Job Category
	[Job Category] = 
	CASE
	WHEN [JobTitle] LIKE '%Manager%' THEN 'Management'
	WHEN [JobTitle] LIKE '%President%' THEN 'Management'
	WHEN [JobTitle] LIKE '%Production%' THEN 'Production'
	ELSE 'Other'
	END
  FROM [AdventureWorks2019].[HumanResources].[Employee]