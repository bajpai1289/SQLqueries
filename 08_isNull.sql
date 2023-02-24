 select *
 from customers 
 where phone is null;
 
 -- get the orders that are not shipped
 select *
 from orders
 where shipped_date is null;
 