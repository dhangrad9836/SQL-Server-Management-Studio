--TEMP TABLES

CREATE TABLE #temp_Employee(
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT * FROM #temp_Employee

INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '45000'
)

--INSERT INTO USING SELECT STATEMENTS AND BASICALLY TAKING THE INFORMATION FROM EMPLOYEE SALARY
--AND COPYING INTO THE NEW #temp_Employee table
INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial]..EmployeeSalary

SELECT * FROM #temp_Employee

-----------------------NOW WE ARE GOING TO CREATE A MORE COMPLEX TEMP TABLE AND ALSO USING DROP TABLE IF EXISTS
DROP TABLE IF EXISTS #temo_Employee2
CREATE TABLE #Temo_Employee2(
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

--we will use a statement from before that has joins and averages of age and salary
INSERT INTO #Temo_Employee2
SELECT JobTitle, COUNT(JobTitle), Avg(Age), Avg(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics AS emp
INNER JOIN [SQL Tutorial].dbo.EmployeeSalary AS sal
	on emp.EmployeeID = sal.EmployeeID
group by JobTitle

----------THIS WILL ALLOW US TO USE THE #TEMP_EMPLOYEE2 TABLE AND WE CAN DO CALCULATIONS OFF OF THAT TABLE 
--RATHER THAN HAVE TO KEEP REUSING THE HEAVILY CODED STATEMENT ABOVE

SELECT *
FROM #Temo_Employee2




