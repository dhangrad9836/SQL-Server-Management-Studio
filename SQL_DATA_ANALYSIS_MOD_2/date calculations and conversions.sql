SELECT CAST(GETDATE() -1 AS DATE) -- calculate yesterday date and casted to as date

SELECT GETDATE()

select cast('2022-12-31' as date)

-- THIS CALCULATES THE NUMBER OF DAYS FROM THE CURRENT DATE TO THE LAST DAY OF THE YEAR
--WE USE THE DateDiff function...specified it to be day, then the 1st param
-- is the current date with GETDATE() AND the second param for the difference
--is hard coded last day of the year and converted to date with as date
SELECT [NUM OF DAYS] = DATEDIFF(DAY, GETDATE(), cast('2022-12-31' as date))
SELECT [NUM OF MONTHS] = DATEDIFF(MONTH, GETDATE(), cast('2022-12-31' as date))

--[Elapsed Days] = DATEDIFF(day, [OrderDate], [ShipDate])
