SELECT 
	order_id,
    order_date,
    CASE
		WHEN YEAR(order_date)=YEAR(NOW()) THEN 'Active'
        WHEN YEAR(order_date)=YEAR(NOW())-1 THEN 'Last year'
        WHEN YEAR(order_date)<YEAR(NOW())-2 THEN 'Archived'
        ELSE 'Future'
	END as category
FROM orders;

-- exercise 
SELECT 
	concat(first_name, ' ', last_name) as customer,
    points,
    CASE
		WHEN points>3000 THEN 'Gold'
        WHEN points>2000 and points<3000 THEN 'Silver'
        WHEN points<2000 THEN 'Bronze'
		ELSE 'Normal'
	END as category
FROM customers
ORDER BY points DESC
