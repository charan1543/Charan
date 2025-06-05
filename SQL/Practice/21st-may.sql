select * from employee;
-- subqueries
-- Subquery in the FROM Clause (INLINE View)
-- A subquery in the FROM clause acts like a temporary table. You must give it an alias. 
-- This is useful for pre-aggregating or filtering data before joining or querying.
-- List departments with an average salary > 8000
SELECT department_name FROM department WHERE department_id IN (SELECT department_id 
    FROM employee GROUP BY department_id HAVING AVG(salary) > 8000 );
-- 4. Subquery in the SELECT Clause:
SELECT order_id, Total_amount, (SELECT name FROM customers WHERE customers.customer_id = orders.customer_id) AS customer_name FROM orders;
