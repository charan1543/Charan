-- having clause practice
-- Write a query that finds customers who have placed orders 
--  a total amount greater than 100. The result
--  should only include customers who have placed more than 1 order.
SELECT
    CUSTOMER_ID,
    COUNT(ORDER_ID)  AS ORDER_COUNT,
    SUM(Total_amount) AS TOTAL_SPENT
FROM
    ORDERS
GROUP BY
    CUSTOMER_ID
HAVING COUNT(ORDER_ID) > 1
       AND SUM(Total_amount) > 100;
-- Write a query to find departments where the average salary is greater than $50,000. You can use the following tables:

SELECT
    EMPLOYEE_ID,
    SALARY,
    DEPARTMENT_ID,
    AVG(SALARY) AS AVERAGE_SALARY
FROM
    HR.EMPLOYEES
GROUP BY
    DEPARTMENT_ID
HAVING
    COUNT Avg(salary) > 50000;

SELECT department_id AVG(salary) AS average_salary
FROM hr.employees
GROUP BY department_id
HAVING AVG(salary) > 50000;

-- Find departments with more than 3 employees.

SELECT
    DEPARTMENT_ID,
    COUNT(*) AS EMPLOYEE_COUNT
FROM
    HR.EMPLOYEES
GROUP BY
    DEPARTMENT_ID
HAVING
    COUNT(*) > 3;

-- Find employees who earn more than the average salary in their department.
SELECT
    DEPARTMENT_ID,
    AVG(SALARY) AS AVERAGE_SALARY
FROM
    HR.EMPLOYEES
GROUP BY
    DEPARTMENT_ID
HAVING
    AVG(SALARY) < SALARY;

SELECT
    E.EMPLOYEE_ID,
    E.SALARY,
    E.DEPARTMENT_ID
FROM
         HR.EMPLOYEES E
    JOIN (
        SELECT
            DEPARTMENT_ID,
            AVG(SALARY) AS AVG_SALARY
        FROM
            HR.EMPLOYEES
        GROUP BY
            DEPARTMENT_ID
    ) D_AVG ON E.DEPARTMENT_ID = D_AVG.DEPARTMENT_ID
WHERE
    E.SALARY > D_AVG.AVG_SALARY;

-- List the top 3 highest paid employees.
SELECT
    EMPLOYEE_ID,
    SALARY,
    DEPARTMENT_ID,
    HIRE_DATE
FROM
    HR.EMPLOYEES
ORDER BY
    SALARY DESC
FETCH FIRST 3 ROWS ONLY;

-- Retrieve the total salary of employees for each department.
select department_id, sum (salary) from hr.employees group by department_id;

-- Retrieve the department names and the total salary for departments where the total salary is greater than 100,000.
select department_id, sum(salary) from hr.employees group by department_id having sum(salary)>100000;
select * from hr.employees where last_name like "%a";
-- Retrieve all employees who work in the 'IT' or 'Sales' department.
select * from HR.employees where job_id = 'it_PROG' or job_id = 'SA_REP'; 
select * from hr.employees where job_id in('it_PROG','SA_REP');
select *from hr.employees;
-- Retrieve employees whose salary is between 40,000 and 60,000.
select * from hr.employees where salary between 4000and 6000;


select distinct job_ID from hr.employees;
-- Retrieve the names and salaries of employees, along with their department name. You have two tables: employees and departments. The employees table has a department_id column, and the departments table has a department_id and department_name column.
SELECT e.first_name, e.last_name,e.salary,d.department_name
from hr.employees e
JOIN hr.departments d on e.department_id= d.department_id;
/*
operators
arthemetic operators +,-,*,%,/.
logical and or not
relational =, >, <,<=,>=
set union,union all, intersect, escept
special like, is, between, in.

Functions: 
number functions :ROUND, trunc, ceil, floor, mod, sqrt
string : upper, lower, initcap,length,substr,instr, TRIM, ltrim, rtrim, CONCATSELECT */
select first_name
UPPER(full_name) AS uppercase_name,
LENGTH(full_name) AS name_length,
SUBSTR(full_name, 1, 5) AS first_five_chars,
INSTR(full_name, 'a') AS position_of_a
FROM hr.employees;

-- Clean the names:
-- Remove any leading or trailing spaces.
-- Capitalize each word

select initcap((s_name)) from students;
-- Find the email domain (everything after the @ symbol).
SELECT
    SUBSTR(EMAIL,
           INSTR(EMAIL, '@') + 1) AS DOMAIN
FROM
    HR.EMPLOYEES;

-- Find students who use an GMEIL email (email ends with @gmail.com).
select * from hr.employees where email like'@gmail.com';
-- Round the salaries to the nearest thousand
select first_name, last_name, round(salary) as rounded_salary from hr.employees;
-- Find the salary difference (Max - Min)
select max(salary) - min(salary) as salary_difference from hr.employees;
-- Find the salary difference (Max - Min)
select avg(salary) from hr.employees;
-- Find the remainder of the salary when divided by 10,000
select first_name,last_name,Job_id,mod (salary,10000)as salary_remainder from hr.employees;
-- Calculate number of years worked
select first_name,last_name, floor(months_between(sysdate,hire_date)/12)as years_with_company from hr.employees;

select*from hr.employees;