 -- select customers who have more than 100 and less than 3000 points
 SELECT * FROM sql_store.customers 
 WHERE points>=1000 and points<=3000;
-- this can be done easily using between operator
 select *
 from customers
 where points between 1000 and 3000;
 
 -- return customers born between 1/1/1990 and 1/1/2000
 select *
 from customers
 where birth_date between '1990-01-01' and '2000-01-01';