# **Class: ISTA420**
## **Name:**   Daniel Thompson
## **Assignment:** Chapter 05 Homework - *T-SQL HW05*
## **Date:** February 4, 2020


1. What is a table expression? Can you give a technical deﬁnition of a table expression?
 A table expression is a named query expression that represents a valid relational table.

1. In what SQL clause are derived tables (table valued subqueries) located?
Derived tables (also known as table subqueries) are defined in the FROM clause of an outer query.

1. Why can you refer to column aliases in an outer query that you deﬁned in an inner table valued subquery?
One of the benefits of using table expressions is that, in any clause of the outer query, you can refer to column aliases that were assigned in the SELECT clause of the inner query. 

1. What SQL key word deﬁnes a common table expression?
CTEs are defined by using a WITH statement

1. When using common table expressions, can a subsequent derived table use a table alias declared in a preceding table expression?

1. Can a main query refer to a previously deﬁned common table expression by multiple aliases?
The fact that a CTE is named and defined first and then queried you can refer to multiple instances of the same CTE in table operators like joins.

1. In SQL, is a view a durable object?
 Views and inline table-valued functions (inline TVFs) are two types of table expressions whose definitions are stored as permanent objects in the database, making them reusable

1. In a view, what does WITH CHECK OPTION do? Why is this important?
The purpose of CHECK OPTION is to prevent modifications through the view that conflict with the view’s filter.

1. In a view, what does SCHEMABINDING do? Why is this important?
 The SCHEMABINDING option binds the schema of referenced objects and columns to the schema of the referencing object. It indicates that referenced objects cannot be dropped and that referenced columns cannot be dropped or altered.

1. What is a table valued function?
Inline TVFs are reusable table expressions that support input parameters

1. What does the APPLY operator do?
The APPLY operator operates on two input tables by applying  one table to each row from the from the other table and produces a result table with the unified result sets.

1. What are the two forms of the APPLY operator? Give an example of each.
CROSS APPLY and OUTER APPLY. Like the JOIN table operator, APPLY performs its work in logical-query phases. CROSS APPLY implements only one logical-query processing phase, whereas OUTER APPLY implements two.
