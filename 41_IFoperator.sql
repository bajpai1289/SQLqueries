SELECT 
	order_id,
    order_date,
	IF(
		YEAR(order_date)=YEAR(NOW()),
        'Active',
        'Archived') as category
FROM orders;

-- exercise
SELECT 
	product_id,
    name,
    count(*) as orders,
    IF(count(*)>1,'Many Times','ONCE')
FROM products
left JOIN order_items
	USING(product_id)
group by product_id, name