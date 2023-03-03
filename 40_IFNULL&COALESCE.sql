SELECT 
	order_id,
    IFNULL(shipper_id, 'Not assigned') as shipper
from sql_store.orders;

SELECT 
	concat(first_name,' ', last_name) as customer,
    ifnull(phone, 'Unkown') as phone
FROM customers


