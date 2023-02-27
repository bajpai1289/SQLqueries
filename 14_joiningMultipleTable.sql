  USE sql_store;

SELECT 
	o.order_id,
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders o
JOIN customers c
	ON o.customer_id=c.customer_id
JOIN order_statuses os -- to join the orders table with order statuses table
	ON o.status=os.order_status_id;
    
    
-- excercise join the table, join the table payments with the payment method table
-- and the clients table results should have the name of tfhe cliuent and the payment methjod
select c.name, p.invoice_id, p.amount, pm.name
from payments p
join clients c on c.client_id=p.client_id
join payment_methods pm on p.payment_method=pm.payment_method_id;