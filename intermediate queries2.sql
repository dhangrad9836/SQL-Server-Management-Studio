SELECT JOBTITLE, COUNT(JOBTITLE)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1		
--NOTE THAT HAVING CLAUSE IS DEPENDENT ON THE GROUP BY STATEMENT SO IT MUST COME AFTER GROUP BY

SELECT JOBTITLE, AVG(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics
JOIN [SQL Tutorial].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
--WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)
		