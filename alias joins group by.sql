--PARTITION BY
SELECT *
FROM dbo.EmployeeDemographics

SELECT *
FROM dbo.EmployeeSalary

--JOIN WITH ALIASING
SELECT *
FROM dbo.EmployeeDemographics AS dem
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary AS sal
	ON DEM.EmployeeID = sal.EmployeeID
--PARTITION BY TO ALLOW US TO GROUP MULTIPLE ROWS WITH DIFFRENT PEOPLE
--HERE we are going to combine multiple names and we will get the total number of people
--NOW WE WE WILL SELECT THE COLUMNS TO USE
--and use count to identy how many male and female emplyees we have
SELECT FirstName, LastName, Gender, Salary,
	COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM dbo.EmployeeDemographics AS dem
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary AS sal
	ON DEM.EmployeeID = sal.EmployeeID

--now we are going to do the same as the above Partition By
--but using a Group By...the is a difference in the output
SELECT FirstName, LastName, Gender, Salary, COUNT(Gender) AS GEN
FROM dbo.EmployeeDemographics AS dem
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary AS sal
	ON DEM.EmployeeID = sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary

