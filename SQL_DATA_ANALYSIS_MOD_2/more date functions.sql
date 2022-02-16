select [Current Date] = GETDATE(),
[First of Month] = DATEFROMPARTS(Year(GetDate()), Month(GetDate()), 1),
[Previous Month] = DATEADD(Month , -1, DATEFROMPARTS(Year(GetDate()), Month(GetDate()), 1)),
[Last Day Previous Month] = DateAdd(Day, -1, DATEFROMPARTS(Year(GetDate()), Month(GetDate()), 1))
-- first of month will hard code the first day of the   month
--previous month gets the last month's first day
--last day previous month gets the last day of the last month
--notice the differences from previous month uses the month function and last day previous month
--uses the day function
--select GETDATE() - 7