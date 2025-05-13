CREATE INDEX idx_employee_id ON employee (employee_id);

select * from employee where employee_id = 110;

select * from employee;


alter table workers add gender varchar2(10);

UPDATE WORKERS
SET
    GENDER =
        CASE
            WHEN EMP_ID = 1 THEN
                'male'
            WHEN EMP_ID = 2 THEN
                'female'
            WHEN EMP_ID = 3 THEN
                'female'
            WHEN EMP_ID = 4 THEN
                'male'
            ELSE
                GENDER
        END
WHERE
    EMP_ID IN ( 1, 2, 3, 4 );
commit;

select * from workers;

CREATE BITMAP INDEX IDX_EMP_ID ON
    WORKERS (
        GENDER
    );
SELECT
    *
FROM
    WORKERS
WHERE
        GENDER = 'male'
    AND EMP_ID = 1;

-- Low cardinality columns (e.g., gender, boolean flags, or status fields).

create INDEX IDX_unique_workers on workers1 (city);
DROP INDEX IDX_UNIQUE_WORKERS;

create unique INDEX IDX_unique_workers on workers1 (city);
-- city values or not unique so it's not work;


DROP INDEX EMPLO1;
DROP INDEX IDX_EMPLOYEE_ID;
drop INDEX idx_emp_

select * from workers1;

select * from workers1 where city ='Delhi';

select * from WORKERS1 where DEP_ID = 2 and city = 'Delhi'; 

DROP INDEX IDX_UNIQUE_WORKERS;

-- Composite Index (Multi-Column Index):-
-- A Composite Index (also known as a Multi-Column Index) is an index that includes multiple columns. 
-- It is especially useful for queries that filter on more than one column.

create index Idx_composite on employee (department_id, job_id);

select * from employee;

select * from employee where DEPARTMENT_ID = 80;

select * from employee where JOB_ID = 'SA_REP';

select * from employee where DEPARTMENT_ID = 80 and JOB_ID = 'SA_REP';
select * from employee where JOB_ID = 'SA_REP' and DEPARTMENT_ID = 80;

-- Term	                                What It Refers To
-- B-tree index	                        The structure or algorithm used to store and search the index (like a sorted tree). Most standard indexes are B-tree by default.
-- Composite (multi-column) index	    The number of columns the index is built on — i.e., more than one column ((col1, col2) instead of just (col1)).

-- Function-Based Index: -

-- A Function-Based Index is an index that is created on the result of a function or expression applied to a column.
-- This is helpful when you need to index the result of a computed value rather than the raw column value.

CREATE INDEX idx_function on workers (upper(last_name));

select * from WORKERS;

select * from workers where upper(last_name) = 'KUMAR';

-- creation function and retrive function same so range scan and cost reduction happen in this case;

select * from workers where Lower(last_name) = 'kumar'; 

-- -- creation function and retrive function both or not same so full table scan working;

Drop INDEX  IDX_EMP_ID
Drop INDEX  IDX_EMP_gender
Drop INDEX  IDX_Function
Drop INDEX  Idx_composite

-- B tree index:- 
create index inx_emp on employee (department_id);

select * from employee where DEPARTMENT_ID = 90;

select * from employee where DEPARTMENT_ID = 80 and JOB_ID ='SA_REP';

-- composite_index:-

CREATE INDEX INX_COMPOSIT ON
    EMPLOYEE (
        DEPARTMENT_ID,
        JOB_ID
    );
select * from employee where DEPARTMENT_ID = 80 and JOB_ID ='SA_REP';
--  range scan;

select * from employee where JOB_ID ='SA_REP';
-- hear working skip scan

select * from employee where DEPARTMENT_ID = 80;

drop index INX_COMPOSIT;

create index inx_emp1 on employee (department_id, job_id, employee_id);

select * from employee where DEPARTMENT_ID = 80;
-- full table scan

select * from employee where job_id ='AD_PRES';
--  skip scan
select * from employee where EMPLOYEE_ID = 110 ;
--  skip scan

SELECT
    *
FROM
    EMPLOYEE
WHERE
        DEPARTMENT_ID = 80
    AND JOB_ID = 'SA_REP'
    AND EMPLOYEE_ID = 153;
--  range scan

select * from employee;

SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);

EXPLAIN PLAN FOR
SELECT
    *
FROM
    EMPLOYEE
WHERE
        DEPARTMENT_ID = 80
    AND JOB_ID = 'SA_REP'
    AND EMPLOYEE_ID = 153;
  SELECT * FROM TABLE(DBMS_XPLAN.DISPLAY);

SET AUTOTRACE ON
SELECT
    *
FROM
    EMPLOYEE
WHERE
        DEPARTMENT_ID = 80
    AND JOB_ID = 'SA_REP'
    AND EMPLOYEE_ID = 153;

-- B-tree Index (default) – the most common and useful for range queries.

-- Bitmap Index – useful when you have low-cardinality columns (e.g., gender or status).

-- Clustered Index – stores rows of related tables together based on index.

-- Function-based Index – created based on the result of a function or expression.