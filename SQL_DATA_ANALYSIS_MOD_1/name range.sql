/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [BusinessEntityID]
      ,[PersonType]
      ,[NameStyle]
      ,[Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
      ,[EmailPromotion]
      ,[AdditionalContactInfo]
      ,[Demographics]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[Person].[Person]

  where [FirstName] LIKE '[abc]%'	--searches for firstnames begin wth a b or c

  --WHERE [FirstName] LIKE 'Tom%'
  --and [LastName] LIKE 'B%'

  --WHERE [FirstName] = 'Tommy'
  --and LastName = 'Black'
