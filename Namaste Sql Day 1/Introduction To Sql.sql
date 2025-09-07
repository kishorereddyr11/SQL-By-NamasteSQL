-- Creating table
create table amazon_orders(
	order_id integer,
	order_date date,
	product_name varchar(25),
	total_price decimal(5,2),
	payment_method varchar(15)
);

-- Inserting values into the table
insert into amazon_orders
values(1, '2025-08-01','Baby Mik',135.23,'UPI');

insert into amazon_orders
values(2, '2025-08-02','Baby Powder',158.53,'Credit Card');

insert into amazon_orders
values(3, '2025-08-03','Baby Dress',236.89,'Debit Card');

-- print the whole table
select * from amazon_orders;

select product_name from amazon_orders;

select order_id, product_name from amazon_orders;

-- Top Keyword
select top 2 * from amazon_orders;

-- This is Single line command
/*
this is multi line
comments
*/


-- Order by keyword -- by default ascending order
select * from amazon_orders
order by order_date;

select * from amazon_orders
order by order_date asc;

-- By using desc keyword along with order by
select * from amazon_orders
order by order_date desc;

select product_name from amazon_orders
order by order_date desc;

-- If any rows are same after sorting
-- order date the those same rows sorted according to product name
select * from amazon_orders
order by order_date desc, product_name asc;

-- DDl -- Data Defination language [Creating or removing structure]
-- DML -- Data Manipulation Language [ Manuplating language]
-- DQL -- Data Querying Data [ Just Querying Data]

-- Drop Command completly delete the table from data base
-- drop table amazon_orders

-- Truncate the table
-- delete from amazon_orders;

--  How to create a scheme
create schema hr
go

create table hr.test(
 id integer,
 name varchar(23)
);

insert into hr.test
values(1, 'Kishore');

insert into hr.test
values(2, 'Murugan');

select  * from hr.test

-- In same way in this same hr schema we create another table
create table hr.demo(
 id integer,
 name varchar(34)
);

insert into hr.demo
values(1,'Kishore Reddy');

insert into hr.demo
values(2, 'Kowshik');

select * from hr.demo;