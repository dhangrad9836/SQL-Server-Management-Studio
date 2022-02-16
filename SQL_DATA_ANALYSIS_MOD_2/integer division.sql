/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [SafetyStockLevel]
      ,[ReorderPoint]
	  ,[ReorderPoint] / ([SafetyStockLevel]*1.0)
      -- if you leave numeric fields alone and divide it sql will treat it with
	  --integer division and return back a 0..to work around this you need to multiply
	  -- one of the fields by 1.0 and sql will return back the proper number in a decimal format

  FROM [AdventureWorks2019].[Production].[Product]