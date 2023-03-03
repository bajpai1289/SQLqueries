-- select the clients that have an invoice
select distinct (client_id) 
from clients c
join invoices i
	using (client_id)
where invoice_id is not null;

select *
from clients
where client_id in (
	select distinct client_id
    from invoices
);


-- using the exist operatot

select *
from clients c
where exists(
	select client_id
    from invoices
    where client_id = c.client_id
);

-- find the products that have never been ordered
USE sql_store;

select name
from products p
where not exists(
	select product_id
    from order_items
    where p.product_id=order_items.product_id
); 