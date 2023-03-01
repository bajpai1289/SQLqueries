-- we will see total sales for each state and city combination
SELECT
	client_id,
	SUM(invoice_total) as total_sales,
    count(*) as number_of_invoices  
FROM invoices
-- where invoice_date>='2019-07-01'-- 
group by client_id 
having total_sales>500 and number_of_invoices>5;
-- order by total_sales desc 

-- Get the customers locaten in VA 
-- who have spend more than $100
SELECT 
	customer_id,
    c.first_name,
    c.last_name,
    SUM(oi.quantity*oi.unit_price) as total_sales
FROM customers c
JOIN orders o 
	USING (customer_id)
JOIN order_items oi
	USING(order_id)
WHERE state='VA'
GROUP BY 
	customer_id,
    c.first_name,
    c.last_name
HAVING total_sales>100;