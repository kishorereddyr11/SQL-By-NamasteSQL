select * from orders;

-- Distince Keyword
select distinct region from orders;

select distinct ship_mode from orders;

select distinct ship_mode, segment from orders;

-- Select all rows whose ship mode is first class
select * from orders
where Ship_Mode = 'first class';

-- select all rows whose quantity is grater then 5
select * from orders
where Quantity > 5;

-- order of execution
select top 5 * from orders
where Quantity > 5
order by Quantity asc;

--- always place distinct keyword just after select statement
select distinct top 5 * from orders
where Quantity>5
order by Quantity asc;


-- Order of execution
/*
where executed 1st
order by executed 2nd
top 3 executed by 3rd
from orders executed last
*/
-- Between operatior
select * from orders 
where Order_Date between '2015-12-08' and '2016-01-12'
order by Order_Date asc;

-- In Operarator
select * from orders 
where Ship_Mode in ('first class','same day');

select distinct ship_mode from orders
where Ship_Mode in ('first class','same day');

-- Not In Keyword
select distinct ship_mode from orders
where Ship_Mode not in ('first class','same day');

-- And Keyword
select * from orders
where Ship_Mode = 'first class' and Segment = 'consumer';

-- Or Keyword
select * from orders
where Ship_Mode = 'first class' or Segment = 'consumer';

-- Where is purely row wise
select * from orders
where Quantity > 5 and Order_Date > '2015-11-13';


--Create a new column in output only
select *, profit/sales as ratio
from orders;

select *, profit/sales as ratio, profit+sales as total
from orders;

-- Pattern Matching Problems
select Order_ID, Order_Date, Customer_Name
from orders
where Customer_Name like 'C%';

select Order_ID, Order_Date, Customer_Name
from orders
where Customer_Name like 'chris%';

select distinct customer_name 
from orders
where customer_name like '%re';

select distinct customer_name
from orders
where customer_name like 'a%a';

select distinct customer_name
from orders
where Customer_Name like '%ven%';

select distinct customer_name
from orders
where Customer_Name like '_l%';

select distinct customer_name
from orders
where Customer_Name like '%l_';

select distinct customer_name
from orders
where customer_name like 'c[al]%';

select distinct customer_name
from orders
where Customer_Name like 'c[a-l]%';

select distinct customer_name
from orders
where Customer_Name like 'c[^al]%';

