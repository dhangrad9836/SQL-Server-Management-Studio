/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
      A.[FirstName]     
      ,A.[LastName]
      ,B.[JOBTITLE]
	  ,C.[RATE]
	  ,[AverageRate] = AVG(C.[RATE]) OVER()
	  ,[MaximumRate] = MAX(C.[RATE]) OVER()
	  ,[DiffFromAvgRate] = (C.[RATE] - AVG(C.[RATE]) OVER())
	  ,[PercentOfMaxRate] = ((C.[RATE] / MAX([RATE]) OVER()) *100)
  FROM [AdventureWorks2019].[Person].[Person] A
  INNER JOIN [AdventureWorks2019].[HumanResources].[Employee] B
  ON A.[BusinessEntityID] = B.[BusinessEntityID]
  INNER JOIN [AdventureWorks2019].[HumanResources].[EmployeePayHistory] C
  ON A.[BusinessEntityID] = C.[BusinessEntityID]

  --SELECT [RATE],
  --[AVG RATE] = avg([RATE])
  --FROM [AdventureWorks2019].[HumanResources].[EmployeePayHistory]   
  --GROUP BY [RATE] 