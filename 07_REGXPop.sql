select *
from customers
where last_name like '%field%';

-- this can be written using regular expressions like this
select *
from customers
where last_name REGEXP 'field';

select *
from customers
where last_name REGEXP '[gim]e'; -- matches gi ie me
 
 
 -- get the customers whosse 
		-- first name are elka or amber
        -- last name end with ey or on
        -- last name start with my or contains se
        -- last name contain b followed by r or u
select * from customers
where first_name 
regexp 'elka|ambur';

select * from customers
where last_name 
regexp 'ey$|on$';

select * from customers
where last_name
regexp '^my|se';

select * from customers
where last_name 
regexp 'b[ru]';
-- this is also a valid solution
select * from customers
where last_name 
regexp 'br|bu';