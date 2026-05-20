
--                 FORMAT()
------------------------------------------------
------------------------------------------------
-- date/time/number is converted to String via FORMAT() function

-- date of the month
SELECT FORMAT(GETDATE(),'dd')
-- day name (sun,mon,tues...)
SELECT FORMAT(GETDATE(),'ddd')
-- full day name (sunday, monday...)
SELECT FORMAT(GETDATE(),'dddd')

-- month number
SELECT FORMAT(GETDATE(),'MM')
--month name (jan, feb...)
SELECT FORMAT(GETDATE(),'MMM')
-- full month name (january, february...)
SELECT FORMAT(GETDATE(),'MMMM')

-- user defined formatting
SELECT FORMAT(GETDATE(),'dd-MM-yyyy')
SELECT FORMAT(GETDATE(),'dd MMM')

SELECT FORMAT(GETDATE(),'MMM dd yyyy')

-- FORMAT() for numbers
SELECT FORMAT(123456789,'N2') -- upto 2 decimal places
SELECT FORMAT(123456789,'C')  -- C stands fort Currency


--                CONVERT()
------------------------------------------------
--		  CONVERT(data_type, value)
------------------------------------------------
-- CONVERT() is used in mostly Date/Time Conversion

SELECT CONVERT(INT,'49')
SELECT CONVERT(DATE,'2026-05-20')


--                CAST()
------------------------------------------------
--		   CAST(value AS data_type)
------------------------------------------------
--  NO Formatting support in CAST()
SELECT CAST(123.456 AS INT)
SELECT CAST('2025-05-20' AS DATE)
SELECT CAST('2025-05-20' AS DATETIME2)


--				|        Casting          |           Formatting
-------------------------------------------------------------------------------
-- CAST()       |  Any type to Any type	  |         Not Supported
--				|						  |
-- CONVERT()	|  Any type to Any type   |     Format only Date & Time
--				|						  |
-- FORMAT()		| Any type to String only |   Format Date & Time & Numbers
-------------------------------------------------------------------------------