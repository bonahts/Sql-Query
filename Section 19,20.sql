/* Section 19 */
-- CONVERSION TO STRING -- 
SELECT sales, TO_CHAR (sales, '9999.99') from sales 
SELECT sales, TO_CHAR (sales, '9,999.99') from sales 
SELECT sales, TO_CHAR (sales, '00,0') from sales 
select order_date, TO_CHAR (order_date,'MMDDYY') from sales
select order_date,TO_CHAR (order_date,'Month DD,YYYY') from sales
SELECT sales, 'totak sakes value for this order is'||TO_CHAR (sales, '9999.99') as message from sales 

-- CONVERSION TO DATE --
select to_date ('2019/01/15','YYYY/MM/DD')
select to_date ('26122018','DDMMYYYY')
select to_number ('2645.8761','9999.999')


/* SECTION 20 */
-- USER ACCESS CONTROL FUNCTION 
create user starttech with password 'academy'

-- GRANT AND REVOKE -- 
select * from product
grant select, update, insert, delete on product to starttech

revoke delete on product from starttech
-- if tghe user that you wish to delete own a database be sure to drop the database first and than drop the user --

drop user starttech
revoke all on product from starttech

-- RENAME USER --

ALTER USER starttech rename to ST
-- FIND ALL USERS --
select usename from pg_user 
select * from pg _user 
select distinct * from pg_stat_activity


create table customer_table (
cust_id int,
	first_name varchar,
	last_name varchar, 
	age int,
	email_id varchar);

-- insert single row --
insert into customer_table (cust_id, first_name, last_name, age, email_id)
values (2,'dee',22.'d@gmail.com')
	
-- insert multiple row --
insert into customer_table
values (2,'dee',22.'d@gmail.com'),
(2,'dee',22.'d@gmail.com'),
(2,'dee',22.'d@gmail.com');

select * from customer
select distinct customer_name from customer

update customer set last_name ='p', age='17' where cust_id=2

insert into booking_table (id, bank_name, amount, payment_date)
values ('001','bca','500.000','20-jan-2019'),
('002','niaga','1.000.000','24-mar-2019'),
('003','bca','200.000','05-sep-2019'),
('004','niaga','100.000','12-des-2019');


insert into master_table (id,source_name,status)
values ('001','aaa','pending'),
('002','bbb','void'),
('003','aaa','succes'),
('004','bbb','pending');

select 
	a.bank_name,
	b.status,
	count(total_transaksi)
from booking as a 
inner join master as b
on a.booking = b.customer
group by id;


update NDS_table set id='005', bank_name='bca', amount='200.000', payment_date ='30-des-2019',source_name='aaa', status='void';
update NDS_table set id='006', bank_name='bca', amount=100.000', payment_date ='30-des-2019',source_name='aaa', status='success';
update NDS_table set id='007', bank_name='bni', amount='10.000', payment_date ='30-des-2019',source_name='aaa', status='queue'



