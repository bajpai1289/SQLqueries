select 
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name as shipper
from customers c
right join orders o
	on c.customer_id = o.customer_id
left join shippers sh
	on o.shipper_id = sh.shipper_id
order by c.customer_id;

-- produces order_date order_id, first_name, shipper, status
select o.order_date, o.order_id, c.first_name, sh.name as shipper, os.name as status
from customers c
join orders o -- we are using inner join as this condition is always valid 
	on o.customer_id=c.customer_id
left join shippers sh
	on sh.shipper_id=o.shipper_id
left join order_statuses os
	on os.order_status_id=o.status;
