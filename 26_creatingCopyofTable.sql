CREATE TABLE orders_archived AS
SELECT * FROM orders;
INSERT INTO orders_archived
SELECT *
FROM orders
WHERE order_date<'2019-01-01';

--
Create table invoices_archived AS 
SELECT i.invoice_id, i.number, c.name, i.invoice_total, i.payment_total, i.payment_date
from invoices i
join clients c
	on c.client_id=i.client_id
WHERE i.payment_date is not NULL;

