select * 
from customers
where last_name like 'b%';

select * 
from customers
where last_name like 'brush%';
-- b can be present anywhere in the last name
select * 
from customers
where last_name like '%b%';

-- "_" matches the single character
-- last name is exactly six characters long and the last word shouild be y
select * 
from customers
where last_name like 'b____y';

-- get customers whose addresses contain TRAIL or AVENUE
-- phone numbers end with 9
select * 
from customers
where (address like '%TRAIL%' or address like '%AVENUE%');

select * 
from customers
where phone like '%9';

