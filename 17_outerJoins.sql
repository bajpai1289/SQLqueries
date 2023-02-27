select c.customer_id, c.first_name, o.order_id
from customers c
join orders o 
	on c.customer_id=o.customer_id -- we are only returning records that match this condition
order by c.customer_id;

-- using the left outer join, all the rows from the left table 'FROM table'
-- will be return where the codition holds or not
select  c.customer_id, c.first_name, o.order_id
from customers c
left join orders o
	on c.customer_id=o.customer_id
order by c.customer_id;

-- write a query that produces product_id, name, quantity(from order items table)[join products table
-- to the order items table so we can see how many times each products is ordered
 select p.product_id, p.name, oi.quantity
 from products p
 left join order_items oi
	on oi.product_id=p.product_id;