--SELECT * FROM EmployeeDemographics
--SELECT * FROM EmployeeSalary

--SELECT *
--FROM [SQL Tutorial].dbo.EmployeeDemographics
--Inner Join [SQL Tutorial].dbo.EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT * FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Insert into EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly','Flax', NULL, 'Male'),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Insert into EmployeeSalary VALUES
--(1010, NULL, 47000),
--(NULL, 'Salesman', 43000)

--Takes everything from both tables and will show null values
--SELECT * FROM EmployeeDemographics
--FULL OUTER JOIN EmployeeSalary
--	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Takes everything from left table and from the right table if it does not have a match it 
--will return a null
SELECT * FROM EmployeeDemographics
Left OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT * FROM EmployeeDemographics
Right OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
