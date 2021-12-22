
/* GROUP BY COMMANDS */
-- GROUP BY --
select * from customer
select * from sales
select region,COUNT(customer_name) as customer_count from customer GROUP BY region
select region,count(customer_name) from customer group by region
select product_id, sum(quantity) as quantity_sold from sales group by product_id order by quantity_sold desc
select customer_id, min(sales) as minumun_sales, max (sales) as max_sales, avg(sales) as average_sales, sum(sales) as total_sales
from sales group by customer_id order by total_sales asc limit 10
select * from sales where customer_id = 'TS-21085'

-- HAVING --
select * from customer
select region, count(customer_id) as customer_count from customer group by region having count(customer_id)>200
select region, count(customer_id) as customer_count from customer group by region 
select region, count(customer_id) as customer_count from customer where customer_name like 'A%' group by region
select region, count(customer_id) as customer_count from customer where customer_name like 'A%' group by region having count(customer_id)>15

/* EXERCISE */
select * from sales
select product_id,count(quantity) as total_quantity, count(order_id) as number_of_order, max(sales) as max_sales,
min (sales) as min_sales, avg(sales) as average_sales from sales group by product_id having count (quantity) >10 limit 10
