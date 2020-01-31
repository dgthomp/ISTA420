# **Class: ISTA420**
## **Name:**   Daniel Thompson
## **Assignment:** Chapter 03 Homework - *T-SQL HW03*
## **Date:** January 28, 2020


1. In general, why would you even want to join two (or more) tables together? This is a good time to think about the nature of relational algebra.

joins allow you to link data from two or more tables together into a single query result.

1. Describe in your own words the output from an inner join.

Inner Join combine the rows from two tables by cross joining them into a cartesian product, then filter the rows base on some set conditions.

1. Describe in your own words the output from an outer join.

Whenever a Inner join is done rows that are false base on the Predicate of the ON criteria are discarded. The Outer join allows for those rows that would have being discarded to be included in the result with a NULL marker.

1. Describe in your own words the output from an cross join.

The output from a cross join is a cartesian product of the rows in the tables joined. If Table 1 has 10 rows and Table 2 has 8 rows, after matching all the rows the cross join produce a virtual table containing 80 rows.


1. A convenient mnemonic for remembering the various joins is “Ohio.” Why is this true?

1. Give an example of a composite join.

When you need to reference more than one attributes from the tables you are joining for example Table 1 productID and OrderID with Table 2 productID with Table 2 OrderID.
ON T1.productID = T2.productID
AND T1.OrderID = T2.OrderID

1. What is the diﬀerence between the following two queries? The business problem is “How many orders do we have from each customer?”
================first query===============
SELECT C.custid, COUNT(x) AS numorders
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
N C.custid = O.custid
GROUP BY C.custid;
================second query===============
SELECT C.custid, COUNT(O.orderid) AS numorders
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
GROUP BY C.custid;

The first query counts all C.custid as numorders. This will produce inaccurate result, if not all C.custid have an O.custid, then those C.custid will be includled in the result with a NULL marker in O.custid instead of being disregarded. Counting O.orderid gives a more accurate result.

1. What might be one reason the following query does not return the column custID in this query?
SELECT C.custid, C.companyname, O.orderid, O.orderdate
FROM Sales.Customers AS C
LEFT OUTER JOIN Sales.Orders AS O
ON C.custid = O.custid
WHERE O.orderdate >= ’20160101’;

No orders were place on or before 20160101.
