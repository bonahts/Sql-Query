/* SECTION 16 */
-- CEIL & FLOOR --
select order_line, sales, ceil(sales), floor(sales) from sales where discount>0 

-- RANDOM --
 /* a=10 b=50 */
select random(), random()*40+10, floor(random()*40)+10

-- SETSEED --
select setseed(0.5) 
select random(); --0.550025
select random(); --0.295311

-- ROUND (NUMBER) -- 
select order_line, sales, round(sales) from sales order by sales desc

-- POWER --  
SELECT power (6,2)
select power(age,2) age from customer
select age, power(age,2) from customer order by age

/* EXERCISE */
-- 1. YOU ARE RUNNING A LOTTERY FOR YOUR CUSTOMER. SO, PICK A LIST OF 5 LUCKY CUSTOMERS FROM CUSTOMER TABLE USING RANDOM FUNCTION --
select customer_id, random() as rand_n from customer order by rand_n limit 5

select sum(ceil(sales)) as higher_int_sales, sum(floor(Sales)) as lower_int_sales, 
sum(round(sales)) as round_int_sales from sales
