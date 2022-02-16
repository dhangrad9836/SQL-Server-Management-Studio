/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [PhoneNumber]
	  ,[Area Code] = Left([PhoneNumber], 3)
	  -- we just want to grab the area code
  FROM [AdventureWorks2019].[Person].[PersonPhone]
  --note that we put the logic below in the where clause in order to not include
  -- phone numbers that start with and open parentheses do not include
  where [PhoneNumber] not like '%(%'