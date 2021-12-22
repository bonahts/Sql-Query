/* Selection Commands : Filtering */
--- IN ---
select * from  customer
select * from  customer where city in ('Philadelphia','Seattle');
select * from  customer where city='Philadelphia' or city='Seattle'
--- BETWEEN ---
select * from customer where age >=20 and age <=30;
select * from customer where age between 20 and 30;
select * from customer where age not between 20 and 30;
select * from sales where ship_date between '2015-04-01' and '2016-04-01';
--- LIKE ---
select * from customer
select * from customer where customer_name like 'Sally Hughsby%'
select * from customer where customer_name like '%Nelson%'
select * from customer where customer_name like 'J%'
select * from customer where customer_name like '____ %'
select distinct city from customer where customer_name not like 'S%'

--EXERCISE 
select * from customer
select * from customer where region in ('North','East');
select * from customer where region='North' or region='East'
select * from sales;
select * from sales where sales between 100 and 500;
select * from sales where sales >=100 and sales <=500;
