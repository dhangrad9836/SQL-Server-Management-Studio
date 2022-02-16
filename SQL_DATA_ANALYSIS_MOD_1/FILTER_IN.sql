/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (100) [BusinessEntityID]
      ,[NationalIDNumber]
      ,[LoginID]
      ,[OrganizationNode]
      ,[OrganizationLevel]
      ,[JobTitle]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[HireDate]
      ,[SalariedFlag]
      ,[VacationHours]
      ,[SickLeaveHours]
      ,[CurrentFlag]
      ,[rowguid]
      ,[ModifiedDate]
  FROM [AdventureWorks2019].[HumanResources].[Employee]

  --where [OrganizationLevel] = 4
  --AND (SalariedFlag = 1
  --OR JobTitle = 'Senior Tool Designer')
  where Gender = 'F'
  --AND (JobTitle = 'Network Manager'
  --OR JobTitle = 'Application Specialist')
  AND JobTitle IN('Network Manager', 'Application Specialist')