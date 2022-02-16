--STORED PROCEDURES
--USE [SQL Tutorial]
--CREATE PROCEDURE TEST 
--AS 
--SELECT *
--FROM EmployeeDemographics

--TO USE THE STORE PROCEDURE NAME TEST
--TYPE IN EXEC TEST
EXEC TEST

--MORE COMPLEX STORE PROCEDURE WITH TEMP TABLE
CREATE PROCEDURE Temp_Employee3
AS
DROP TABLE IF EXISTS #temp_employee
Create table the_temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)

--insert data
--we will use a statement from before that has joins and averages of age and salary
INSERT INTO the_temp_employee
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics AS emp
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary AS sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle

--Insert into #temp_employee
--SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
--FROM SQLTutorial..EmployeeDemographics emp
--JOIN SQLTutorial..EmployeeSalary sal
--	ON emp.EmployeeID = sal.EmployeeID
--group by JobTitle

--select the new created table #temp_employee
SELECT *
FROM the_temp_employee

--call the stored procdure
EXEC Temp_Employee