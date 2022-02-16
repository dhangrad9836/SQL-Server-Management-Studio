/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [NationalIDNumber]
	  ,[Length] = LEN([NationalIDNumber]) -- get length for visualization
	  ,[Padded] = ('0000000000' + [NationalIDNumber]) -- added 10 zeros to the id number
	  ,[Padded ID] = RIGHT('0000000000' + [NationalIDNumber], 10) -- chop off the right most
	  -- ok explanation:											--10 characters and return it back
	  --1. First we get the length just to visualize it
	  --2. We added 10 zeros to the National ID Number so 1078100 becomes 00000000001078100
	  --3. Then we use the right function to take away and return the right most 10 characters
	  --4. So any numbers to the right most of the id number will be returned
  FROM [AdventureWorks2019].[HumanResources].[Employee]