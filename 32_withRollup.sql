SELECT client_id, state, city,sum(invoice_total) as total_sales
from invoices i
join clients c using(client_id)
group by state, city with rollup;

select pm.name as payment_method, sum(amount) as total
from payments p
join payment_methods pm
	on p.payment_method=pm.payment_method_id
group by pm.name with rollup;
