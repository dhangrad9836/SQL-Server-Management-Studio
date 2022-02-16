--aliasing

--Here we combined firstname and lastname with a space and gave it a column name as FullName
SELECT FIRSTNAME + ' ' + LastName AS FullName
FROM [SQL Tutorial].dbo.EmployeeDemographics

--HERE WE USED AN AGGREGATE FUNCTION AND WE GAVE IT A NAME AVERAGE_AGE
--NOTE WHEN using aggregate functios the new column produced will not have a name
--so it is helpful to give it a name
SELECT AVG(AGE) AS AVERAGE_AGE
FROM [SQL Tutorial].dbo.EmployeeDemographics

---NOW USING AN ALIAS TO GIVE A TABLE A NEW NAME...USEFUL WHEN YOU 
--HAVE TO WRITE OUT A LOT OF TABLE NAMES OR JOINS
--PART 1
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics
--PART 2 GIVE THE FROM CLAUSE WITH THE TABLE AN ALIAS
SELECT *
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
--part 3 use in the select clause the new alias from the table so
--sql knows which table you are using..this table select the empid from demo which is from EmployeeDemographics
SELECT Demo.EmployeeID
FROM [SQL Tutorial].dbo.EmployeeDemographics As Demo

--NOW A LITTLE MORE ADVANCED ALIASING USING JOINS
--we are going to join two tables give them name Demo and Sal
Select * 
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	on Demo.EmployeeID = Sal.EmployeeID

--now the two tables above are inner joined or joined with aliases
--lets select only the Demo EmpID and the Salary
--note since both tables share empid we only need EmpId from Demo
Select Demo.EmployeeID, Sal.Salary 
FROM [SQL Tutorial].dbo.EmployeeDemographics AS Demo
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	on Demo.EmployeeID = Sal.EmployeeID

--NOW WE ARE GOING TO JOIN THREE TABLES
SELECT * 
FROM [SQL Tutorial].DBO.EmployeeDemographics AS Demo
LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics as Ware
	ON Demo.EmployeeID = Ware.EmployeeID

--renaming the select statements with the aliases and what we want to select
SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName,
	Sal.JobTitle, Ware.Age
FROM [SQL Tutorial].DBO.EmployeeDemographics AS Demo
LEFT JOIN [SQL Tutorial].dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN [SQL Tutorial].dbo.WareHouseEmployeeDemographics as Ware
	ON Demo.EmployeeID = Ware.EmployeeID


Select * FROM [SQL Tutorial].dbo.EmployeeDemographics
Select * FROM [SQL Tutorial].dbo.WareHouseEmployeeDemographics



