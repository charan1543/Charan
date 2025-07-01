Comparison Operators & logical Operators need where cluase
SELECT * FROM hr.employees WHERE salary > 15000;
SELECT * FROM hr.employees WHERE department_id = 102 AND salary > 20000;
select * from hr.employees;
SELECT * FROM hr.employees WHERE job_id != 'IT_PROG';

-- Show all employees with a 10% bonus calculated from their salary.
select FIRST_NAME, salary, salary * 0.10 AS bonus FROM hr.employees;

-- Calculate new salary if everyone gets a 5% raise.
select FIRST_NAME, salary, salary*0.5 as hike from hr.employees;

-- Get a list of all employees from both tables without duplicates.
select * from employee
union
select * from hr.employees;

-- Get a list of all employees from both tables, including duplicates.
select * from employee
union all
select * from hr.employees;

-- Get a list of employees who are present in both tables.
select * from employee
intersect
select * FROM hr.employees;

-- Find employees who are in employee but not in hr.employees.
select * from employee
except
select * from hr.employees;

select * from hr.employees
except
select * from employee;

-- Subqueries in Oracle SQL
-- Subqueries in Oracle SQL are queries nested inside other SQL queries.
-- They are used to perform operations that depend on the results of another query.
-- You can use a subquery in:
-- SELECT clause
-- FROM clause (called inline view)
-- WHERE clause
-- HAVING clause
-- DML statements: INSERT, UPDATE, DELETE
-- Types of Subqueries
-- 1. Single Row Subquery
    -- 2. Multiple Row Subquery
    -- 3. Subquery in FROM Clause (INLINE View)
    -- 4. Subquery in  the SELECT Clause

-- Find employees who earn more than the average salary
select * from employee where salary> (select avg(salary)from employee);

-- Find employees who work in the same department as 'Alice'.
select first_name from employee where department_id = (select department_id from employee where FIRST_NAME = 'alice') and FIRST_NAME != 'alice';

-- List all departments with no employees?
select dep_id FROM departments WHERE dep_id NOT IN ( SELECT DISTINCT department_id  FROM hr.Employees WHERE department_id IS NOT NULL);
-- Get the highest-paid employee in each department
SELECT first_name, salary, department_id FROM hr.Employees e WHERE salary = (SELECT MAX(salary)FROM hr.Employees WHERE department_id = e.department_id);

-- Find departments where all employees earn more than $50,000
select dep_id from departments where dep_id in (select department_id from hr. employees group by department_id HAVING min(salary)>5000);

-- List employees whose salary is above the salary of any employee in HR
SELECT first_name, salary FROM hr.Employees WHERE salary > ANY ( SELECT salary FROM hr.Employees WHERE department_id = 1);

-- Find employees who do not belong to any department using NOT EXISTS.
SELECT first_name FROM hr.Employees e WHERE NOT EXISTS ( SELECT 1 FROM Departments d WHERE d.dep_id = e.department_id );

-- List the top 2 highest-paid employees (without using LIMIT or TOP)
SELECT first_name, salary FROM hr.Employees e WHERE 1 >= (SELECT COUNT(*) FROM hr.Employees WHERE salary > e.salary );

-- | Type                | Description                                           |
-- | ------------------- | ----------------------------------------------------- |
-- | **B-Tree Index**    | Default in most databases; balanced tree structure.   |
-- | **Unique Index**    | Ensures no duplicate values in the indexed column(s). |
-- | **Composite Index** | Uses multiple columns.                                |
-- | **Full-Text Index** | For searching within large text fields.               |
-- | **Spatial Index**   | For geographic data types.                            |

CREATE INDEX idx_last_name ON employee (last_name);
DROP INDEX inx_EMP;
drop index B_TREE_ind;
DROP index COMPLEX_ID;
DROP index LASTNAME_IDX;
DROP index NAME_IDX;

select last_name from employee;