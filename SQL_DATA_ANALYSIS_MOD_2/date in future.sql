select [current date] = getdate(),
[First of Month] = DATEFROMPARTS(Year(GetDate()), Month(GetDate()), 1),
[100 days from now] = DateAdd(Day, 100, DATEFROMPARTS(Year(GetDate()), Month(GetDate()), Day(getdate()))),
[6 monthsfrom now] = DateAdd(Month, 6, DATEFROMPARTS(Year(GetDate()), Month(GetDate()), Day(getdate())))

--SELECT DATEFROMPARTS(2013,12,25)