USE sql_store;
-- you only have to prefix the table that are not part of the current database
select *
from order_items oi
join sql_inventory.products p on oi.product_id=p.product_id;