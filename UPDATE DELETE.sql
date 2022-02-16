--UPDATE/DELETE DATA

--USE [SQL Tutorial]

SELECT * FROM [SQL Tutorial].dbo.EmployeeDemographics
--WE ARE GOING TO UPDATE HOLLY FLAX WITH A EMPID, AGE, GENDER

--update empid
UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'
--update age and gender together
UPDATE [SQL Tutorial].dbo.EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'

--Delete
DELETE FROM [SQL Tutorial].DBO.EmployeeDemographics
WHERE EmployeeID = 1005

--WHEN USING DELETE TRY TO USE SAFEGUARD BY USING SELECT STATEMENT FIRST TO SEE WHAT YOU ARE 
--GOING TO DELETE...NOTED BELOW
--SELECT FROM [SQL Tutorial].DBO.EmployeeDemographics
--WHERE EmployeeID = 1005
--------THEN YOU CAN CHANGE THE ABOVE SELECT STATEMENT TO A DELETE KEYWORD
--DELETE FROM [SQL Tutorial].DBO.EmployeeDemographics
--WHERE EmployeeID = 1005
