-- Joins
-- Get a list of all employees and their department names (only for employees assigned to a department).
SELECT
    E.EMPLOYEE_ID,
    E.DEPARTMENT_ID
FROM
         EMPLOYEE E
    JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- List all employees and their department names. Include employees who are not assigned to any department.
SELECT
    E.EMPLOYEE_ID,
    E.DEPARTMENT_ID
FROM
    EMPLOYEE   E
    LEFT OUTER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- Show all departments and employees in them. Include departments even if they have no employees.
SELECT
    E.EMPLOYEE_ID,
    E.DEPARTMENT_ID
FROM
    EMPLOYEE   E
    RIGHT OUTER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

-- Display all employees and departments, showing all matches and all unmatched data on both sides.
SELECT
    E.EMPLOYEE_ID,
    E.DEPARTMENT_ID
FROM
    EMPLOYEE   E
    FULL OUTER JOIN DEPARTMENT D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--  Show a list of all possible combinations between employees and departments.
SELECT
    E.EMPLOYEE_ID,
    E.DEPARTMENT_ID
FROM
    EMPLOYEE   E
    CROSS JOIN DEPARTMENT D

-- Functions

-- | Function      | Description                             | Example             | Output   |
-- | ------------- | --------------------------------------- | ------------------- | -------- |
-- | `ROUND(n, d)` | Rounds number `n` to `d` decimal places | `ROUND(123.456, 2)` | `123.46` |
-- | `TRUNC(n, d)` | Truncates number to `d` decimal places  | `TRUNC(123.456, 2)` | `123.45` |
-- | `MOD(n1, n2)` | Remainder of division                   | `MOD(10, 3)`        | `1`      |
-- | `FLOOR(n)`    | Largest integer ≤ n                     | `FLOOR(5.8)`        | `5`      |
-- | `CEIL(n)`     | Smallest integer ≥ n                    | `CEIL(5.1)`         | `6`      |
-- | `POWER(x, y)` | `x` raised to the power of `y`          | `POWER(2, 3)`       | `8`      |
-- | `ABS(n)`      | Absolute value                          | `ABS(-20)`          | `20`     |
-- | `SQRT(n)`     | Square root                             | `SQRT(25)`          | `5`      |


select round (123.456, 2) from dual; --12346

select round (123.456) from dual; --123
select round (123.546) from dual; --124

select trunc (123.565, 2) from dual --123.56
select trunc (123.4565, 2) from dual --123
select mod (10,3) --1
select floor(123.456) from dual; --Remove the decimal part of a number.
select CEIL(123.456) from dual;
select power (2,3) from dual;
select sqrt (24) from dual;
select abs(-20) from dual;

-- STRING

-- | Function              | Description                               | Example                        | Output         |
-- | --------------------- | ----------------------------------------- | ------------------------------ | -------------- |
-- | `UPPER(str)`          | Converts string to uppercase              | `UPPER('oracle')`              | `'ORACLE'`     |
-- | `LOWER(str)`          | Converts string to lowercase              | `LOWER('ORACLE')`              | `'oracle'`     |
-- | `INITCAP(str)`        | Capitalizes first letter of each word     | `INITCAP('oracle sql')`        | `'Oracle Sql'` |
-- | `LENGTH(str)`         | Returns length of the string              | `LENGTH('hello')`              | `5`            |
-- | `SUBSTR(str, s, l)`   | Extracts substring from position `s`      | `SUBSTR('Oracle', 2, 3)`       | `'rac'`        |
-- | `INSTR(str, ch)`      | Finds position of a character in a string | `INSTR('hello', 'l')`          | `3`            |
-- | `TRIM(char FROM str)` | Removes specified char (default: space)   | `TRIM(' A ')`                  | `'A'`          |
-- | `REPLACE(str, a, b)`  | Replaces occurrences of `a` with `b`      | `REPLACE('2024-05', '-', '/')` | `'2024/05'`    |


-- Date function

-- | Function                 | Description                          | Example                                   | Output (Sample) |
-- | ------------------------ | ------------------------------------ | ----------------------------------------- | --------------- |
-- | `SYSDATE`                | Current system date and time         | `SELECT SYSDATE FROM DUAL;`               | `14-MAY-25`     |
-- | `CURRENT_DATE`           | Current date in session time zone    | `CURRENT_DATE`                            | `14-MAY-25`     |
-- | `ADD_MONTHS(d, n)`       | Adds `n` months to date `d`          | `ADD_MONTHS(SYSDATE, 2)`                  | `14-JUL-25`     |
-- | `MONTHS_BETWEEN(d1, d2)` | Number of months between 2 dates     | `MONTHS_BETWEEN('01-JUN-25','01-JAN-25')` | `5`             |
-- | `NEXT_DAY(d, 'FRIDAY')`  | Next occurrence of specified weekday | `NEXT_DAY(SYSDATE, 'FRIDAY')`             | `16-MAY-25`     |
-- | `LAST_DAY(d)`            | Last day of the month                | `LAST_DAY(SYSDATE)`                       | `31-MAY-25`     |


-- Conversion Functions

-- | Function                 | Description                    | Example                               | Output         |
-- | ------------------------ | ------------------------------ | ------------------------------------- | -------------- |
-- | `TO_CHAR(date, format)`  | Converts date/number to string | `TO_CHAR(SYSDATE, 'YYYY-MM-DD')`      | `'2025-05-14'` |
-- | `TO_DATE(str, format)`   | Converts string to date        | `TO_DATE('2025-05-14', 'YYYY-MM-DD')` | `14-MAY-25`    |
-- | `TO_NUMBER(str)`         | Converts string to number      | `TO_NUMBER('123.45')`                 | `123.45`       |
-- | `CAST(expr AS datatype)` | Generic type casting           | `CAST('123' AS NUMBER)`               | `123`          |

