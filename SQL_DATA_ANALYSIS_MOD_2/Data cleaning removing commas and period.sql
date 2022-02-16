/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
		[Description],
		[Cleaned Description] = REPLACE(REPLACE([Description],',', ''),'.','')
	
  FROM [AdventureWorks2019].[Production].[ProductDescription]

  --here we are going to do some cleaning of the description column
  -- we are going to remove commas and periods using the replace function
  -- WE ALSO NESTED TWO REPLACE FUNCTIONS TO REMOVE COMMAS AND THE PERIOD.
  -- THIS IS FROM LEC 37 @11:45
  -- FIRST WE HAD [Cleaned Description] = REPLACE([Description],',', '')
 -- to remove the commas
 --then we added a second replace function to remove periods
 --[Cleaned Description] = REPLACE(REPLACE([Description],',', ''),'.','')