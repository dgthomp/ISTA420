.echo on
.header on

--Name: Daniel Thompson
--File: tsqlex2.sql
--Date: January 21, 2020

--1. Mailing Labels From the Northwind database we used in class and SQLite, create mailing labels for customer representatives.
--Each label should consist of six, and exactly six, lines. The mailing labels should be suitable for printing on sticky label paper,
--specically Avery 8160 labels. The format should be as follows:
--TITLE FIRSTNAME LASTNAME
--STREET ADDRESS
--CITY STATE ZIP COUNTRY
--[blank line]
--[blank line]

select contacttitle || " " || contactname || "
" || companyname || "
" || address || "
" || city || " " || postalcode || " " || country || "
" || "
" || "
"from suppliers;

--2. Telephone Book From the Northwind database we used in class and SQLite, create a telephone book for customer representatives.
--Each line in the telehone book should consist of the representative last name, representative first name, company name, and telephone number.
--Each row should look like this.
--Lastname, Firstname Middlename [tab] Company name [tab] phone number

select substr(substr(contactname, instr(contactname, " ")+1 ), instr(substr(contactname, instr(contactname, " ")+1 ), " "))||", " ||substr(contactname, 1, instr(contactname, " ")) ||" "||substr(substr(contactname, instr(contactname, " ") +1),  1, instr (substr(contactname, instr(contactname, " ") +1), " ")) ||char(9)||companyname ||char(9)|| phone from customers;


--3. Shipping Lag Report From the Northwind database, create a report from Orders showing the shipping lag between order date and shipped date. The report should contain four columns: the order number, the order date, the shipped date, and the difference in days between the order date and the shipped date.

 select orderID, orderdate, shippeddate, julianday(shippeddate) - julianday(orderdate) as diffbetweenshipandorederdate from orders;
--4. Your Age How old are you, in years, months, weeks, and days, today? If you know the time of your birth, add hours, minutes, and seconds. Use Sqlite to calculate this. Notes: (a) If you don't know the time of your birth, you cn assume that it is 00:00:00. (b) You may assume that each year contains 12 months and 365 day exactly, so you don't have to take leap years (and other oddities) into account.
--Age in years:
 select (julianday('now')-julianday('1987-04-27'))/ 365;

--Age in months

select (julianday('now')-julianday('1987-04-27'))/ 12;

--Age in weeks

select (julianday('now')-julianday('1987-04-27'))/ 52;

 --Age in days

select julianday('now')-julianday('1987-04-27');

--Age today
select (current_timestamp) - ('1987-04-27 00:00:00');
