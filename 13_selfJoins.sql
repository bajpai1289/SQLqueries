use sql_hr;

SELECT * 
FROM employees e
JOIN employees m ON e.reports_to=m.employee_id; -- m to select only the employees

-- simplifying the queries
SELECT 
	e.employee_id,
    e.first_name,
    m.first_name as mananger
FROM employees e
JOIN employees m ON e.reports_to=m.employee_id; 