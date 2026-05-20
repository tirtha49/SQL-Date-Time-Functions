
-- SQL Date-Time Functions

-- Getting current date
SELECT GETDATE()

-- Extracting day, month, year
SELECT YEAR('2026-05-20')
SELECT MONTH('2026-05-20')
SELECT DAY('2026-05-20')

--                   DATEPART() 
------------------------------------------------------
--              DATEPART(part, date)
------------------------------------------------------
-- part := day/month/year

SELECT DATEPART(day,GETDATE()) -- numeric
SELECT DATEPART(month,GETDATE())
SELECT DATEPART(year,GETDATE())

-- part := weeek/quarter/hour

SELECT DATEPART(week,GETDATE())
SELECT DATEPART(quarter,GETDATE())
SELECT DATEPART(hour,GETDATE())


--                    DATENAME() 
------------------------------------------------------
--               DATENAME(part, date)
------------------------------------------------------
SELECT DATENAME(day,GETDATE()) -- string
SELECT DATENAME(year,GETDATE()) -- string

-- part := month/weekday

SELECT DATENAME(month,GETDATE())
SELECT DATENAME(weekday,GETDATE())

--                   DATETRUNC() 
------------------------------------------------------
--              DATETRUNC(part, date)
------------------------------------------------------

-- part := day/month/year

SELECT DATETRUNC(day,GETDATE())
SELECT DATETRUNC(month,GETDATE())
SELECT DATETRUNC(year,GETDATE())

-- part := hour/minute/second

SELECT DATETRUNC(hour,GETDATE())
SELECT DATETRUNC(minute,GETDATE())
SELECT DATETRUNC(second,GETDATE())


--                   EOMONTH() 
------------------------------------------------------
--                 EOMONTH(date)
------------------------------------------------------
SELECT EOMONTH(GETDATE())
SELECT EOMONTH('2026-02-25')
SELECT EOMONTH('2016-02-25')