SELECT GETDATE()

SELECT DATEFROMPARTS(2022,1,10)

select year(getdate())
select month(getdate())
select day(getdate())

--select DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), DAY(GETDATE()))
select DATEFROMPARTS(YEAR(GETDATE()), MONTH(GETDATE()), 1)