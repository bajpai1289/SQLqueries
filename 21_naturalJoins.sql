-- natural join forces the database engine to get the most optimal joining 
-- column, we dont use this as it can rsult in unexpected unpredictible results 
SELECT 
	o.order_id,
    c.first_name
FROM orders o
NATURAL JOIN customers c;