-- General Functions

-- | Function                                 | Description                          | Example                             | Output            |
-- | ---------------------------------------- | ------------------------------------ | ----------------------------------- | ----------------- |
-- | `NVL(expr1, expr2)`                      | Replaces NULL with default value     | `NVL(NULL, 'N/A')`                  | `'N/A'`           |
-- | `NVL2(expr, v1, v2)`                     | Returns v1 if expr not NULL, else v2 | `NVL2(salary, 'Has', 'No')`         | `'Has'` or `'No'` |
-- | `COALESCE(e1, e2, e3)`                   | First non-NULL expression            | `COALESCE(NULL, NULL, 'X')`         | `'X'`             |
-- | `NULLIF(e1, e2)`                         | Returns NULL if e1 = e2              | `NULLIF(5, 5)`                      | `NULL`            |
-- | `DECODE(expr, val1, res1, ..., default)` | Like switch-case logic               | `DECODE(grade, 'A', 10, 'B', 8, 0)` | `10 / 8 / 0`      |
-- | `CASE WHEN THEN ELSE END`                | General condition logic              | See below                           |                   |

-- Aggregate Functions
-- | Function      | Description                  | Example                    | Output        |
-- | ------------- | ---------------------------- | -------------------------- | ------------- |
-- | `COUNT(*)`    | Number of rows               | `SELECT COUNT(*) FROM emp` | `100`         |
-- | `SUM(column)` | Total of values              | `SUM(salary)`              | `45000`       |
-- | `AVG(column)` | Average value                | `AVG(salary)`              | `4500`        |
-- | `MIN(column)` | Smallest value               | `MIN(hire_date)`           | `01-JAN-2000` |
-- | `MAX(column)` | Largest value                | `MAX(salary)`              | `12000`       |
-- | `GROUP BY`    | Grouping data for aggregates | `GROUP BY dept_id`         | —             |

-- Show emp_name and salary rounded to the nearest thousand.

select First_name, last_name, round(salary) as salary_round from employee;
-- Show each employee's emp_name, original salary, and salary after a 15% raise using ROUND.
select First_name, last_name, salary, salary*0.15 AS raise_salary from employee; 
-- Display the remainder when dividing each salary by 3000 using MOD.
select First_name,last_name,salary, mod(salary,3000) from employee;
-- Convert all emp_name values to uppercase.
select upper(first_name)|| '' || upper(last_name)as full_name from employee;
-- Display only the first 3 letters of each employee's name.
select first_name,substr(FIRST_NAME,3)as first_name_substring FROM EMPLOYEE;

-- Replace all occurrences of 'o' with '0' in emp_name.
select first_name, Replace(FIRST_NAME, 'o', '0') as replaced_name,last_name from employee; 

-- Show each employee’s hire_date and the number of months they have been employed (MONTHS_BETWEEN).
select first_name,last_name,hire_date,round(months_between(sysdate,HIRE_DATE))as Months_employed from employee;
-- Display each employee’s hire_date and the last day of that month.
select first_name,last_name,hire_date,last_day(hire_date)as last_day_of_hiredate from employee;
-- Show the next Monday after each employee's hire_date.
select First_name,last_name,HIRE_DATE,NEXT_DAY(hire_date,'monday')as hire_date_monday from employee;
-- Convert each employee's hire_date to a YYYY-MM string format.
select first_name,last_name,TO_CHAR(hire_date, 'YYY-MM')AS DATE_CHAR FROM EMPLOYEE;
-- Convert string '3000.50' to a number.
SELECT FLOOR (3000.50) AS number FROM DUAL;
-- Use CAST to explicitly convert the commission_pct to a VARCHAR2.
SELECT
    FIRST_NAME,
    LAST_NAME,
    COMMISSION_PCT,
    CAST(COMMISSION_PCT AS VARCHAR2(10)) AS COMISSION_TEXT
FROM
    EMPLOYEE;

-- Use NVL to show commission_pct, replacing NULL with 0.
select first_name,last_name,nvl(commission_pct,0) from employee;

-- Use COALESCE to return the first non-null value among commission_pct, 'N/A'
select first_name,last_name,COALESCE(TO_CHAR(commission_pct),'N/A') from employee;

-- Use CASE to label each salary as 'Low' (<4000), 'Medium' (4000–6000), or 'High' (>6000).
SELECT
    FIRST_NAME,
    LAST_NAME,
    SALARY, CASE
     WHEN SALARY < 4000 THEN 'Low'
     WHEN salary between 4000 and 6000 THEN 'medium'
     ELSE'high'
    END
    AS SALARY_CATEGORY
    FROM
        EMPLOYEE;
-- Count the number of employees.
select count (*) from employee;
-- Find the highest and lowest salaries.

select Min(salary),max(salary) from employee;

-- Count how many employees have a commission_pct (not NULL).
select count(*) as count_employee from employee where commission_pct is not null;
-- Show the total salary for each department, including departments with no employees (OUTER JOIN + GROUP BY).
SELECT
    D.DEPARTMENT_ID,
    SUM(E.SALARY) AS TOTAL_SALARY
FROM
    DEPARTMENT D
    LEFT JOIN EMPLOYEE   E ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
GROUP BY
    D.DEPARTMENT_ID;