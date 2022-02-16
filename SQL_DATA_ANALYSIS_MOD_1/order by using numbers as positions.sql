/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [BusinessEntityID]      
      ,[Organization Level] = [OrganizationLevel]
      ,[Job Title] = [JobTitle]      
      ,[Vacation Hours] = [VacationHours]
      ,[Sick Leave Hours] = [SickLeaveHours]
  FROM [AdventureWorks2019].[HumanResources].[Employee]
  --order by [Organization Level] asc, [Vacation Hours] desc
  order by 2 asc, 4 desc --positional ordering