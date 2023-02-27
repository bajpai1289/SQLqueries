-- when we join the table with same column name we can use using 
SELECT 
	o.order_id,
    c.first_name,
    sh.name as shipper
FROM orders o
JOIN customers c
 -- on o.customer_id = c.customer_id
	using (customer_id)
left JOIN shippers sh
	using (shipper_id);
    
    
SELECT *
FROM order_items oi
JOIN order_item_notes oin
	ON oi.order_id=oin.order_Id
    AND order_item_notesoi.product_id=oin.product_id;
    
    
    
select 
	p.date,
    c.name as client,
    p.amount,
    pm.name AS payment_method
from payments p
join clients c using (client_id)
join payment_methods pm
	on p.payment_method=pm.payment_method_id;
    
     