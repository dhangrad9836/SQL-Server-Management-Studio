/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [ReviewerName]
      ,[Comments]
	  ,[Cleaned Comments] = REPLACE(REPLACE([Comments], ',', ''),'.', '')
  FROM [AdventureWorks2019].[Production].[ProductReview]