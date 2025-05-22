| Type                | Runs Once? | Uses Outer Query Data? |
| ------------------- | ---------- | ---------------------- |
| Simple Subquery     | ✅ Yes      | ❌ No                   |
| Correlated Subquery | ❌ No       | ✅ Yes                  |

--Write a query to find all employees in the IT Progremars.
select * from employee where job_id = it_prog;
-- How do you list employees ordered by their hire date, from newest to oldest?
select * from employee order by HIRE_DATE DESC;
-- Show the total salary per department.
select FIRST_NAME,suj(salary)as total_salary from employee group by FIRST_NAME;
select * from employee;
-- Write a query to display employee names along with their department names (from employees and departments tables).
SELECT
    E.FIRST_NAME,
    E.LAST_NAME,
    d.DEPARTMENT_NAME
FROM
         EMPLOYEE E
    JOIN DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;
-- Subquery in SELECT Clause
SELECT first_name,
       (SELECT job_role 
        FROM departments 
        WHERE department_id = e.department_id) AS dept_name
FROM employee e;

-- Correlated Subquery
SELECT e1.first_name, e1.salary
FROM employee e1
WHERE salary > (
    SELECT AVG(salary)
    FROM employee e2
    WHERE e1.department_id = e2.department_id
);
-- Simple Subqueries
-- All employees who work in the department with the name 'IT'
SELECT first_name, department_id
FROM employee
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE job_role = 'IT'
);

-- Find employees who work in the Sales or IT department

select * from employee where department_id in (sales,it_prog);
select * from employee where department_id in (select DEPARTMENT_ID from departments where departments in ('sales','it_prog'));
select * from departments;
SELECT e.*
FROM employee e
JOIN departments d ON e.department_id = d.department_id
WHERE d.department_name = 'Sales'
   OR d.department_name = 'IT_PROG';

SELECT first_name, salary
FROM employee
WHERE salary > (
    SELECT AVG(salary) as avg_salary
    FROM employee
);
-- above query alies names not working
SELECT
    FIRST_NAME,
    SALARY
FROM
    EMPLOYEE E
WHERE
    E.SALARY > (
        SELECT
            AVG(SALARY)
        FROM
            EMPLOYEE
    );
SELECT first_name, salary
FROM employee
WHERE department_id IN (
    SELECT department_id
    FROM departments
    WHERE department_name = 'Sales' OR department_name = 'IT'
);
select * from departments;
SELECT first_name, salary
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
)
ORDER BY salary DESC;
-- HAVING Clause
SELECT department_id, COUNT(*) AS num_employees
FROM employee
GROUP BY department_id
HAVING COUNT(*) > (
    SELECT AVG(emp_count)
    FROM (
        SELECT department_id, COUNT(*) AS emp_count
        FROM employee
        GROUP BY department_id
    )
);
create table workers2 as
select * from workers WHERE job_role in (select job_role from workers where job_role = 'Manager');
select * from workers;
select job_role from workers where job_role = 'Manager';
select * from workers2;
drop table workers2;
CREATE TABLE emp_copy AS
SELECT * FROM employee WHERE 1=0;
drop table emp_copy;
