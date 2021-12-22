/* ORDERING */
--- ORDER ---
select * from customer WHERE state = 'California' ORDER BY customer_name;
select * from customer WHERE state = 'California' ORDER BY customer_name DESC
select * from customer ORDER BY customer_id ASC, customer_name DESC
select * from customer ORDER BY 2 ASC
select * from customer ORDER BY age ASC
select * from customer ORDER BY age asc

--- LIMIT ---
select * from customer where age >25 ORDER BY age DESC limit 10
select * from customer where age >25 ORDER BY age ASC limit 8
select * from customer where age =25 ORDER BY customer_name DESC limit 8
/* Exercise 
1.retrieve all orders where 'discount' value is greater than zero ordered in descending order basis 'discount' value
2.limit the numbers of results in above query to top 10
*/
--- ANSWER 1 & 2 ---
select * from sales where discount >0 order by discount DESC 
select * from sales where discount >0 order by discount DESC LIMIT 10

/* ALIAS */
--- AS ---
select customer_id as "Serial Number", customer_name as name, age as customer_age from customer

/* AGGREGATE COMMANDS */
--- COUNT ---
select count(*) from sales
select * from sales
select count (order_line) as "number of product ordered", count(distinct order_id) as "number of orders"
from sales where customer_id = 'CG-12520' 
--- SUM ---
select SUM (profit)as total_profit from sales
select SUM (quantity) as total_quantity from sales
select SUM (quantity) as total_quantity from sales WHERE product_id = 'FUR-TA-10000577'
--- AVERANGE ---
select *from customer
select avg (age) as "averange customer age" from customer
select avg (sales *10) as "averange commision value" from sales
--- MIN & MAX ---
select min(sales) as "minimum sales value june 15"from sales where order_date BETWEEN '2015-05-11' and '2015-06-30'
select sales from sales 
where order_date BETWEEN '2015-05-11' and '2015-06-30'ORDER BY sales asc
select max(sales) as "maximum sales value june 15"from sales where order_date BETWEEN '2015-05-11' and '2015-06-30'
/* EXERCISE 
1.Find the sum of all 'sales' value
2.find count of the number of customerts in north region with age between 20 and 30
3.find the averange age east region customers
4.find the minimum and maximum aged customer from philadelphia
*/
--- Number 1 ---
select sum (sales)  from sales
--- NUMBER 2 ---
select region from customer where age between '20' and '30' order by region asc
select count (region) from
customer where region = 'North'




