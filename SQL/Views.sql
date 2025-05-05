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