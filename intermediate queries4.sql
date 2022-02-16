Select *
From [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	--We need to find the salesman b/c the accounting dept might of made a mistake 
	--with one of the salesman salary
	--EXAMPLE OF A USE CASE
Select JobTitle, AVG(Salary)
From [SQL Tutorial].dbo.EmployeeDemographics
Inner JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
	WHERE JobTitle = 'Salesman'
	GROUP BY JobTitle