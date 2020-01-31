use Northwind;

--Assignment: lab2c.sql
--Author: Daniel Thompson
--Date: January 27, 2020


--1. List the employee IDs with the number of sales by each employee from most sales to least. 
--I want to recognize the employees with the most sales.

select EmployeeID,
count (EmployeeID) as TotalSales
from Orders
Group by EmployeeID
order by TotalSales desc;

--2. I want to look at the average discounts taken by all customers for products that cost more than $50.00. 
--Speciﬁcally, I want to know the average discount of all orders for each product from the highest price to the lowest price.

select ProductID, UnitPrice, 
avg(discount) as AvgDiscount
from [Order Details]
where unitprice > 50.0
group by ProductID, UnitPrice
order by UnitPrice desc;

--3. I am doing an analysis of which shippers ship to each country, and I 
--need a report showing the number of orders each shipper delivered to each country and the nuber of orders. 
--I don’t need the data where the number of orders is ten or less, but I need the report listed by country and the number of 
--orders shipped to that country.

Select Count (OrderID) as TotalShipped, ShipCountry, ShipVia
From Orders
Group by OrderID, ShipCountry,ShipVia 
order by ShipCountry, ShipVia;;

--4. For each order, what was the time lag between the order date and the ship date?

  select OrderDate, ShippedDate, ShipVia,
  DATEDIFF(D, Orderdate, ShippedDate) as lagTime from orders;

--5. Continuing with the previous query, I need the average time lag for each shipper.

  select OrderDate, ShippedDate, ShipVia,
  avg(DATEDIFF(D, Orderdate, ShippedDate)) as avglagTime from orders;
 
 
 --6. I am doing inventory, and I need to know the total price of each product on hand,
 --that is, the price of each product line, sorted alphabetically by product name.

 select ProductID, ProductName, Unitprice * unitsinstock as ProductTotalvalue
 from Products
 order by ProductName;


 --7 from Products; What is the dollar total we have tied up in inventory?

 select  sum(Unitprice * unitsinstock) as Totalvalue
 from Products;

 --8 We have discovered that some customers favor certain employees. I need to know this information. 
 --I need a report of the most common employee/customer pairs, the nuber of times the employee took orders from the customer, and the number of orders.
 --Alphabetize this by customer id. Omit customer/employee pairs whre the number of orders is less than ﬁve.

 select customerID, EmployeeID,
 count(CustomerID) as TotalCustomers
 from Orders
 group by CustomerID, EmployeeID
 having count(customerID) > 4
 order by customerID;

  
  select EOMONTH((getdate() + 30;
  select getdate() + 30;
  select 

  
  
  
 
 
  --9. ow many days were in the service (if you are a veteran), or how many days will you serve (assuming you know your ETS date)?

  select datediff(d, '2014-05-01', '2020-05-31');


 --10  Answer these questions using the built in time and date function. 
 ---What is today’s date? • 

  Select getdate();

 --What was the ﬁrst day of the month? 
 select DATEFROMPARTS (year(getdate()), month (getdate()), 1);
 
 --What will be the ﬁrst day of the next month? •
 select GETDATE() + 30;

 --What is the last day of this month?




  
   





 


