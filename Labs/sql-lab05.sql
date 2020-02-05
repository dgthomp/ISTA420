use TSQLV4

--Name: Daniel Thompson
--Assignment: tsql-lab05.sql
--February 4 2020

--Using the TSQLV4 database, part 1
--1. Write a report returning the order id, the shipper name, 
--the order date and the city shipped to using a derived table

select so.orderid, so.shippername, so.orderdate, so.shipcity
	from (
	select s.companyname as shippername, s.shipperid, o.orderid, o.orderdate, o.shipcity
			from Sales.Orders o join Sales.Shippers s on o.shipperid = s.shipperid
			) so;

--2. I need a report showing how many orders each customer made during each year. 
--Return the customer id, the year, and the number of orders the customer placed during that year. 
--Use a derived table.
select a.custid, a.custyear, a.totalorders
from(
select o.custid, year(o.orderdate) as custyear, count(o.orderid) as totalorders
from Sales.Orders o
group by o.custid, year(o.orderdate) 
) a
order by a.custid, custyear;


--3. What is the growth or decline in the number of orders taken year by year? 
--Your report should contain the year, this years order’s, last year’s orders, 
--and the diﬀerence between the two. Join two derived tables.

select this_year, cur_orders, prev_orders, (cur_orders - prev_orders) as diff
from
(select year(orderdate) this_year, count(orderid) cur_orders from sales.orders
group by year(orderdate)) cy
left join
(select year(orderdate) as last_year, count(orderid) as prev_orders from sales.orders
group by year(orderdate)) py
on cy.this_year = py.last_year + 1;


--4. Using a CTE, give e a list of all our non-American suppliers. 
--I need the supplier id, the supplier name, and the country. Alphabetize the countries.


--5. What is the growth or decline in the number of orders taken year by year? 
--Your report should contain the year, this years order’s, last year’s orders, 
--and the diﬀerence between the two. Join two CTEs.

--6. Create a view that aggregates the number of orders per customer per year. 
--Then run a query against the view sorting the customers by customer id. 
--Don’t forget to drop the view if one exists before you create it. Use the DBO schema.
DROP VIEW IF EXISTS dbo.bob;
go
CREATE VIEW dbo.bob
AS
select custid, year(orderdate) as custyear, count(orderid)as order_count
from sales.orders
group by custid, year(orderdate)

GO
select custid, custyear, order_count from dbo.bob
order by custid, custyear;
--7. Create a view similar to the Production.Products table, but include the category name as a column. 
--Use the DBO schema. This is an example of denormalizing a database table. 
--After going to all the trouble of normalizing a database, can you think of a good reason to denormalize it?

drop view if exists dbo.prodcat
go
create view dbo.prodcat
as
select p.productid, p.productname, p.unitprice, c.categoryname
	from Production.Products p
	join Production.Categories c
	on p.categoryid = c.categoryid;
go
select * from dbo.prodcat;

--8. Create an inline table valued function that takes a product id as an 
--argument and returns the sales of the product by month. Disregard the year. 
--We want to see what products are more commonly sold durig particular months. Use the DBO schema. 
--Run a query against your TFV to see if it works.

--Using the Northwind database
--1. List the number of orders by each customer who lives in the United States using a CTE. 
--Sort from highest to lowest.

--2. List the product name and the number of each product from 
--a German supplier sold to a customer in Germany using a CTE. Sort from highest to lowest.

--3. Prepare an employee report showing the name of each employee,
--the number of employees they supervise, and the name of their supervisor using a CTE. 
--Sort by the number of employees supervised.
