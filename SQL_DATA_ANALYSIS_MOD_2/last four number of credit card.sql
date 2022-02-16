/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      [CardNumber],
	  [Last Four] = RIGHT([CardNumber], 4)
  FROM [AdventureWorks2019].[Sales].[CreditCard]