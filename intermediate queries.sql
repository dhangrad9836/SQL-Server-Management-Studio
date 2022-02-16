----use [SQL Tutorial]

----CASE STATEMENTS
--SELECT FIRSTNAME, LASTNAME, AGE,
--CASE	
--	WHEN AGE > 30 THEN 'Old'
--	WHEN AGE BETWEEN 27 AND 30 THEN 'YOUNG'
--	ELSE 'BABY'
--END
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--WHERE AGE IS NOT NULL
--ORDER BY AGE

-----use case
SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN Jobtitle = 'Salesman' Then Salary + (Salary * .10)
	WHEN Jobtitle = 'Accountant' Then Salary + (Salary * .05)
	When Jobtitle = 'HR' Then Salary + (Salary * .000001)
	Else Salary + (Salary * .03)
End As SalaryAfterRaise
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID