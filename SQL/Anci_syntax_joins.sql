    
--//String Functions
SELECT
    upper('oracle')            AS upper_case,
    lower('ORACLE')            AS lower_case,
    substr('Oracle SQL', 1, 6) AS substring,
    length('Oracle')           AS length
FROM
    dual;

--Number Functions    
SELECT
    round(123.456, 2) AS rounded,
    ceil(123.1)       AS ceiling,
    floor(123.9)      AS floor,
    mod(10, 3)        AS remainder
FROM
    dual;

--Date Functions
SELECT SYSDATE AS today,
       ADD_MONTHS(SYSDATE, 2) AS two_months_later,
       MONTHS_BETWEEN(SYSDATE, TO_DATE('2024-01-01', 'YYYY-MM-DD')) AS months_diff
FROM dual;

--Conversion Functions
SELECT TO_DATE('2025-04-16', 'YYYY-MM-DD') AS real_date,
       TO_CHAR(SYSDATE, 'Month DD, YYYY') AS formatted_date
FROM dual;

--Arithmetic Operators
SELECT 10 + 5 AS add_result,
       10 - 5 AS sub_result,
       10 * 5 AS mul_result,
       10 / 2 AS div_result
FROM dual;

--Comparison Operators
SELECT
    employee_id,
    salary
FROM
    employees
WHERE
        employee_id = 100
    AND salary > 5000;

SELECT
    employee_id,
    salary
FROM
    employees
WHERE
        employee_id = 100
    or salary > 5000;
    
--Logical Operators
SELECT
    employee_id,
    department_id
FROM
    employees
WHERE
    NOT department_id = 60;

SELECT
    employee_id,
    department_id
FROM
    employees
WHERE
    NOT EMPLOYEE_ID is null;
    
SELECT
    department_id,
    COUNT(*) AS employee_count
FROM
    employees
WHERE
    salary > 4000 AS salary > 400
GROUP BY
    department_id
HAVING
    COUNT(*) > 3
ORDER BY
    employee_count DESC;

--joins (anci syntax)

--Simple join

SELECT
    e.*,
    d.department_name,
    d.location_id
FROM
    employees e
inner JOIN departments d ON e.department_id = d.department_id;

--cross join
SELECT
    e.*,
    d.*
FROM
         employees e
    CROSS JOIN departments d
ORDER BY
    e.employees_id;
select * from departments;

--left outer join
SELECT
    e.*,
    d.*
FROM
    employees e
    LEFT OUTER JOIN departments d on e.department_id = d. department_id;
    
SELECT
    e.*,
    d.*
FROM
    employees e
    LEFT JOIN departments d on e.department_id = d. department_id;
    
SELECT
    e.*,
    d.*
FROM
    employees   e
    RIGHT OUTER JOIN departments d ON e.department_id = d.department_id;

SELECT
    e.*,
    d.*
FROM
    employees   e
    Full OUTER JOIN departments d ON e.department_id = d.department_id;
