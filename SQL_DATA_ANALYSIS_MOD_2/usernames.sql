/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [EmailAddress],
		[Length] = LEN([EmailAddress]) - 20 -- this will subtract off the adventure-works.com
		,[User Name] = LEFT([EmailAddress], LEN([EmailAddress]) - 20)
  FROM [AdventureWorks2019].[Person].[EmailAddress]
  -- here we took the length and subtracted off 20 which will be the adventure-works.com
  -- and used the left function to take away the all those letters and we are left with
  --the remaining beggining characters which will be our usernames
  -- so we took the length of the entire email address and subtracted 20
  --the 20 represents the right most characters which in this case 
  --it will be adventureworks.com
  --then using the left function we put in that expression LEN([EmailAddress)] - 20)
  --and this will retun the left most remaining characters