
--            DATEADD()
--------------------------------------
-- adding years
SELECT DATEADD(year, 5, GETDATE())
-- adding months
SELECT DATEADD(month, 5, GETDATE())
-- adding days
SELECT DATEADD(day, 5, GETDATE())

--            DATEDIFF()
--------------------------------------
SELECT DATEDIFF(day, GETDATE(), '2028-05-21')
SELECT DATEDIFF(year, '2004-06-28' ,GETDATE())

--            ISDATE()
--------------------------------------
-- output as 0/1
SELECT ISDATE(123)
SELECT ISDATE(GETDATE())
SELECT ISDATE('28-06-2004')
SELECT ISDATE(2026)
SELECT ISDATE('2001-02-29')