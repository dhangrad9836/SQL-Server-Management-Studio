/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [BusinessEntityID]
      ,[VacationHours]
      ,[SickLeaveHours]
	  ,[SalariedFlag]
	  ,[Total Time Off] = [VacationHours] + [SickLeaveHours]
	  ,[Total Days Off] = ([VacationHours] + [SickLeaveHours]) / (8.0)
	  -- this will determine the number of days off instead of looking at 
	  -- it in hours...don't forget that we changed 8 to 8.0 for integer division
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  where [SalariedFlag] = 0
  order by [Total Time Off] asc