-- select employees whose salary is above average in their office
SELECT * from employees where salary>(
SELECT AVG(salary)
FROM employees);

-- for each employee
-- 		calculate the average salary for employee.office
-- 		return the employee if salary > avg

SELECT *
FROM employees e 
WHERE salary >(
	SELECT AVG(salary)
	FROM employees
    WHERE office_id = e.office_id
);


-- get the invoices that are larger than the 
-- clients average invoice amount 

select *
from invoices i
where invoice_total>(
	SELECT AVG(invoice_total)
    from invoices 
    where client_id = i.client_id
);