CREATE VIEW EMP_SALARY_VIEW AS
    SELECT
        FIRST_NAME,
        LAST_NAME,
        SALARY
    FROM
        HR.EMPLOYEES;

CREATE VIEW HIGH_EARNERS AS
    SELECT
        FIRST_NAME,
        LAST_NAME,
        SALARY
    FROM
        WORKERS
    WHERE
        SALARY > 5000;

SELECT
    *
FROM
    HIGH_EARNERS;

DROP VIEW HIGH_EARNERS;

CREATE VIEW HIGH_EARNERS AS
    SELECT
        FIRST_NAME,
        LAST_NAME,
        SALARY
    FROM
        WORKERS;

select * from HIGH_EARNERS;


create synonym high_level_earners for high_earners;

drop synonym high_level_earners;
drop view high_earners;

-- create table practice (employee_id number, first_name (VARCHAR2), last_name (VARCHAR2), salary number);
-- simple tasks
select * from employees;
select * from employees where department_id =90;
-- select * from employees order by salary DSC;
select first_name ||' ' || last_name as employees_full_name from hr.employees;
-- Show unique job titles
select distinct job_id from hr.employees;
-- Count total number of employees
select count(*) from employees;
-- Find employees hired after 01-Jan-2010
select first_name, hire_date from hr.employees where hire_date>To_date('2010-01-01', 'YYYY-MM-DD');
-- Display employee names and salaries with a condition
select first_name, last_name, salary from hr.employees where salary between 4000 and 10000;
-- Retrieve the first name, last name, and salary of all employees whose salary is greater than 6000.
select first_name,last_name,salary from hr.employees;
-- List the first name, last name, and job title of employees who have the job title "IT_PROG."
select first_name,last_name, job_id from hr.employees where JOB_ID = 'IT_PROG';
-- Find the total number of employees in each department and show the department ID along with the count of employees.
select depeartment_id, count(*) as employees_count from employees group by department_id;
-- Display the first and last names of all employees whose last name starts with the letter "S."
select first_name,last_name from hr.employees where last_name like'%s';
select  first_name,hire_date from hr.employees where extract (YEAR FROM hire_date) = 2005;
-- Display the full names (first and last name combined) of employees who earn a salary less than 4000.
select  first_name || ' ' || last_name as full_names, salary from hr.employees where salary <4000 ;
-- Find all employees who do not belong to any department (i.e., where department_id is null).
select * from hr.employees where department_id is null;
-- List the first name, last name, and salary of employees who earn between 3000 and 6000.
select first_name, last_name, salary from hr.employees where salary between 3000 and 6000;
-- Show the first name, last name, and manager ID of employees who report to manager ID 100.
select  first_name, last_name, manager_ID from hr.employees where manager_ID = 100;
-- Display the names of employees whose first name ends with the letter "a".
select * from hr.employees where first_name like '%a';
-- Find the total number of employees who have a commission percentage (commission_pct) assigned (i.e., not null).
select * from hr.employees where commission_pct is not null;
-- Show the employee names (first and last) and their hire date, but only for employees hired before January 1, 2000.
select first_name, last_name, hire_date from hr.employees where trunc(hire_date) < To_date ('01-01-2000', 'DD-MM-YYYY');
-- Find the highest salary and the employee who earns that salary.
select * from hr.employees where salary =(select max(salary) from hr.employees);
-- List all employees who do not have a job title (job_id) of "SA_REP"
select * from hr.employees where job_id != 'SA_REP';
-- Display the total salary expense for each department (sum of all employee salaries) and the department ID.
select department_id, sum(salary)from hr.employees group by department_id;
-- Find the average salary in each job title (job_id).
select job_id, avg(salary) from hr.employees group by job_id;
-- For each manager, show the total number of employees reporting to them.
select manager_id,first_name, count(*) as count_total_employees from hr.employees group by manager_id;
-- List departments where the total salary of employees is greater than 20,000.
select department_id, sum(salary) as total_salary from hr.employees group by department_id having sum(salary) > 20000;

select * from hr.employees;