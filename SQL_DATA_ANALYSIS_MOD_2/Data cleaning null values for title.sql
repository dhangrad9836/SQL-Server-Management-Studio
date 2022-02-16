/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [Title]
	  ,[Modified Title] = ISNULL([Title], 'No Title')
      ,[FirstName]
      ,[MiddleName]
      ,[LastName]
  FROM [AdventureWorks2019].[Person].[Person]

  --isnull function...this takes two params the first param is the table and the 
  --second value is the text you want to display in case there is a null value
  --this is data cleaning for null values part one