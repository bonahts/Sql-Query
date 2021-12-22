select * from customer
select customer_name from customer where postal_code = '42420'
/* LESSON 11 */
-- CASE --
select *, case
		  when age<30 then 'Young Netizen'
		  when age>60 then 'Senior Netizen'
		  else 'Middle Aged'
		  end as Age_category
from customer

/* LESSON 12 */
/* Joins */
/* Creating sales table of year 2015 */
-- before using join function you must have a relational two or more tables -- 
create table sales_2015 as select * from sales where ship_date between '2015-01-01' and '2015-12-31';
select * from sales_2015
select ship_date from sales where ship_date between '2015-01-01' and '2015-12-31'
select count(*) from sales; --2131
select count(distinct customer_id) from sales_2015;--578

/* customer with age between 20 and 60 */
create table customer_20_60 as select * from customer where age between 20 and 60;
select age from customer where age between '20' and '60'
select count(*) from customer_20_60; --597

-- INNER JOIN --
select * from sales_2015
select * from customer_20_60
select customer_id from sales_2015 order by customer_id 
select customer_id from customer_20_60 order by customer_id 

select
	a.order_line,
	a.order_id,
	a.product_id,
	a.customer_id,
	a.sales,
	b.customer_name,
	b.age,
	b.country
from sales as a
inner join customer_20_60 as b 
on a.customer_id = b.customer_id
order by customer_id;

-- LEFT JOIN --
select customer_id from sales_2015 order by customer_id
select customer_id from customer_20_60 order by customer_id

/* AA-10315 not present in customer_20_60 table 
   AA-10375 present in both
   AA-10480 not present in sales_2015 table */
select customer_id from customer_20_60 where customer_id = 'AA-10315'

select a.order_line,
		a.order_id,
		a.product_id,
		a.customer_id,
		a.sales,
		b.customer_name,
		b.age
from sales_2015 as a
left join customer_20_60 as b 
on 
a.customer_id = b.customer_id 
order by customer_id

-- RIGHT JOIN --
select customer_id from sales_2015 order by customer_id
select customer_id from customer_20_60 order by customer_id
/* AA-10315 not present in customer_20_60 table 
   AA-10375 present in both
   AA-10480 not present in sales_2015 table */
   
select a.order_line,
		a.product_id,
		a.customer_id,
		a.sales,
		b.customer_name,
		b.age
from sales_2015 as a
RIGHT join customer_20_60 as b 
on a.customer_id = b.customer_id 
order by customer_id

-- FULL OUTER JOIN -- 
select customer_id from sales_2015 order by customer_id
select customer_id from customer_20_60 order by customer_id

/* AA-10315 not present in customer_20_60 table 
   AA-10375 present in both
   AA-10480 not present in sales_2015 table */
   
select a.order_line,
		a.product_id,
		a.customer_id,
		a.sales,
		b.customer_name,
		b.age
from sales_2015 as a
full join customer_20_60 as b 
on a.customer_id = b.customer_id 
order by a.customer_id, b.customer_id;

-- CROSS JOIN -- 
create table month_values (MM integer);
create table year_values (YYYY integer);

insert into month_values values (1),(2),(3),(4),(5),(6),(7),(8),(9),(10),(11),(12);
insert into year_values values (2011),(2012),(2013),(2014),(2015),(2016),(2017),(2018),(2019);

select * from month_values;
select * from year_values;

select a.YYYY,b.MM from year_values as a, month_values as b 
order by a .YYYY, b.MM

-- EXCEPT --
select customer_id from sales_2015 order by customer_id
select customer_id from customer_20_60 order by customer_id

/* AA-10315 not present in customer_20_60 table 
   AA-10375 present in both
   AA-10480 not present in sales_2015 table */

select customer_id from sales_2015
except 
select customer_id from customer_20_60  
order by customer_id

-- UNION --
select customer_id from sales_2015
union
select customer_id from customer_20_60  
order by customer_id


