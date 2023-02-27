select order_id, orders.customer_id, first_name, last_name   
from orders
-- now we should combine the columns from this table from the columns from the customer table
join customers
	on orders.customer_id = customers.customer_id;

-- as orders words are repeated twice we can use ailias within the from condition
select order_id, o.customer_id, first_name, last_name   
from orders o
join customers
	on o.customer_id = customers.customer_id;
    products
    
-- join the order_items table to the products table so for each order return both product id 
-- and its name followd by the quantity and unit price
SELECT order_id ,p.product_id, name, o.quantity, o.unit_price
FROM order_items o
INNER JOIN products p ON p.product_id=o.product_id;