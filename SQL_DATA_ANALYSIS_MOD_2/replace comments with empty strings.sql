/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [ReviewerName]
      ,[Comments],
	  [Cleaned Comments] = Replace([Comments],[Comments],' ')
  FROM [AdventureWorks2019].[Production].[ProductReview]

  --here we are replacing the comments with empty strings