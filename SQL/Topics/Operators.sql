-- -- operators
-- Arithmetic Operators
-- Used to perform mathematical calculations.
-- | Operator | Description    | Example       |
-- | -------- | -------------- | ------------- |
-- | `+`      | Addition       | `10 + 5 = 15` |
-- | `-`      | Subtraction    | `10 - 5 = 5`  |
-- | `*`      | Multiplication | `10 * 5 = 50` |
-- | `/`      | Division       | `10 / 5 = 2`  |

-- Logical Operators
-- Used to combine multiple conditions in a SQL query.

-- | Operator | Description                     | Example                          |
-- | -------- | ------------------------------- | -------------------------------- |
-- | `AND`    | True if all conditions are true | `salary > 5000 AND dept_id = 10` |
-- | `OR`     | True if any condition is true   | `dept_id = 10 OR dept_id = 20`   |
-- | `NOT`    | Reverses the condition's result | `NOT (salary < 5000)`            |

-- Relational Operators
-- Used to compare two values.

-- | Operator     | Description              | Example          |
-- | ------------ | ------------------------ | ---------------- |
-- | `=`          | Equal to                 | `salary = 5000`  |
-- | `!=` or `<>` | Not equal to             | `salary != 5000` |
-- | `>`          | Greater than             | `salary > 5000`  |
-- | `<`          | Less than                | `salary < 5000`  |
-- | `>=`         | Greater than or equal to | `salary >= 5000` |
-- | `<=`         | Less than or equal to    | `salary <= 5000` |

-- Special Operators
-- Used for specific conditions or pattern matching.

-- | Operator  | Description                                      | Example                         |                          |           |   |     |   |          |
-- | --------- | ------------------------------------------------ | ------------------------------- | ------------------------ | --------- | - | --- | - | -------- |
-- | `BETWEEN` | Within a range                                   | `salary BETWEEN 3000 AND 5000`  |                          |           |   |     |   |          |
-- | `IN`      | Matches any value in a list                      | `department_id IN (10, 20, 30)` |                          |           |   |     |   |          |
-- | `LIKE`    | Pattern matching with `%` and `_`                | `name LIKE 'A%'`                |                          |           |   |     |   |          |
-- | `IS NULL` | Checks for NULL value                            | `manager_id IS NULL`            |                          |           |   |     |   |          |
-- | `EXISTS`  | Checks for the existence of rows from a subquery | `EXISTS (SELECT * FROM ...)`    |                          |           |   |     |   |          |
-- | \`        |                                                  | \`                              | Concatenates two strings | \`'First' |   | ' ' |   | 'Last'\` |


-- Set Operators
-- Used to combine the results of two or more SELECT statements.

-- | Operator    | Description                                            |
-- | ----------- | ------------------------------------------------------ |
-- | `UNION`     | Combines and removes duplicates                        |
-- | `UNION ALL` | Combines without removing duplicates                   |
-- | `INTERSECT` | Returns only common records                            |
-- | `MINUS`     | Returns records from the first query not in the second |

-- Task

-- Task: Increase each employee's salary by 10% and display the result along with the original salary.
select employee_id,First_name||''||last_name as fullname,salary,salary*0.10 from employee;
-- it just salary*0.1(10%) increment value
select employee_id,First_name||''||last_name as fullname,salary,salary*1.10 from employee;
-- this command salary*1.1(10%) increment value and add value directly

-- List employees who work in department 10 or 20 and have a salary greater than 3000.
select * from employee where (DEPARTMENT_ID =10 or DEPARTMENT_ID = 20) and salary >3000;
select * from employee where DEPARTMENT_ID in (10,20) and salary >3000;

-- Find all employees hired after January 1, 2020, and earning less than 5000.
SELECT * FROM EMPLOYEE WHERE HIRE_DATE>TO_DATE('01-01-2020',' dd/mm/yyyy') and salary<5000;

-- Retrieve the names of employees who were hired in 2023.

select * from employee where extract (year from HIRE_DATE) = 2003;

-- Sort employees by salary in descending order.
select * from employee where order by salary DESC;
-- Count how many employees are in each department.
select department_id,count(*) from employee group by department_id;

-- Find employees whose names start with 'A'.
select * from employee where First_name like 'a%';

-- Get the highest paid employee in each department.
select * from employee where salary = (select max(salary) from employee where department_id=e.department_id);

-- List employees who have not been assigned to a department.
select * from employee where department_id is null;

-- Find employees hired in the last 6 months.
select * from employee where HIRE_DATE> ADD_MONTHS(sysdate,-6);

-- List departments where the average salary is more than 5000.
select department_id, avg(salary) as avg_salary from employee group by department_id having avg(salary)>5000;
-- Get the top 5 highest paid employees.
select * from employee order by salary DESC fetch first 5 rows only;

-- Show the number of employees hired each year.
-- select first_name, employee_id, HIRE_DATE from employee where group by extract(year from hire_date) order by hire_date;
select extract (year from hire_date) as hire_year count(*) as num_employees from employee group by extract (YEAR FROM HIRE_DATE) ORDER BY HIRE_YEAR;

-- Find employees who earn more than the average salary of all employees.
select * from employee where salary>(select avg(salary) from employee);

-- List all departments and the total salary paid to employees in each.
select department_id,sum(salary) as total_salary from employe group by department_id;

-- Find employees whose salary is the same as someone else’s.
select salary from employee group by salary having count(*)>1;

-- Get employees hired in the last 12 months.
select * from employee where hire_date >=ADD_MONTHS(sysdate,-12);

-- List all employees and display a new column that shows salary with 10% bonus
select first_name|| ' ' ||last_name as full_name,salary,salary*0.10 as salary_bonus from employee;

select min (salary),max(salary), avg (salary) from employee;
