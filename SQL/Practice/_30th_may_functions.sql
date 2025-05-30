SELECT department_id, COUNT(*) AS num_employees, AVG(salary) AS avg_salary FROM employee GROUP BY department_id;

SELECT DEPARTMENT_id,
SUM(TO_NUMBER(SALARY)) AS TOTAL_SALARY,
ROUND(AVG(TO_NUMBER(SALARY)), 2) AS AVERAGE_SALARY,
COUNT(*) AS NUM_EMPLOYEES,
MIN(TO_DATE(HIRE_DATE, 'YYYY-MM-DD')) AS EARLIEST_HIRE_DATE FROM EMPLOYEES GROUP BY department_id;

-- -- Most Senior Employee in Each Department
-- SELECT E.DEPARTMENT_ID, E.EMPLOYEE_ID, E.NAME, TO_DATE(E.HIRE_DATE, 'YYYY-MM-DD') AS HIRE_DATE
-- FROM EMPLOYEE E where TO_DATE(E.HIRE_DATE, 'YYYY-MM-DD') = 
-- SELECT MIN(TO_DATE(HIRE_DATE, 'YYYY-MM-DD')) FROM EMPLOYEE WHERE department_id = E.department_id

SELECT 
    E.DEPARTMENT_ID, 
    E.EMPLOYEE_ID, 
    TO_DATE(E.HIRE_DATE, 'YYYY-MM-DD') AS HIRE_DATE
FROM 
    EMPLOYEE E
WHERE 
    TO_DATE(E.HIRE_DATE, 'YYYY-MM-DD') = (
        SELECT MIN(TO_DATE(HIRE_DATE, 'YYYY-MM-DD'))
        FROM EMPLOYEE
        WHERE DEPARTMENT_ID = E.DEPARTMENT_ID
    );
-- Find earliest hire date per department?
select department_id min (TO_DATE(hire_date,'yyyy-mm-dd'))
-- High-Earning Departments
SELECT department_id, sum (TO_NUMBER(salary))as total_salary from employee group by DEPARTMENT_ID
having sum (TO_NUMBER(salary))>10000;
-- Average Tenure Per Department
select department_id, ROUND(AVG(MONTHS_BETWEEN(SYSDATE, TO_DATE(HIRE_DATE, 'YYYY-MM-DD')) / 12), 2) AS AVG_TENURE_YEARS
from employee group by department_id;
-- Find Earliest Hire Date per Department?

SELECT 
    department_id, 
    MIN(TO_DATE(hire_date, 'YYYY-MM-DD')) AS early_hire_date
FROM 
    employee
GROUP BY 
    department_id;
-- Convert SALARY from VARCHAR2 to NUMBER and calculate total salary
select sum (TO_NUMBER (salary)) as total_salary from employee;
-- Count employees hired after a certain date
SELECT count(*) as employee_count from employee where to_date (hire_date,'yyyy-mm-dd')>to_date ('2025 -01-09','yyyy-mm-dd')
-- Get average tenure (in years) of employees per department
SELECT DEPARTMENT_ID, SUM(TO_NUMBER(SALARY)) AS TOTAL_SALARY from employee GROUP BY DEPARTMENT_ID;
-- Find the Department with the Highest Average Salary
select department_id, round (avg (TO_NUMBER(salary)),2) as avg_salary from employee
group by department_id 
order by avg_salary DESC fetch first 1 rows only;
select department_id, avg (salary) avg_salary from employee group by department_id order by avg_salary DESC fetch first 1 rows only;
-- Convert Date Format in HIRE_DATE to Different Format (using TO_CHAR())
select first_name, department_id, to_char(to_date (hire_date, 'yyyy-mm-dd'),'dd-mon-yyyy')as Different_format from employee;
-- Find Employees with Hire Date in a Specific Year (using EXTRACT()
-- SELECT
--     DEPARTMENT_ID SUM(TO_NUMBER(SALARY)) AS TOTAL_SALARY from employee group by DEPARTMENT_ID;

SELECT 
    DEPARTMENT_ID, 
    SUM(TO_NUMBER(SALARY)) AS TOTAL_SALARY
FROM EMPLOYEE
GROUP BY DEPARTMENT_ID;

-- Find Employees with Similar Names (using LIKE)
SELECT department_id, first_name 
FROM employee 
WHERE first_name LIKE 'A%';
-- Find Employees Whose Names Start with 'A' or 'B'
select department_id, first_name from employee where first_name like 'A%' or first_name like 'B%';
-- Find the Highest Salary in Each Department
select first_name, max (TO_NUMBER(salary)) as max_sal from employee GROUP by department_id;
-- Concatenate Employee Name and Department ID (using CONCAT() or ||)
select first_name || ''|| last_name ||'' || department_id as concat from employee;
-- Update Employees' Salary (using TO_NUMBER() for conversion)
update employee set salary = to_char (to_number(salary)*1.10) where department_id =10;
rollback;
select * from employee where salary is null;
-- List All Employees in Alphabetical Order (using ORDER BY)
select * from employee order by first_name;
-- Get Employees in a Date Range (using BETWEEN)
select first_name, last_name, hire_date from employee where to_date (hire_date).