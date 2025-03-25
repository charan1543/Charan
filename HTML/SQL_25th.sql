select round(123.45678, 2)from dual; --123.46 it is round the next decimal high valeue.
SELECT
    round(salary, 2) AS salary_result
FROM
    employees
WHERE
    employee_id = 120;
SELECT
    trunc(123.45678, 2)
FROM
    dual;
SELECT
    trunc(123.65678)
FROM
    dual;
SELECT
    trunc(salary, 2) AS trunc_salary_results
FROM
    employees
WHERE
    employee_id = 120;
    SELECT
    mod(salary, 2) AS mod_remainder
FROM
    employees
WHERE
    employee_id = 120;
    SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
    employee_id = 120;
SELECT
    first_name,
    salary,
    ceil(salary) AS ceil_salary
FROM
    employees
WHERE
    employee_id = 120;
SELECT
    ceil(123.87765) "ceil value"
FROM
    dual;
SELECT
    floor(salary) " floor value"
FROM
    employees;
SELECT
    floor(salary) " floor value"
FROM
    employees
WHERE
    employee_id = 110;
SELECT
    floor(98.87) AS floor_value
FROM
    dual;
SELECT
    power(2, 2) AS power_value
FROM
    dual;
SELECT
    power(salary, 2) "Power Value"
FROM
    employees
WHERE
    employee_id = 120;
SELECT
    greatest(salary, commission_pct, 3) AS greatest_value
FROM
    employees
WHERE
    employee_id = 120;
SELECT
    least(salary, commission_pct, 4) AS greatest_value
FROM
    employees
WHERE
    employee_id = 120;
SELECT
    commission_pct
FROM
    employees
WHERE
    employee_id = 120;
SELECT
    commission_pct
FROM
    employees
WHERE
    employee_id IS NOT NULL; -- its show null values.
SELECT
    commission_pct
FROM
    employees
WHERE
    commission_pct IS NOT NULL;
