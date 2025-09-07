select * from orders;

select * from orders
where city is not null;

-- Aggregation 
select count(*) as cnt 
from orders;

-- sum
select sum(sales) as sum
from orders;

-- max
select  max(sales) as max_sales
from orders;

-- avg
select avg(profit) as avg_profit
from orders;

-- min 
select min(profit) as min_profit
from orders;

-- Group By
select region, sum(sales) as sum_sales, count(*) as cnt
from orders
group by region
order by cnt asc;

select region from orders
group by region;

select region, Category, sum(sales) as total_sales
from orders
group by region, Category
order by total_sales;

-- Alert Error Here
select region , category , sum(sales) as total_sales
from orders
group by region;

select region , sum(sales) as total_sales
from orders
where profit > 50
group by region
order by total_sales;

-- Order of Execution
-- > where --> group by --> Having --> select --> Order by --> Top 5

-- Applying conditions for aggregrated columns
select Sub_Category, sum(sales) as total_sales
from orders 
group by Sub_Category
having sum(sales) > 10000
order by total_sales asc;

select Sub_Category, sum(sales) as total_sales
from orders
where profit > 300
group by Sub_Category
having max(order_date) > '2017-01-01'
order by total_sales desc;

-- count
select count(distinct Sub_Category) as cnt
from orders;

-- 1 is similar to *
select count(1) as cnt 
from orders

