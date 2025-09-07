select * from amazon_orders;

-- Alter Command
alter table amazon_orders alter column order_date datetime;

insert into amazon_orders
values(4,'2025-08-04 01:05:12', 'Baby Toys' , 456.32, 'UPI');
-- Add Extra column in existing table
alter table amazon_orders add user_name varchar(34);

insert into amazon_orders
values(5,'2025-08-05 04:34:13', 'Baby Sipper' , 56.32, 'Credit Card','kishorereddyr11');

-- Datetime to varchar is possible if the table is empty
-- Varchar to Datetime is also possible if the table is empty

-- Creating another table with keys
create table a_orders(
	order_id integer not null,
	order_date datetime,
	product_name varchar(30),
	total_price decimal(10,2),
	payment_method varchar(25) check(payment_method in ('UPI','CARD')),
	discount integer check(discount <= 20)
);

-- Adding New column with default value

alter table a_orders add category varchar(34) default 'Mens Wear';

-- Adding primary Key using alter command
alter table a_orders add constraint pk_order_id primary key (order_id);

select * from a_orders;
-- Inserting values into a_orders

insert into a_orders
values (1, '2025-08-12', 'Shirt', 499.99, 'UPI', 15, null);

insert into a_orders
values (2, '2025-08-13', 'T-Shirt', 399.99, 'CARD', 17,default);

-- Unique and Not Null combined we call Primary key
-- We can apply primary key for two columns at  a time in the table
-- primary key(order_id, product_name)
-- we can have same value in order id but different product name
-- (1,'shoes')
-- (2,'slipper')

-- Deleting perticular column
delete from a_orders where order_id = 1;

-- Update perticular row cell
update a_orders
set discount=19
where order_id = 1;

select * from a_orders;
