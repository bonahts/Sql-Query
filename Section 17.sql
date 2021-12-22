/* SECTION 17 */
-- CURRENT DATE & DATE --
SELECT CURRENT_DATE,
CURRENT_TIME, CURRENT_TIME(3), CURRENT_TIMESTAMP

-- AGE --
select age('2014-04-25','2017-01-01')
select order_line,
	ship_date, 
	order_date,
	age(ship_date,order_date) as time_taken
	from sales 
	order by time_taken desc
	
-- EXTRACT --
select EXTRACT (day from current_date)
select current_timestamp, extract(hour from current_timestamp)
select order_date, ship_date, (extract(epoch from ship_date) - extract(epoch from order_date)) as sec_taken
from sales 

-- EXERCISE --
/* 1. Find out the current age of "Batman" whi was born on "april 6 ,1939" in years, months and days */
select age (current_date,'1939-04-06')
select * from sales
/* analyze and find out the monthly sales of sub-category chair. do you observe any seasonality in sales of this sub-category */
select extract (month from order_date) as month_n, sum(sales) as total_sales from sales
where product_id in (select product_id from product where sub_category = 'Chairs')
group by month_n
order by month_n