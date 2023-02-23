USE sql_store;

SELECT  * -- important, the columns that you wanna results of
FROM customers -- important, table you wanna get the results from
-- WHERE customer_id=1 -- filter cluase
ORDER BY first_name; -- column that we wanna sort the results on
-- we cannot change the order of these statements