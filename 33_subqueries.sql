-- wrtie a simple queries that are more expensive than lettuce(id=3)
SELECT *
FROM products
WHERE unit_price>(
	SELECT unit_price
    FROM products
    WHERE product_id =3) ;

-- in sql_hr database 
	-- find employee who earns more than average
    
use sql_hr;
SELECT *
FROM employees
WHERE salary>( 
    SELECT AVG(salary) as average
    FROM employees
);


-- using IN in subqueries
SELECT *
FROM products
WHERE product_id NOT IN(
SELECT DISTINCT product_id
FROM order_items);


SELECT * FROM clients
WHERE client_id not in(
SELECT distinct client_id 
FROM invoices);

SELECT *
FROM clients
LEFT JOIN invoices USING (client_id)
WHERE invoice_id IS NULL
 
-- CREATING A COMPLEX SUBQUERIES    
-- SELECTING THE CUSTOMERS WHO HAVE ORDERED LETTUCE (PRODUCT ID =3)
SELECT customer_id, first_name, last_name 
FROM customers
WHERE customer_id IN(
    SELECT customer_id 
    FROM orders
    WHERE order_id IN(
        SELECT order_id
        FROM order_items
        WHERE product_id = 3
    )
);

-- using 1 join
SELECT *
from customers
where customer_id IN(
    SELECT o.customer_id
    FROM order_items oi
    JOIN orders o USING (order_id)
    WHERE product_id =3
);
 -- using all joins 
 -- since the cusotmere 2 has ordered lettuce twice we will be getting t2 twice 
 SELECT distinct customer_id, first_name, last_name
 FROM customers c
 JOIN orders o USING (customer_id)
 JOIN order_items oi USING (order_id)
 WHERE oi.product_id =3;