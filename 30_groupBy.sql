-- we will see total sales for each state and city combination
SELECT
	state,
    city,
	SUM(invoice_total) as total_sales
FROM invoices
join clients using(client_id)
-- where invoice_date>='2019-07-01'-- 
group by state, city;
-- order by total_sales desc 

select p.date, pm.name, SUM(p.amount) as total_payments
from payments p
join payment_methods pm on p.payment_method=pm.payment_method_id 
group by p.date, pm.name
order by p.date; 
