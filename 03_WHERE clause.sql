SELECT * from customers where birth_date>'1990-01-01'
SELECT *  from orders where order_date>='2019-01-01';

select * from Customers where birth_date>='1990-01-01' or points>1000 and state='VA';

select * from Customers where not  (birth_date>='1990-01-01' or points>1000);

-- from the oreder_items table get the items 
-- for order #6 
-- where the total price is greater than 30
select * from order_items where order_id=6 and unit_price*quantity>30