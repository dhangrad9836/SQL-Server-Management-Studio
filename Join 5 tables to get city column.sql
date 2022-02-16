/*Exercise 3:
Modify your query from Exercise 2 to pull in each person's city from the "Person.Address" table. 
Note that this table has no fields in common with any of the tables already in our join. 
This means we will need to join in another table that we can use as a "bridge" 
between our Person.Address table and our Person.Person table - 
a table that should have fields we can use to connect it to either table.
The table we need is "Person.BusinessEntityAddress"; 
note that it has both "BusinessEntityID" AND "AddressID" fields. 
You will need to join this table to Person.Person, and then join Person.Address to this table 
in order to get your query to work.
		CODE IS BELOW HERE*/


SELECT 
      A.[FirstName]
      ,A.[LastName],
	  B.EmailAddress,
	  C.PhoneNumber,
	  E.City
  FROM [AdventureWorks2019].[Person].[Person] A
  JOIN [AdventureWorks2019].[Person].[EmailAddress] B
  ON A.BusinessEntityID = B.BusinessEntityID
  JOIN [AdventureWorks2019].[Person].[PersonPhone] C
  ON B.BusinessEntityID = C.BusinessEntityID
  JOIN [AdventureWorks2019].[Person].[BusinessEntityAddress] D
  ON A.BusinessEntityID = D.BusinessEntityID
  JOIN [AdventureWorks2019].[Person].[Address] E
  ON D.AddressID = E.AddressID
  WHERE [PhoneNumber] LIKE '206%'
  
   