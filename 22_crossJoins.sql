SELECT 
	c.first_name as customer,
    p.name as product
FROM customers c
CROSS JOIN products p  -- explicit syntax for cross joins
order by c.first_name;

-- implicit cyntax

SELECT 
	c.first_name as customer,
    p.name as product
FROM customers c, orders o 
order by c.first_name;

-- do a cross joins between shippers and products first by implicit and then by implicit 

SELECT *
FROM shippers sh
CROSS JOIN products p;

SELECT *
FROM shippers sh, products p;


