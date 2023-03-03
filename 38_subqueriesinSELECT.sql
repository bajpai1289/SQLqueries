SELECT 
	invoice_id,
    invoice_total,
    (select avg(invoice_total) from invoices) as invoice_average,
    invoice_total-(SELECT invoice_average) as difference
FROM invoices;

-- excercixe
SELECT 
	client_id,
    name,
    (SELECT SUM(invoice_total)
		FROM invoices
        WHERE client_id = c.client_id) as total_sales,
        (SELECT AVG(invoice_total) from invoices) as average_invoice,
        (SELECT (total_sales-average_invoice)) as differnce
FROM clients c
