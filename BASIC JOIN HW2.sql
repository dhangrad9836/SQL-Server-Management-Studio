/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      A.[Name]
      ,A.[ListPrice]
	  ,B.ReviewerName
	  ,B.Comments
  FROM [AdventureWorks2019].[Production].[Product] A
  JOIN [AdventureWorks2019].[Production].[ProductReview] B
  ON A.ProductID = B.ProductID