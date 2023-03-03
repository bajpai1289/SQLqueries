SELECT *
FROM (
	SELECT 
		client_id,
		name,
		(SELECT SUM(invoice_total)
			FROM invoices
			WHERE client_id = c.client_id) as total_sales,
			(SELECT AVG(invoice_total) from invoices) as average_invoice,
			(SELECT (total_sales-average_invoice)) as differnce
	FROM clients c
) as summary
WHERE total_sales IS NOT NULL;
