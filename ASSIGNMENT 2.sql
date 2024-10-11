#create database sales
create database sales;
use sales;

#create a table orders
create  table orders(order_id int not null primary key,customer_name varchar(30) not null,
product_category varchar(30) not null,
ordered_item varchar(20) not null,
contact_no varchar(10) unique not null);

desc orders;

#add new column to the table
alter table orders add column order_quantity int;
desc orders;

#RENAME THE ORDERS TABLE TO THE SALES_ORDERS TABLE
RENAME TABLE ORDERS TO SALES_ORDERS ;



#INSERT 10 ROWS INTO THE SALES_ORDERS TABLE 

insert INTO sales_orders (order_id,customer_name,product_category,ordered_item,contact_no,order_quantity)values
(1,'ajay',  'Electronics','Laptop',1234567890, 10),
(2,'Rani',  'Electronics','Laptop',1111111111, 5),
(3,'Raju',  'grocery','biscuits',2222222222, 2),
(4,'Ram',  'grocery','choclates',3333333333, 3),
(5,'Rahul',  'Electronics','tv',4444444444, 4),
(6,'abhi',  'Electronics','tv',5555555555, 5),
(7,'kiran',  'Electronics','mobilephones',6666666666, 10),
(8,'joy',  'Electronics','tv',7777777777, 5),
(9,'chandu',  'Electronics','tv',8888888888, 2),
(10,'ranju',  'grocery','detergents',9999999999, 5);
select* from sales_orders;
# Retrieve customer_name and Ordered_Item from the sales_orders table

select customer_name,ordered_item from sales_orders ;

#Use the update command to change the name of the product for any row. 

update sales_orders set  ordered_item='laptop' where order_id=9;
select* from sales_orders;

#Delete the sales_orders table from the database
drop table sales_orders;
desc sales_orders;