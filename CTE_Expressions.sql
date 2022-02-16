--Common Table Expressions CTE
--you can use cte expressions with aggregate functions and partition by statements
--start off the cte statement with the keywordk WITH then name of the cte_function and then the keyword as

WITH CTE_Employee as
(SELECT FirstName, LastName, Gender, Salary
	, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
	, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM dbo.EmployeeDemographics AS dem
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary AS sal
	ON DEM.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee

--NOTE THAT A SELECT STATEMENT MUST COME DIRECTLY AFTER THE CTE EXPRESSION
--AND NOTE THAT CTE ARE NOT STORED IN MEMORY
