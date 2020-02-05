# **Class: ISTA420**
## **Name:**   Daniel Thompson
## **Assignment:** Chapter 04 Homework - *T-SQL HW04*
## **Date:** February 3, 2020



1. In your own words, what is a subquery?
A subquery is a SQL query nested inside a larger query

1. In your own words, what is a self contained subquery?
Self-contained subqueries are subqueries that are independent of the tables in the outer query.

1. In your own words, what is a correlated subquery?
Correlated subqueries are subqueries that refer to attributes from the tables that appear in the outer query.

1. Give an example of a subquery that returns a single value. When would you use this kind of subquery?
A scalar subquery is a subquery that returns a single value.

1. Give an example of a subquery that returns multiple values. When would you use this kind of subquery?
A multivalued subquery is a subquery that returns multiple values as a single column

1. Give an example of a subquery that returns table values. When would you use this kind of subquery?

1. What does the exists predicate do? Give an example.
 EXISTS that accepts a subquery as input and returns TRUE if the subquery returns any rows and FALSE otherwise.

1. What happens if we use the not operator before a predicate? Give an example.
 You negate the predicate with the NOT operator.

1. When you use exists or not exists with respect to a row in a database, does it return two or three values? Explain your answer.
EXISTS uses two-valued logic and not three-valued logic

1. How would you use a subquery to calculate aggregates? For example, you want to calculate yearly sales of a product, and you also want to keep a running sum of total sales. Explain how you would use a subquery to do this.

You query one instance of the view (call it O1) to return for each year the current year and  quantity. You use a correlated subquery against a second instance of the view (call it O2) to calculate the running-total quantity
