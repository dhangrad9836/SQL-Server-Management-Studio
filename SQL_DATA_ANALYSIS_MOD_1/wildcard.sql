/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [AdventureWorks2019].[Person].[Person]
  --where [FirstName] LIKE '%.' -- THIS WILL return any first name that is abbreviated like A.
  --WHERE FirstName LIKE 'T%'
  --AND MiddleName LIKE 'L%'
  --AND LastName LIKE 'C%'
  -- WHERE [PhoneNumber] LIKE '206%'	THIS IS IF PHONE NUMBER IS A TEXT FIELD
  WHERE FirstName NOT LIKE '%[aeiou]%'