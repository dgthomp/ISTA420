# **Class: ISTA420**
## **Name:**   Daniel Thompson
## **Assignment:** Chapter 02 Homework - *T-SQL HW 02c*
## **Date:** January 20, 2020

1. Date/time types in TSQL
   - DATETIME
   - SMALLDATETIME,
   - DATE
   - TIME
   - DATETIME2
   - DATETIMEOFFSET.

1. T-SQL doesn’t provide the means to express a date and time literal; instead, you can specify a literal of a different type that can be converted—explicitly or implicitly—to a date and time data type.

1. DATEFORMAT determines how SQL Server interprets the literals you enter when they are converted from a character-string type to a date and time type.

1. SET LANGUAGE German;
SELECT CAST('01/20/2020' AS DATE);

1. CAST method accepts just two parameters, expression, and target type, but CONVERT also takes a third parameter representing the format of conversion. With PARSE You can also indicate the culture by using any culture supported by the Microsoft's .NET framework.

1. GETDATE()

1. SELECT DATEADD(day, 1, GETDATE());
SELECT DATEADD(month, 1, GETDATE());
SELECT DATEADD(year, 1, GETDATE());

1. SELECT DATEDIFF(year, '19870427','20200120');

1. SELECT DATEADD(day, 30, DATE OF LASTPAYMENT) AS DATEOFNEXTPAYMENT;
1. By using the ISDATE function which accepts a character string as input and returns 1 if it is convertible to a date and time data type and 0 if it isn’t.

1. The EOMONTH function accepts an input date and time value and returns the respective end-of-month date as a DATE typed value.
1. SELECT DATEDIFF(day, GETDATE(), BIRTHDAY);
