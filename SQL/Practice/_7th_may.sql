-- data types
-- char :- it allows chracterstics. Maximum char. •	Default Size is 1 byte
-- Varchar 2:- Characters Allowed a-z,A-Z;0-9, All Special character. •	Maximum size 4000 byte/4000 char. 
-- Number: - Allows Numeric data. Character Allowed) 0-9.
-- LONG: - Allows alpha numeric characters. Maximum size is 2 GB . Used to define only once in a table
-- RAW:- Allows to store images/binary images data. Max 2000 Bytes.
-- LONG RAW:- Allows to store images/binary images data. Maximum size is 2 GB.
-- DDL (data defenation language)
--  Create, Alter, Drop, Trucate, Rename.
CREATE TABLE EMPLOYEE
    AS
        SELECT
            *
        FROM
            HR.EMPLOYEES;
CREATE SYNONYM EMP FOR EMPLOYEE;
CREATE VIEW EMP1 AS
    SELECT
        FIRST_NAME,RENAME table HOTEL  to restuarent;-- its not working

        LAST_NAME,
        SALARY
    FROM
        WORKERS;
CREATE TABLE HOTEL (
    NAME    VARCHAR2(20),
    PRICE   NUMBER,
    ADDRESS VARCHAR2(20)
);
ALTER TABLE HOTEL ADD (
    TODATE DATE
);
ALTER TABLE HOTEL MODIFY (
    ADDRESS VARCHAR2(30)
);
ALTER TABLE HOTEL RENAME column ADDRESS TO REGION;
ALTER TABLE HOTEL DROP COLUMN TODATE;
ALTER TABLE HOTEL RENAME TO RESTAURENT;
ALTER TABLE RESTAURENT ADD CONSTRAINT REST_PK PRIMARY KEY ( NAME );
ALTER TABLE RESTAURENT DROP CONSTRAINT REST_PK;
TRUNCATE TABLE RESTAURENT;-- Removes all rows from a table.Keeps table structure (schema), but clears all data.Cannot rollback after execution.
DROP TABLE RESTAURENT; -- Completely removes a table (or other object) from the database.Table and all its data, structure, indexes, and constraints are permanently gone.Not recoverable via ROLLBACK.
CREATE TABLE HOTEL (
    NAME    VARCHAR2(20),
    PRICE   NUMBER,
    ADDRESS VARCHAR2(20)
);
ALTER TABLE HOTEL RENAME TO RESTAURENT;

-- DML (Data manupulate language)
-- Insert:- 
INSERT into RESTAURENT (NAME, PRICE, ADDRESS )
        VALUES ( 'sri_venkateswara', 30, 'JMD' );
INSERT into RESTAURENT (NAME, PRICE, ADDRESS )
        VALUES ( 'sri_venkateswara', 30, 'JMD1' );
update RESTAURENT set price = 40 where rownum=1;
DELETE FROM RESTAURENT
WHERE
    ADDRESS = 'JMD';
-- Deletes selected rows from a table.Can delete some or all rows based on a WHERE clause.
-- TCL ( Transactional Control Language):- 
commit;
-- Arithmetic Operators
-- Relational Operators
-- Logical Operators
-- Set Operators
-- Special Operators
SELECT
    EMPLOYEE_ID,
    SALARY,
    1000 + SALARY AS SALARY_WITH_BONUS
FROM
    HR.EMPLOYEES;
SELECT
    EMPLOYEE_ID,
    SALARY,
    SALARY - 500 AS SALARY_AFTER_TAX
FROM
    HR.EMPLOYEES;
SELECT
    EMPLOYEE_ID,
    SALARY,
    SALARY * 12 AS ANNUAL_SALARY
FROM
    HR.EMPLOYEES;
SELECT
    EMPLOYEE_ID,
    SALARY,
    SALARY / 2 AS AVG_PER_DEPENDENT
FROM
    HR.EMPLOYEES;
SELECT
    EMPLOYEE_ID,
    FIRST_NAME, MOD(employee_id, 2) =
        1
    FROM
        HR.EMPLOYEES;
-- Logical Operators:-
SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY
FROM
    HR.EMPLOYEES
WHERE
        DEPARTMENT_ID = 10
    AND SALARY > 5000;
SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY
FROM
    HR.EMPLOYEES
WHERE
    DEPARTMENT_ID = 10
    OR SALARY > 5000;
SELECT
    EMPLOYEE_ID,
    FIRST_NAME,
    SALARY
FROM
    HR.EMPLOYEES
WHERE
    NOT DEPARTMENT_ID = 10;

Relational Operators:-
SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    SALARY = 5000;
SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    SALARY != 5000;
SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    SALARY > 5000;

SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    SALARY < 5000;

SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    SALARY >= 5000;

SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    SALARY <= 5000;

-- Set Operators:-

SELECT
    FIRST_NAME,
    LAST_NAME,
    JOB_ROLE,
    SALARY,
    JOIN_DATE,
    CITY
FROM
    WORKERS
UNION
SELECT
    FIRST_NAME,
    LAST_NAME,
    JOB_ROLE,
    SALARY,
    JOIN_DATE,
    CITY
FROM
    WORKERS1;

SELECT
    FIRST_NAME,
    LAST_NAME,
    JOB_ROLE,
    SALARY,
    JOIN_DATE,
    CITY
FROM
    WORKERS
UNION ALL
SELECT
    FIRST_NAME,
    LAST_NAME,
    JOB_ROLE,
    SALARY,
    JOIN_DATE,
    CITY
FROM
    WORKERS1;

SELECT
    FIRST_NAME,
    LAST_NAME,
    JOB_ROLE,
    SALARY,
    JOIN_DATE,
    CITY
FROM
    WORKERS
INTERSECT
SELECT
    FIRST_NAME,
    LAST_NAME,
    JOB_ROLE,
    SALARY,
    JOIN_DATE,
    CITY
FROM
    WORKERS1;

SELECT
    FIRST_NAME,
    LAST_NAME,
    JOB_ROLE,
    SALARY,
    JOIN_DATE,
    CITY
FROM
    WORKERS
MINUS
SELECT
    FIRST_NAME,
    LAST_NAME,
    JOB_ROLE,
    SALARY,
    JOIN_DATE,
    CITY
FROM
    WORKERS1;

SELECT
    *
FROM
    WORKERS
WHERE
    CITY in ( 'Mumbai',
'Kolkata’);

SELECT
    *
FROM
    WORKERS
WHERE
    CITY in ( 'Mumbai',
'Kolkata’);

SELECT
    *
FROM
    WORKERS
WHERE
    SALARY BETWEEN 60000 AND 80000;

SELECT
    *
FROM
    WORKERS
WHERE
    JOB_ROLE LIKE 'De%’;

SELECT
    *
FROM
    EMPLOYEES
WHERE
    MANAGER_ID IS NULL;
    


