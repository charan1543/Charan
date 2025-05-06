--views
-- A view is a logical table that is based on one or more tables.
-- The view itself contains no data. It is sometimes called a 
-- non-materialized view.
-- Types of Views: 
-- Simple
--Complex
--Force
--Vertical
--Horizontal
--Functional
--Partition
--Materialized
-- Inline

-- Simple view :- A view based on only a single table, which doesn't contain GROUP BY clause and any functions.
CREATE VIEW EMPLOY AS
    SELECT
        *
    FROM
        WORKERS;-- Complex view :- A view based on multiple tables, which contain GROUP BY clause and functions.
CREATE VIEW HIEGH_PAID_EMPLOYEES AS
    SELECT
        EMP_ID,
        SALARY,
        JOIN_DATE
    FROM
        WORKERS
    ORDER BY
        SALARY DESC
    FETCH FIRST 3 ROWS ONLY;

SELECT
    *
FROM
    HIEGH_PAID_EMPLOYEES;

DROP VIEW EMPLOY;
DROP VIEW HIEGH_PAID_EMPLOYEES;
-- Force view :- We need the force keyword when we are trying to
-- create a view based on a table which is not yet created and 
-- when we created such a view initially that view is in 'invalid'
-- state and when a user created a table on which a force view is
-- defined then the view becomes 'VALID'.

CREATE FORCE VIEW XXNYB_FORCE AS
    SELECT
        *
    FROM
        XXNYB_LOCATIONS;

DROP VIEW XXNYB_FORCE;

-- Vertical view it display/ working on colomns.
CREATE VIEW ALIES_NAMES AS
    SELECT
        EMP_ID       EMPLOYEES_ID,
        FIRST_NAME
        || ''
        || LAST_NAME FULLNAME,
        SALARY       EMP_SALARY,
        JOIN_DATE    HIRE_DATE
    FROM
        WORKERS;
SELECT
    *
FROM
    ALIES_NAMES;
DROP VIEW ALIES_NAMES;

-- Horizontal view it's working on rows
CREATE VIEW EMP_ID10 AS
    SELECT
        *
    FROM
        WORKERS
    WHERE
        EMP_ID = 1;select * from WORKERS;
DROP VIEW EMP_ID10;
-- Functional view:- it is used in calculated columns or derived 
--data using functions, expressions, or business logic.
CREATE VIEW MIN_MAX_SALARY AS
    SELECT
        O.EMP_ID,
        MAX(SALARY) AS MAX_SALARY,
        MIN(SALARY) AS MIN_SALARY
    FROM
        WORKERS O
    GROUP BY
        O.EMP_ID;
SELECT
    *
FROM
    MIN_MAX_SALARY;
DROP VIEW MIN_MAX_SALARY;

-- 06/05/2025
--Partition view:-  It used to a a view on compound queries
-- It is used to combine data from multiple tables which are logically partitioned.

CREATE TABLE XXCCT_SALES_ORDER_2023 (
    SALESORDER_ID NUMBER,
    AMOUNT        NUMBER,
    SALES_DATE    DATE,
    CONSTRAINT XSO2023_CHCK
        CHECK ( SALES_DATE >= TO_DATE('01-01-2023', 'DD-MM-YYYY')
                AND SALES_DATE < TO_DATE('01-01-2024', 'DD-MM-YYYY') )
);

CREATE TABLE XXCCT_SALES_ORDER_2024 (
    SALESORDER_ID NUMBER,
    AMOUNT        NUMBER,
    SALES_DATE    DATE,
    CONSTRAINT XSO2024_CHCK
        CHECK ( SALES_DATE >= TO_DATE('01-01-2024', 'DD-MM-YYYY')
                AND SALES_DATE < TO_DATE('01-01-2025', 'DD-MM-YYYY') )
);

CREATE TABLE XXCCT_SALES_ORDER_2025 (
    SALESORDER_ID NUMBER,
    AMOUNT        NUMBER,
    SALES_DATE    DATE,
    CONSTRAINT XSO2025_CHCK
        CHECK ( SALES_DATE >= TO_DATE('01-01-2025', 'DD-MM-YYYY')
                AND SALES_DATE < TO_DATE('01-01-2026', 'DD-MM-YYYY') )
);

SELECT
    SALESORDER_ID,
    AMOUNT,
    SALES_DATE
FROM
    XXCCT_SALES_ORDER_2023;
union all
select SALESORDER_ID, AMOUNT, SALES_DATE from XXCCT_SALES_ORDER_2024;
union all
select SALESORDER_ID,
    AMOUNT,
    SALES_DATE
    FROM
        XXCCT_SALES_ORDER_2025;

CREATE VIEW LAST_3_YEARS_SALES_ORDER AS
    SELECT
        SALESORDER_ID,
        AMOUNT,
        SALES_DATE
    FROM
        XXCCT_SALES_ORDER_2023;
union all
select SALESORDER_ID, AMOUNT, SALES_DATE from XXCCT_SALES_ORDER_2024;
union all
select SALESORDER_ID,
    AMOUNT,
    SALES_DATE
    FROM
        XXCCT_SALES_ORDER_2025;

SELECT * FROM LAST_3_YEARS_SALES_ORDER;
DROP VIEW LAST_3_YEARS_SALES_ORDER;
drop table XXCCT_SALES_ORDER_2024;
drop table XXCCT_SALES_ORDER_2025;
DROP TABLE XXCCT_SALES_ORDER_2023;

-- Materialized View:-
-- It is used to define a view that stores the data from the 
-- result of a query physically in the database.
-- It should be refreshed periodically to keep data up to date.

-- MATERIALIZED VIEW: -
CREATE MATERIALIZED VIEW EMP AS
    SELECT
        *
    FROM
        EMPLOYEE;DROP TABLE XXCCT_SALES_ORDER_2024;
DROP TABLE XXCCT_SALES_ORDER_2025;

CREATE TABLE EMPLOYEE
    AS
        SELECT
            *
        FROM
            HR.EMPLOYEES;