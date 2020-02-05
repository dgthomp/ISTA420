
--Name: Daniel Thompson
--Assignment: tsql-quiz03
--Date: February 4 2020

--You will use the Northwind databaase in SQLite to answer the following questions:
--1. Write a report giving the employee id, ﬁrst name, last name, 
--and the average amount of all orders by that employee.

select E.EmployeeID, E.FirstName + ',' + E.LastName as employee_name, avg(OD.Quantity * OD.UnitPrice) as avg_amt
from Employees as E 
inner Join Orders as O
on E.EmployeeID = O.EmployeeID
inner Join [Order Details] as OD
on O.OrderID = OD.OrderID
group by E.EmployeeID, E.firstName, E.LastName
order by avg_amt desc;

--2. Write a report that lists our product categories and the 
--average price of all products of that category. 
--Include the category id, the category name, and the average price.

select P.CategoryID, C.CategoryName, avg(P.UnitPrice) as avg_price
from Categories as C
Join Products as P
on C.CategoryID = P.CategoryID
group by P.CategoryID,C.CategoryName
order by P.CategoryID;


