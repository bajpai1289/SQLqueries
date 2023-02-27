SELECT *
FROM orders o
JOIN customers c
	ON o.customer_id = c.customer_id;

-- we have another way to write this command
SELECT *
FROM orders o, customers c;
-- WHERE o.customer_id=c.customer_id;
-- we DO NOT ABSOLUTELY USE IT as it return cross joins in case wehere statement turn out wrongly forgotten