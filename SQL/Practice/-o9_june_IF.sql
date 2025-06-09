select 'charan' from dual;
SELECT 
    employee_id,
    salary,
    CASE 
        WHEN salary < 3000 THEN 'Low'
        WHEN salary BETWEEN 3000 AND 7000 THEN 'Medium'
        ELSE 'High'
    END AS salary_level
FROM employee;

SELECT ORDER_ID, status
FROM orders
ORDER BY
    CASE status
        WHEN 'Urgent' THEN 1
        WHEN 'Normal' THEN 2
        ELSE 3
    END;
ALTER TABLE orders ADD STATUS VARCHAR2(20);


UPDATE employee
SET salary = CASE job_id
    WHEN 'IT_PROG' THEN salary + 1000
    WHEN 'HR_REP' THEN salary + 500
    ELSE salary
END
WHERE department_id = 60;
alter table orders drop COLUMN status;
-- Show names and salaries of employees earning more than 5000
select first_name || '' || last_name as full_name, salary from employee where salary = 5000;
-- Sort employees by hire date
select * from employee order by hire_date ;
-- Show employee names with department names
select e.first_name, d.first_name
from employee e 
join DEPARTMENT d on e.e.e.EMPLOYEE_ID = d.dep_id;
-- Label salary level using 
select first_name, salary,
case 
    when salary <=18000 then 'medium'
    when salary <=29000 then 'high'
    else 'low'
    end as salary_grade
    from employee;

-- Get employees with salary above average
select first_name, salary from employee where salary >(SELECT avg (salary ) from employee);
-- Total salary by department
SELECT
    DEPARTMENT_ID,
    COUNT(*)    AS NUM_EMPLOYEE,
    SUM(SALARY) AS TOTAL_SALARY
FROM
    EMPLOYEE
group by
    DEPARTMENT_ID
ORDER BY
    DEPARTMENT_ID;

-- PLSQL
-- Conditional Control Statment
-- IF...THEN
DECLARE
ln_salary NUMBER:= 20000;
BEGIN
    IF ln_salary >15000
    THEN
        DBMS_OUTPUT.PUT_LINE('High paid');
        END IF;
        END;
-- Print if number is positive
DECLARE
ln_number NUMBER:=10;
BEGIN
    IF ln_number > 0
    then
        DBMS_OUTPUT.PUT_LINE('Number is positive');
        END IF;
        END;

-- Print if string is 'admin'
DECLARE
ls_role varchar (20):= 'admin';
BEGIN
    if ls_role = 'admin'
    then
        DBMS_OUTPUT.PUT_LINE('Welcome admin!');
        end if;
        end;

-- IF.....THEN...ELSE
DECLARE
ln_age NUMBER:=28;
BEGIN
    IF ln_age >18
    then
        DBMS_OUTPUT.PUT_LINE('eligible to vote');
        ELSE
        DBMS_OUTPUT.PUT_LINE('not eligible to vote');
        END IF;
        END;
-- IF....ELSE IF.....ELSE
