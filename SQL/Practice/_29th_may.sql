-- You need to rank employees by salary within each department to identify top earners
SELECT employee_id, first_name, department_id, salary 
from employee e 
where salary = (select max(salary)from employee where department_id = e.e.DEPARTMENT_ID);
SELECT employee_id, first_name, department_id, salary  
FROM employee WHERE (department_id, salary) IN 
( SELECT department_id, MAX(salary) FROM employee 
GROUP BY department_id );
-- Show the month-over-month sales difference for each salesperson?
select 

-- Show hire_date in DD-MON-YYYY format.
select first_name, to_char (hire_date,'dd-mm-yyyy') from employee;
--  List employees hired in the current year.
select first_name,hire_date from employee where to_char(hire_date, 'yyyy') to_char (sysdate, 'yyyy'); 
-- Round salary to the nearest 10000.
select first_name, Round (salary, -3) as match_thousend  from employee;
-- Create a "salary level" column.

select first_name, salary,
case 
    when salary >=24000 then 'High'
    when salary >=18000 then 'medium'
    else 'low'
    end as salary_level from employee;
-- Show the number of months since hire.
select first_name, hire_date, floor (month_between (sysdate, hire_date )) as month_worked from employee;
-- Months of Service for Each Employee
select employee_id, first_name, hire_date, floor (months_between (sysdate, hire_date)) as months_of_service from employee;

-- Years of Service (Rounded)
select employee_id, first_name, hire_date round (months_between(sysdate, hire_date)/12,1) as years_service from employee;
-- Next Anniversary Date?
SELECT employee_id, first_name, hire_date, 
add_months (hire_date, 12 * FLOOR(MONTHS_BETWEEN(SYSDATE, hire_date) / 12 + 1)) AS next_anniversary
from employee;
-- Time Until Next Work Anniversary (in Days)
select employee_id,first_name || ' ' || last_name as full_name, hire_date, add_months(hire_date,12* Floor (months_between (sysdate, hire_date)/12+1))AS next_anniversary,
ADD_MONTHS(hire_date, 12 * FLOOR(MONTHS_BETWEEN(SYSDATE, hire_date) / 12 + 1)) - SYSDATE AS days_until_anniversary from employee;