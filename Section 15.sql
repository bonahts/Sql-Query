/* SECTION 15 */
-- LENGTH (STRING) --
select customer_name, length (customer_name) as characters_num 
from customer where age > 30

-- REPLACE --
select customer_name, country, 
replace (country,'United States', 'US') as country_new
from customer

-- TRIM, LTRIM, & RTRIN --
select trim (leading '' from '	Start-Tech Academy	')
select trim (trailing '' from '	Start-Tech Academy	')
select trim (both '' from '	Start-Tech Academy	')

-- CONCATENATION --
select * from customer
select customer_name,city||','||state||','||country as address
from customer

-- STRING -- 
SELECT
customer_id, customer_name, substring (customer_id FOR 2) as cust_group
from customer where substring (customer_id for 2)='AB';

select customer_id, customer_name, substring (customer_id from 4 FOR 5) as cust_num
from customer where substring (customer_id for 2)='AB';

--  STRING LIST AGGREGATION --
SELECT * from sales order by order_id 
SELECT order_id, STRING_AGG (product_id,',') from sales group by order_id