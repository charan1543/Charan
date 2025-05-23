-- Data Definition Language (DDL),Constraints:-
-- CREATE, ALTER, DROP (tables, views, indexes)

-- Constraints: PRIMARY KEY, FOREIGN KEY, CHECK, NOT NULL, UNIQUE
CREATE TABLE practice (
    ID INT PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    EMAIL VARCHAR(100) UNIQUE,
    SALARY DECIMAL(10, 2) CHECK (SALARY > 0),
    DEPARTMENT_ID INT,
    HIRE_DATE DATE DEFAULT SYSDATE,
    CONSTRAINT fk_dept1 FOREIGN KEY (DEPARTMENT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID)
);
alter table toy add Constraint uq_toy unique (toy_id);
select EMP_NAME,salary from employees where job_title = 'HR specialist';
select * from employees;
select * from employee2;

SELECT * FROM EMPLOYEE WHERE DEPARTMENT_ID = 80 AND JOB_ID = 'SA_REP' AND EMPLOYEE_ID = 153;
select * from employee where DEPARTMENT_ID = 80 and JOB_ID ='SA_REP';
SELECT * FROM employee e WHERE salary = (SELECT MAX(salary) FROM employee WHERE department_id = e.department_id);

select department_id,count(*) from employee group by department_id;
-- select first_name, employee_id, HIRE_DATE from employee where group by extract(year from hire_date) order by hire_date;
select extract (year from hire_date) as hire_year count(*) as num_employees from employee group by extract (YEAR FROM HIRE_DATE) ORDER BY HIRE_YEAR;
-- Task: Increase each employee's salary by 10% and display the result along with the original salary.
select employee_id,First_name||''||last_name as fullname,salary,salary*0.10 from employee;
-- Find employees whose names start with 'A'.
select * from employee where First_name like 'a%';
select * from employee where substr (first_name,1,1)='A';

CREATE MATERIALIZED VIEW mv_high_salary_employees
BUILD IMMEDIATE
REFRESH ON DEMAND
AS
SELECT employee_id, first_name, salary, department_id
FROM employee
WHERE salary > 50000
select * from mv_high_salary_employees;
drop MATERIALIZED view mv_high_salary_employees;
CREATE
MATERIALIZED VIEW mv_high_salary_employees
BUILD IMMEDIATE
REFRESH ON DEMAND
AS
select * from employee where substr (first_name,1,1)='A';

CREATE MATERIALIZED VIEW mv_example
REFRESH COMPLETE
START WITH SYSDATE
NEXT SYSDATE + 1/(24*60*60)  -- refresh every second
AS
select * from employee where substr (first_name,1,1)='A';

CREATE MATERIALIZED VIEW mv_employee_summary
BUILD IMMEDIATE
REFRESH COMPLETE
START WITH SYSDATE
NEXT (SYSDATE + interval '1' hour)
AS
SELECT department_id, COUNT(*) AS total_employees, AVG(salary) AS avg_salary
FROM employee
GROUP BY department_id;
select * from mv_employee_summary;

drop materialized VIEW mv_employee_summary

CREATE VIEW department_summary AS
SELECT d.department_id, d.department_name, COUNT(e.employee_id) AS total_employees, AVG(e.salary) AS avg_salary
FROM departments d
JOIN hr.employees e ON d.department_id = e.department_id
GROUP BY d.department_id, d.department_name;

CREATE VIEW emp_summary_view AS
SELECT 
    d.department_id,
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    ROUND(AVG(e.salary), 2) AS avg_salary
FROM 
    department d
JOIN 
    employee e ON d.department_id = e.department_id
GROUP BY 
    d.department_id, d.department_name;