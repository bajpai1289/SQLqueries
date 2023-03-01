SELECT 
	MAX(invoice_total) as highest,
    MIN(invoice_total) as lowest,
    AVG(invoice_total) as average
FROM invoices;

SELECT 
	MAX(payment_date) as highest,
    MIN(invoice_total) as lowest,
    AVG(invoice_total) as average,
    SUM(invoice_total*1.1) as total,
    COUNT(invoice_total) as number_of_invoices,
    COUNT(payment_date) as count_of_payments,  -- it doesnt consider null values
    COUNT(distinct client_id) as total_records -- including null values
    
FROM invoices
WHERE invoice_date>'2019-07-01';

-- excercise

SELECT 
	'First half of 2019' as date_range,
    SUM(invoice_total) as total_sales,
    SUM(payment_total) as total_payments,
    SUM(invoice_total-payment_total) as waht_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION 
select 
	'Second half of 2019' as date_range,
    SUM(invoice_total) as total_sales,
    SUM(payment_total) as total_payments,
    SUM(invoice_total-payment_total) as waht_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-07-01' AND '2019-12-31'
UNION
select 
	'total' as date_range,
    SUM(invoice_total) as total_sales,
    SUM(payment_total) as total_payments,
    SUM(invoice_total-payment_total) as waht_we_expect
FROM invoices
WHERE invoice_date BETWEEN '2019-01-01' AND '2019-12-31';
