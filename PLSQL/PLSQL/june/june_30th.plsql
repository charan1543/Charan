-- SQL practice
Create table costom (Name VARCHAR2(20), emp_id number, department_id number, salary number, hire_date date);
insert into costom (name, emp_id, department_id, salary, hire_date) values ('cherry', 97, 1, 20000, to_date('20-11-2009', 'DD-MM-YYYY'));
insert into costom VALUES (&name, &emp_id, &department_id, &salary, TO_DATE(&hire_date, 'YYYY-MM-DD'));
insert into costom (name, emp_id, DEPARTMENT_ID, salary, hire_date) values ('dharma', 98, 1, 24000, to_date ('21-08-2007', 'DD-MM-YYYY'));
insert into costom (name, emp_id, DEPARTMENT_ID, salary, hire_date) values ('Sesi', 94, 3, 27000, to_date ('21-08-2008', 'DD-MM-YYYY'));
SELECT * from COSTOM;
insert into costom (name, emp_id, DEPARTMENT_ID, salary, hire_date) values ('Sesi', 94, 3, 27000, to_date ('21-08-2008', 'DD-MM-YYYY'));
insert into costom (name, emp_id, DEPARTMENT_ID, salary, hire_date) values ('Dellas', 90, 4, 27500, to_date ('22-08-2008', 'DD-MM-YYYY'));
insert into costom (name, emp_id, DEPARTMENT_ID, salary, hire_date) values ('eagle', 86, 5, 27900, to_date ('07-07-2006', 'DD-MM-YYYY'));
ALTER TABLE costom ADD (email VARCHAR2(100)); 
select * from costom;
alter table costom modify (email VARCHAR2(40));
alter table costom DROP column email;
select department_id from costom;
select * from costom where DEPARTMENT_ID = 2;
update costom set SALARY = 29000 where emp_id = 96;
update costom set salary = 23000, department_id = 5 where emp_id =92;
update costom set salary = CASE
    WHEN department_id = 1 THEN salary + 1000
    WHEN department_id = 2 THEN salary + 2000
    ELSE salary
  END;

commit;

-- Numeric Functions
SELECT emp_id, salary, ROUND(salary * 1.10, 2) AS new_salary FROM costom;

-- Round salary to the nearest thousand
select name, salary, round(salary, -3) as rounded_salary from costom;

select name, salary , emp_id from COSTOM where mod (emp_id, 2) = 2;
select name, salary , abs(salary - 2000) as difference_from_base FROM costom;

SELECT name, emp_id,
       CASE MOD(emp_id, 2)
            WHEN 0 THEN 'Even'
            ELSE 'Odd'
       END AS emp_id_type
FROM costom;

SELECT name, salary,
       ROUND(salary, 2) AS rounded_salary,
       TRUNC(salary, 2) AS truncated_salary
FROM costom;
alter table costom delete column where emp_id =94;
DELETE FROM costom WHERE emp_id = 94;

-- Salary Power and Root (POWER and SQRT)
select name, salary, POWER(salary, 2) AS salary_squared, SQRT(salary) AS salary_sqrt FROM costom;

-- Salary Compared to Fixed Value (GREATEST and LEAST)
select name, salary, GREATEST(salary, 5000) AS higher_salary, LEAST(salary, 5000) AS lower_salary FROM costom;

select UPPER(name) from costom;
select lower (name) from costom;
select initcap (name) from costom;
select name, length(name) as length_name from costom;

-- Total Salary
select sum (salary) from costom;
-- Average Salary
SELECT AVG(salary) AS avg_salary FROM costom;

-- Number of Employees
SELECT COUNT(*) AS total_employees FROM costom;

-- Maximum & Minimum Salary
select max(salary) as maximum_salary, min(salary) as minimum_salary from costom;

-- To filter grouped results (like "departments with avg salary > 25000")
SELECT department_id, AVG(salary) AS avg_salary FROM costom GROUP BY department_id HAVING AVG(salary) > 25000;

-- Operators
select name, salary from costom where salary BETWEEN 24000 and 28000;

select name, salary, salary - 600 as salary_deduct from costom;
-- Monthly salary from annual salary
select name, salary, salary/ 12 as monthly_salary from costom;

-- Comparison Operators Practice
-- Employees with salary more than 5000
select name, salary from costom where salary >8000;

-- Employees from departments 10, 20, or 30
select * from costom where department_id in (1,2,4);
-- Employees hired in 2024
select name, hire_date from costom where extract (year from hire_date) =2002;

-- Logical Operators Practice
-- Employees from department 2 AND salary above 4000
select * from costom where department_id =2 and salary >20000;

-- Employees in department 20 OR hired after Jan 1, 2023
select name, department_id, hire_date from costom where hire_date >to_date ('01-01-2007', 'dd-mm-yyyy');

-- Salary between 4000 and 6000
select name,department_id from costom where departmrnt_id between 1 and 4;

-- Name starts with 'C'
select name, salary from costom where name like 'c%';
