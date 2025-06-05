SELECT
    *
FROM
    HR.EMPLOYEES;

select upper(first_name) as upper_case_name from hr.EMPLOYEES
-- Functions:-
-- Numeric Functions:-  
SELECT
    POWER(2, 3)
FROM
    DUAL;
SELECT
    SQRT(ABS(2))
FROM
    DUAL;

SELECT
    SQRT(2)
FROM
    DUAL;
SELECT
    MOD(10, 2)
FROM
    DUAL;
SELECT
    ROUND(223.56) AS ROUND_VALUE
FROM
    DUAL;
SELECT
    ROUND(223.3400) AS ROUND_VALUE
FROM
    DUAL;

-- round based on decimal value it changed

SELECT
    CEIL(329.34) AS CEIL_VALUE
FROM
    DUAL;

SELECT
    CEIL(329.56) AS CEIL_VALUE
FROM
    DUAL
-- ceil move next high value.

SELECT
    TRUNC(567.87)
FROM
    DUAL;

SELECT
    TRUNC(567.37)
FROM
    DUAL;

-- TRUNC IS TRUNCATE DECIMAL VALUES.

SELECT
    floor(-2983.987)
FROM
    DUAL;
-- in negative value jump to next value. even decimal value below <=5/>=5 

SELECT
    floor(-2983.283)
FROM
    DUAL;
-- Charecter function:- 
SELECT
    LENGTH('Charan')
FROM
    DUAL;

SELECT
    UPPER('charan')
FROM
    DUAL;

SELECT
    LOWER('CHARAN')
FROM
    DUAL;
SELECT
    ( 'Charan'
      || ' '
      || 'Teja' )
FROM
    DUAL;

SELECT
    TRIM('L' from 'LLLCHARANLLL')
FROM
    DUAL;