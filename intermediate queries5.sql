SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
FULL OUTER JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Use case to find highest paid employee except Michael Scott and order it by Highest to lowest
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
FROM [SQL Tutorial].dbo.EmployeeDemographics
Inner JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael'
ORDER BY Salary Desc