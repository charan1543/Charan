SELECT * FROM EMPLOYEE;
-- List the first and last names of employees who work in department 10.
select first_name, last_name from employee where DEPARTMENT_ID=10;
Find the names of all departments.
select job_id from employee;
-- What is the total salary paid to all employees?
select sum(salry) from employee;
-- Which employees were hired after January 1, 2019?
select first_name ||" "|| last_name as full name from empolyee where hire_date>to_date('01-01-2009', 'DD-MM-YYYY');
-- List employees and their department names.
select e.first_name, d.DEPARTMENT_ID 
from employee e
join department d on e.DEPARTMENT_ID=d.DEPARTMENT_ID;
-- Find the department with the highest total salary
select d.DEPARTMENT_ID, sum(salary)
from empolyee
join department d on e.department_id = d.department_id
group by d.department_id
order by salary DESC
fetch first 1 row only;
-- Show the average salary per department.
select department_id, avg (salary) as avg_salary from employee group by department_id;
-- Find employees whose names start with 'J'.
select * from employee where first_name like 'j%';
-- List employees who do not belong to any department listed in the DEPARTMENTS table.
select * from employee where department_id not in (select department_id from department);
-- Find the second highest salary among all employees.
select first_name, max(salary) as high_salay from employee where salary <(select max(salary) from empoloyee);
-- List employees who earn more than the average salary of their department.
SELECT
    *
FROM
    EMPLOYEES E
WHERE
    E.SALARY > (
        SELECT
            AVG(SALARY)
        FROM
            EMPLOYEES
        WHERE
            DEPARTMENT_ID = E.DEPARTMENT_ID
    );

    -- Subqueries in Oracle SQL
    -- Subqueries in Oracle SQL are queries nested inside other SQL queries.
    --  They are used to perform operations that depend on the results of another query.
    --  Subqueries can appear in:
-- -- You can use a subquery in:
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

--     Returns one row and one column.
-- Used with comparison operators:( =, <, >, <=, >=, <> )
select first_name,salary from employee where salary = (select max(salary)from employee);
-- Returns more than one row.
-- Use with operators: IN, ANY, ALL
select first_name, department_id,salary from employee where department_id in (select department_id from employee where salary = 24000);