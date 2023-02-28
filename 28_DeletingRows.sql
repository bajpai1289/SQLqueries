DELETE FROM invoices
WHERE invoice_id IN
    (SELECT * 
    FROM client
    WHERE name = 'Myworks')