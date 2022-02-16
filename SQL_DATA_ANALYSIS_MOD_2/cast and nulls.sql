/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [Title]
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
      ,[Suffix]
	  ,[PersonID] = [PersonType] + '-' + cast(businessentityid as varchar)
  FROM [AdventureWorks2019].[Person].[Person]
  where [MiddleName] is not null
  and ([Title] is not null or [Suffix] is not null)