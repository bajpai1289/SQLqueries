select * 
from customers
order by first_name;

select * 
from customers
order by first_name desc;

select * 
from customers
order by  state desc,first_name;

-- sorting by the name of the columns
select first_name, last_name, 10 as Points
from customers
order by 1,2;

select order_id, product_id, quantity, unit_price
from order_items
where order_id=2
order by quantity*unit_price desc;