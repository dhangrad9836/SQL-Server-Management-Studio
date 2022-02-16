/****** Script for SelectTopNRows command from SSMS  ******/
SELECT A.[BusinessEntityID],
      A.[FirstName],
      A.[LastName],
	  B.[JOBTITLE],
	  B.[VACATIONHOURS],
	  B.[SICKLEAVEHOURS]
  FROM [AdventureWorks2019].[Person].[Person] A
  --we will see all components from our primary table person.person using left join
  --the second table humanresource.employee..lets say we pull from person.person
  -- a record with first name of john and lastname of kane but the second talble
  -- that we are quering the vacationhours there is not a john kane...it will just return a null value
  -- so left join pull everything from the primary table and values from the second table
  --whether there is a value or it will return null
  left outer JOIN [AdventureWorks2019].[HumanResources].[Employee] B
  ON A.BusinessEntityID = B.BusinessEntityID
  WHERE A.[FirstName] = 'John'