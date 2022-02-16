/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [Name]
      ,[Color] = ISNULL([Color], 'None')  --this will replace the nulls in the color column with none
	  --,[Modified Color] = ISNULL([Color], 'None')
	  ,[weight]
  FROM [AdventureWorks2019].[Production].[Product]
  where isnull([Weight], 0) < 10