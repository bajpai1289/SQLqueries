-- select invoices that are latger than all invoices of client 3
SELECT * 
FROM invoices
WHERE invoice_total>(
SELECT MAX(invoice_total)
FROM invoices
WHERE client_id =3);

-- another wy to solve this pro blem is 

SELECT *
FROM invoices
WHERE invoice_total>ALL(
	SELECT invoice_total
    FROM invoices
    WHERE client_id =3 
)
 