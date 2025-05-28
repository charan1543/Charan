select employee_id, salary, 1000 + salary as salary_with_bonus from hr.employees;
select employee_id, salary, salary - 500 as salary_after_tax from hr.employees;
select employee_id, salary, 1000 + salary as salary_with_bonus from hr.employees;
-- Retrieve employees with salary between 30,000 and 60,000.
select * from employee where salary between 17000 and 24000;
select salary from employee;
-- List employees hired before 2015 who belong to department 10 or 20.
select * from employee where hire_date < to_date ('2015-01-01','yyyy-mm-dd') and department_id in (10,20);
-- Find employees whose first name starts with 'J' and salary is not null.
select * employee where first_name like 'j' and salary is not null;
-- Get full names of employees who are either in department 30 or earn more than 70,000.
select first_name|| '' || last_name from employee where department_id=30 or salary >70000;
-- Find employees not in department 50 and not earning less than 40,000.
select * from employee where department_id != 50 and salary >40000;
-- Get employees from DEPT_ID = 10 who are not in DEPT_ID = 20.
select * from employee where department_id = 10 minus select * from employee where department_id = 20;
-- Find all unique department IDs from EMPLOYEES and another table MANAGERS
select department_id from employee union
-- List employees hired in the last 5 years and earning more than 50,000.
select * from employee where hire_date >= add_months(sysdate, -60) and salary >50000;
-- Display employees whose last name ends with ‘son’ ?
Select * from employee where first_name like '%son';
-- Get employees who are either in department 10 or 20 but not both (use UNION and MINUS)?
select * from employee where department_id = 10
union 
select * from employee where department_id = 20
MINUS
SELECT * FROM EMPLOYEES WHERE department_id = 10 AND EMPLOYEE_ID IN ( SELECT EMPLOYEE_ID FROM EMPLOYEES WHERE department_id = 20);
select * from employee where department_id = 10 or department_id =20;
-- Show employees who have the same salary as someone else (use subquery).
SELECT * from employee e where salary in (select salary from employee group by salary having count (*) >1);
-- List all employees with a null department OR a salary less than 30,000.
select * from employee where department_id is null or salary < 30000;
-- Find employees who joined in January of any year.
select * from employee where To_char (hire_date)
-- Concatenate and display employee ID with full name as a single string.
select employee_id || ''|| first_name || ''|| last_name as employee_id_fullName from employee;
-- Display the highest paid employee(s)
select department_id, max (salary ) as max_salary from employee group by department_id order by max_salary DESC; 
-- Find all employees not working in departments 10, 20, or 30.
select * from employee where department_id not in (10,20,30);
-- List employees who joined on a weekend (Saturday or Sunday).
select * from employee where To_char (hire_date,'D') in ('1','7');
-- List employees with a salary higher than the average salary.
select * from employee where salary > (select avg (salary)from employee);
select department_id, count(*) from employee group by department_id;
-- Find departments with more than 5 employees.
select DEPARTMENT_ID from employee group by department_id having count(*)>5;
-- Show the name and department of each employee (use JOIN)
select e.FIRST_NAME,e.LAST_NAME,d.department_id from employee e join department d on e.department_id = d.department_id;
-- Find employees who do not belong to any department?
select * from employee where department_id is null;
-- Display employees hired in the same year as EMP_ID = 101.
SELECT * from employee where extract (year from hire_date) from employee where employee_id =101);
-- Get the top 3 highest paid employees (without window functions).
select *  from employee order by salary DESC fetch first 3 rows only;
-- and second one
-- SELECT *
-- FROM employees E1
-- WHERE 3 > (
--     SELECT COUNT(DISTINCT salary)
--     FROM employees E2
--     WHERE E2.salary > E1.salary
-- );
-- List employees whose last name contains exactly 5 characters
select * from employee where length (last_name)>5;

-- Show department names with no employees.
select * from employee where job_id is null;❌
select job_id from employee;
-- ✔
-- SELECT d.dept_id, e.department_id
-- FROM departments d
-- LEFT JOIN employees e ON d.dept_id = e.department_id WHERE e.department_id IS NULL;
select * fronm employee having by min (salary);
-- Find the employee(s) with the minimum salary.
select * from employee where salary = (select min(salary )from employee);
-- Show each department name and the total salary paid to its employees.
-- select d.job_role, sum(e.salary) as total_salary
-- from hr.employees e
-- join department d on e.department_id = d.DEPARTMENT_ID
-- group by d.job_role;
SELECT D.job_role, SUM(E.SALARY) AS TOTAL_SALARY
FROM EMPLOYEES E
JOIN DEPARTMENTS D ON E.DEPT_ID = D.DEPT_ID
GROUP BY D.DEPT_NAME;

-- List employees who joined in the same month as someone from department 
select * form employee where department_id = 10 = (select * from employee where hire_date)
SELECT *
FROM employee
WHERE EXTRACT(MONTH FROM hire_date) IN
  (SELECT EXTRACT(MONTH FROM hire_date) FROM employee WHERE department_id = 10);
-- Find employees working in departments that have more than 3 employees.
SELECT
    *
FROM
    EMPLOYEE
WHERE
    DEPARTMENT_ID = (
        SELECT
            DEPARTMENT_ID
        FROM
            EMPLOYEE
        GROUP BY
            DEPARTMENT_ID
        HAVING
            COUNT(*) > 3
    );
