--Selecting multiple fields and specifying EmployeeDempgraphics.EmployeeID
--Remerber inner joins show everything that overlaps from both tables
--SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary FROM EmployeeDemographics
--Inner JOIN EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Right outer Join and Left outer join
--SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Age, Gender, JobTitle, Salary FROM EmployeeDemographics
--Left Outer JOIN EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, Age, Gender, EmployeeDemographics.EmployeeID, JobTitle, Salary FROM EmployeeDemographics
Full Outer JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID