--1. write a update statement to update city as null for order ids :  
-- CA-2020-161389 , US-2021-156909
update orders
set city = null
where Order_ID in ('CA-2020-161389' , 'US-2021-156909')

--2. write a query to find orders where city is null (2 rows)
select * from orders
where city is null

--3.  write a query to get total profit, first order date 
-- and latest order date for each category
select Category ,sum(profit) as total_profit,min(order_date) as first_order, max(order_date) as latest_date
from orders
group by Category

--4. write a query to find sub-categories where average profit is 
-- more than the half of the max profit in that sub-category
select Sub_Category 
from orders
group by Sub_Category
having avg(profit) > (1/2)*max(profit)

create table exams (student_id int, subject varchar(20), marks int);

insert into exams values (1,'Chemistry',91),(1,'Physics',91),(1,'Maths',92)
,(2,'Chemistry',80),(2,'Physics',90)
,(3,'Chemistry',80),(3,'Maths',80)
,(4,'Chemistry',71),(4,'Physics',54)
,(5,'Chemistry',79);

--5. write a query to find students who 
-- have got same marks in Physics and Chemistry.
select student_id , marks
from exams
where subject in ('maths','Chemistry')
group by student_id, marks
having count(1) = 2;

select * from orders;
--6.  write a query to find total number of products in each category.
select Category , count(distinct Product_ID) as total_products
from orders
group by Category;

--7. write a query to find top 5 sub categories in west 
-- region by total quantity sold
select top 5 Sub_Category , sum(quantity) as total_quantity_sold
from orders
where Region = 'west'
group by Sub_Category
order by total_quantity_sold;

--8. write a query to find total sales for each region 
-- and ship mode combination for orders in year 2020
select region ,ship_mode, sum(sales) as total_sales
from orders
where Order_Date between '2020-01-01' and '2020-12-31'
group by Region, Ship_Mode;