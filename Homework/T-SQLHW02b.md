# **Class: ISTA420**
## **Name:**   Daniel Thompson
## **Assignment:** Chapter 02 Homework - *T-SQL HW 02b*
## **Date:** January 20, 2020

1. Data type is an attribute that specifies types of data of any object.
Specifying data type ensures the data is stored in the database in a consistent and known format. Knowing the data type allows you to know which calculations and formulations you can use on the column.
Data types affect storage. Data types affect performance.

1. Collation is a property of character data that encapsulates several aspects: language support, sort order, case sensitivity, accent sensitivity, and more.

1. SELECT RTRIM(LTRIM('    Dave    '));

1. SELECT *
   FROM college
   WHERE collegename LIKE '%Institute%';

1. By using SELECT CHARINDEX(' ','Barrack Hussein Obama');

1. SELECT substr("George Washington", 1, instr("George Washington", " "));
   select substr("George Washington", instr("George Washington", " ") + 1);

1. The following list presents the logical order in which all clauses  are processed:
  - FROM
  - WHERE
  - GROUP BY
  - HAVING
  - SELECT
  -- Expressions
  -- DISTINCT
  - ORDER BY
  -- TOP/OFFSET-FETCH

1. The precedence order of math operators, from highest to lowest:
  - ( ) (Parentheses)
  - / (Division), % (Modulo)
  - +(Positive), – (Negative), + (Addition), + (Concatenation), – (Subtraction)
  - NOT
  - = (Assignment)

1. You use the simple form to compare one value or scalar expression with a list of possible values and return a value for the first match. The searched CASE expression returns the value in the THEN clause that is associated with the first WHEN predicate that evaluates to TRUE.

1. SELECT LASTNAME, FIRSTNAME CONCAT( FIRSTNAME, N',' + LASTNAME) AS FULLNAME FROM listofnames

1. SELECT FIRSTNAME, LASTNAME CONCAT( LASTNAME, N',' + FIRSTNAME) AS FULLNAME FROM listofnames
