SELECT  
	order_id,
    order_date,
    'Active' as status 
FROM orders
WHERE order_date >= '2019-01-01'
UNION  
SELECT  
	order_id,
    order_date,
    'Archived' as status 
FROM orders
WHERE order_date < '2019-01-01';

SELECT first_name
from customers
union
select name 
from shippers;

-- if less than 2000 points, type = Bronze
-- n=b/w 2k to 3k points type= silver
SELECT 
	customer_id,
    first_name,
    points,
    'Bronze' as type
FROM customers
where points<2000
UNION
SELECT 
	customer_id,
    first_name,
    points,
    'Silver' as type
FROM customers
where points>=2000 and points<3000
union
SELECT 
	customer_id,
    first_name,
    points,
    'Gold' as type
FROM customers
where points>=3000
order by first_name;
