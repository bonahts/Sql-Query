/* SECTION 14 */
-- VIEW --
create view daily_billing  as
select a.order_date, a.order_line, a.product_id, a.sales, a.discount
from sales as a 
order by order_date desc;

create view logistic as 
select a.order_line, a.order_id, b.customer_name, b.city, b.state, b.country
from sales as a 
left join customer as b 
on a.customer_id = b.customer_id
order by a.order_line

-- INDEX --
CREATE INDEX mon_idx on month_values (MM)
