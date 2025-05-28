select * from employee;
SELECT
    *
FROM
    EMPLOYEE E
WHERE
    SALARY = (
        SELECT
            MAX(SALARY)
        FROM
            EMPLOYEE
        WHERE
            DEPARTMENT_ID = E.DEPARTMENT_ID
    );
SELECT
    e.*,
    d.department_name,
    d.location_id
FROM
    employees e
inner JOIN departments d ON e.department_id = d.department_id;
select * from employee where DEPARTMENT_ID = 80 and JOB_ID ='SA_REP';
select * from employee where JOB_ID ='SA_REP';
CREATE INDEX SA_REP_IDX ON employee ( CASE WHEN JOB_ID = 'SA_REP' THEN JOB_ID END);
select * from SA_REP_IDX
drop index SA_REP_IDX;
-- Simple Index
CREATE INDEX lastname_idx ON Employee(Last_Name);
select Last_Name from employee;
select * from employee where Last_Name ='Atkinson';
-- complex_index
CREATE INDEX name_idx ON Employee(Last_Name, First_Name);
select First_Name || ' ' || last_name from employee;
-- Unique Index
create unique index email_unique on employee(email);
select EMAIL from employee;
select * from employee where email = 'ABANDA';
CREATE INDEX idx_upper_lastname ON Employee(UPPER(Last_Name));
select upper(last_name) from employee;
CREATE BITMAP INDEX gender_idx ON Employee(phone_number);
create index complex_id on orders (customer_id, Order_date);
select * from orders;
select * from orders where customer_id=3 and Order_date= to_date( '11-10-2024', 'dd-mm-yyyy');
select * from orders where Order_date= to_date( '12-02-2025', 'DD-MM-YYYY');
select * from orders where Order_date= to_date( '12-02-2025 12:00:00', 'DD-MM-YYYY HH24:MI:SS');
SELECT TO_CHAR(order_date, 'DD-MM-YYYY HH24:MI:SS') AS order_dt
FROM orders
WHERE TO_CHAR(order_date, 'DD-MM-YYYY') = '12-02-2025';
SELECT TO_CHAR(order_date, 'DD-MM-YYYY HH24:MI:SS') AS order_dt
FROM orders
ORDER BY order_date;
select * from orders where Order_date= to_date( '02-12-2025 12:00:00', 'DD-MM-YYYY HH24:MI:SS');
SELECT * FROM orders WHERE order_date = TO_DATE('02-12-2025 12:00:00', 'DD-MM-YYYY HH24:MI:SS');
drop index complex_id;
create index complex_id on orders (order_id,customer_id);
select * from orders where order_id = 103 and customer_id=3;
select * from orders 
select * from orders where order_id = 103;
select * from orders where customer_id = 3;--skip scan econd one in complex_index.
-- 
SELECT synonym_name, table_owner, table_name 
FROM all_synonyms 
WHERE synonym_name IN (
  'EMPLOYEES', 'DEPARTMENTS', 'JOBS', 'LOCATIONS', 'COUNTRIES', 'REGIONS'
)
AND owner = 'PUBLIC';

SELECT * FROM ALL_SYNONYMS WHERE OWNER = 'PUBLIC';
select count(*) from ALL_SYNONYMS WHERE OWNER = 'PUBLIC'; --13617
CREATE SYNONYM my_emp FOR hr.employees;
drop SYNONYM my_emp;

-- Synonym
--It is an alias or an alternative name that points to a real database object (like a table, view, sequence, etc.).

-- It lets you refer to that object without typing its full name or schema.
-- 1. Private Synonym	2. Public synonym
-- Created for use by specific shema	Available for all schemas in database
-- Any user/schema can create (No privilege needed)	Only users/schemas with CREATE PUBLIC SYNONYM privilege.
-- Must be unique withing the schema.	Must be unique across the database
-- Synonym names share the same namespace as other objects (tables, views, sequences, etc.) within a schema.

-- So, if you have a table called my_emp, you cannot create a synonym called my_emp.

-- You need a unique name for your synonym that does not clash with existing object names.


create synonym first_5 for hr.employee;
select * from first_5 where rownum<=5;
SELECT synonym_name, table_owner, table_name 
FROM all_synonyms 
WHERE synonym_name = 'FIRST_5';
select * from first_5;
drop synonym first_5;
-- Live SQL environments reset or refresh schemas often, so objects/synonyms can become invalid.
CREATE PUBLIC SYNONYM FIRST_5 FOR hr.employees;
-- insufficient privileges
CREATE PUBLIC SYNONYM FIRST_5 FOR employee;
CREATE SYNONYM emp1 FOR employee;
create SYNONYM cherry for employee;
selct * from cherry;