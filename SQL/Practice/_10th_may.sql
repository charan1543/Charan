CREATE INDEX idx_emp_email ON hr.employee (emial);
CREATE BITMAP INDEX idx_emp_gender ON employee(email);

SELECT * FROM employee WHERE email = 'jdoe';

select * from employee;

SELECT * FROM EMPLOYEE WHERE LAST_NAME = 'DOE';
SELECT * FROM employee WHERE email = 'SKING';


-- UNIQUE INDEX:-

CREATE TABLE emplo (
    EMP_ID    NUMBER,
    EMP_NAME  VARCHAR(20),
    HIRE_DATE DATE,
    SALARY    NUMBER,
    DEPT_ID   NUMBER
);
INSERT INTO EMPLO VALUES ( 101,
                           'raghu',
                           SYSDATE - 150,
                           10000,
                           20 );
INSERT INTO EMPLO VALUES ( 121,
                           'ramu,',
                           SYSDATE - 150,
                           20000,
                           30 );
INSERT INTO EMPLO VALUES ( 132,
                           'krishna',
                           SYSDATE - 150,
                           30000,
                           21 );
INSERT INTO EMPLO VALUES ( 134,
                           'raghav',
                           SYSDATE - 150,
                           30000,
                           20 );
INSERT INTO EMPLO VALUES ( 131,
                           'raj',
                           SYSDATE - 150,
                           24000,
                           30 );

select * from emplo where emp_id =101;

CREATE UNIQUE INDEX EMPLO1 ON
    EMPLO (
        EMP_ID
    );
SELECT
    *
FROM
    EMPLO
WHERE
    EMP_ID = 101;
DROP INDEX EMPLO1;
ALTER TABLE EMPLO ADD CONSTRAINT EMLO_CONST UNIQUE ( EMP_ID );

SELECT
    *
FROM
    EMPLO
WHERE
    EMP_ID = 101;
DROP TABLE EMPLO;

SELECT
    *
FROM
    EMPLOYEE
WHERE
        DEPARTMENT_ID = 80
    AND SALARY > 10000;CREATE INDEX EMPLO1 ON
    EMPLOYEE (
        DEPARTMENT_ID
        AND
        SALARY
    > 10000 );
-- range scan
SELECT
    *
FROM
    EMPLOYEE
WHERE
        DEPARTMENT_ID = 80
    AND SALARY;
-- it's not created composite index
DROP INDEX EMPLO1;
CREATE INDEX EMPLO1 ON
    EMPLOYEE (
        DEPARTMENT_ID,
        SALARY
    );

SELECT
    *
FROM
    EMPLOYEE
WHERE
        DEPARTMENT_ID = 80
    AND SALARY;

--functional index (function based index):-
SELECT
    *
FROM
    EMPLOYEE
WHERE
    UPPER(LAST_NAME) = 'KING';SELECT
    *
FROM
    EMPLOYEE;

CREATE INDEX EMPLO1 ON
    EMPLOYEE (UPPER
        (LAST_NAME)
    );
SELECT
    *
FROM
    EMPLOYEE
WHERE
    UPPER(LAST_NAME) = 'KING';

-- function_based_index is when you create particular fuction same using to retrive data then its take range scan 
-- if yoiu using differen function when you retrive data / created its take full table scan;