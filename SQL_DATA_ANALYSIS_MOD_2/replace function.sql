/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [EmailAddress],
		[Modified Email] = REPLACE([EmailAddress], 'adventure-works', 'hotmail')
		-- the replace function replaces text with new text
		--REPLACE([FieldName], 'text to replace', 'new text')
  FROM [AdventureWorks2019].[Person].[EmailAddress]
  -- we want to replace the ending email address 'adventure-works' with 
  -- 'hotmail'