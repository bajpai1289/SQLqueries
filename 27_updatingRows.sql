UPDATE invoices 
SET payment_total=default, payment_date=default
WHERE invoice_id=1;

UPDATE invoices 
SET payment_total=invoice_total*0.5, payment_date=due_date
WHERE client_id in (3,4); -- where clause is optional so if we wanna update all the columns simply leave out the where cluase

--
UPDATE customers
SET points=points+50
WHERE birth_date<'1990-01-01';

-- using subqueries n update
UPDATE invoices
SET 
	payment_total=invoice_total*0.5,
    payment_date = due_date
WHERE client_id IN
			(SELECT client_id
            FROM clients
            WHERE state IN ('CA','NY'));
update orders
set comments = 'Gold Customer' IN(            
SELECT customer_id
FROM customers
WHERE points>3000)
             