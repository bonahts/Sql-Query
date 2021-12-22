/* SECTION 13 */
-- SUBQUERY --
select * from sales
where customer_id in (select customer_id from customer where age > 60)

select 
	a.product_id,
	a.product_name,
	a.category,
	b.quantity
from product AS a
left join (select product_id , SUM(quantity) as quantity from sales group by product_id) as b
on a.product_id=b.product_id 
order by b.quantity desc

select product_id from product where category = 'Technology'

select customer_id,order_line, (select  customer_name from customer where customer.customer_id=sales.customer_id)
from sales
order by customer_id



