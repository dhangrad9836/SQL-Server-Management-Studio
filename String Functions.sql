/*

Today's Topic: String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower

*/

--Drop Table EmployeeErrors;


--CREATE TABLE EmployeeErrors (
--EmployeeID varchar(50)
--,FirstName varchar(50)
--,LastName varchar(50)
--)

--Insert into EmployeeErrors Values 
--('1001  ', 'Jimbo', 'Halbert')
--,('  1002', 'Pamela', 'Beasely')
--,('1005', 'TOby', 'Flenderson - Fired')

Insert into EmployeeDemographics Values
(1005, 'Toby', 'Flenderson', 32, 'Male')

SELECT * 
FROM EMPLOYEEERRORS

--Using Trim, LTrim, RTrim
--use TRIM to rid of blank spaces from the front...our empID has spaces in the front
SELECT EMPLOYEEID, TRIM(EMPLOYEEID) AS IDTRIM
FROM EmployeeErrors

 --LTRIM
 SELECT EMPLOYEEID, LTRIM(EMPLOYEEID) AS IDTRIM
FROM EmployeeErrors

--RTRIM		--note that this will not affect the 2nd id b/c it does not have any spaces on the right side
			--so it will remain the same
SELECT EMPLOYEEID, RTRIM(EMPLOYEEID) AS IDTRIM
FROM EmployeeErrors


--Using Replace
--the syntax is you use the REPLACE FUNCTION (INSIDE THE PARETHESES YOU PUT THE COLUMN NAME, 'AND IN THE QUOTES
--PUT WHAT YOU WANT TAKEN OUT', 'AND IN THE SECOND QUOTES PUT WHAT YOU WANT TO REPLACE IT WITH' 
--THEN AFTER THAT GIVE IT AN ALIAS NAME TO DISPLAY THE FIXED COLUMN OR TO USE THE NEW COLUMN NAME
SELECT LastName, REPLACE(LASTNAME, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


--USING SUBSTRING
SELECT SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors AS err
JOIN EmployeeDemographics AS dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3) 

Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)

select * from EmployeeDemographics


--UPPER AND LOWER
SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors





