select *
from Customers
where state='VA' or state='GA' or state='FL';
-- there is a shorted more cleaner way of getting the same results

select * from Customers
WHERE state in ('VA', 'GA', 'FL');

-- return products with quantity in stock equal 49, 38, 72
select * from products
where quantity_in_stock in (49,38,72);