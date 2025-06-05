-- LOB datatype

-- | LOB Type | Full Form       | Stores                     | Max Size   |
-- | -------- | --------------- | -------------------------- | ---------- |
-- | `CLOB`   | Character LOB   | Large blocks of text       | Up to 4 GB |
-- | `NCLOB`  | National CLOB   | Text in national charset   | Up to 4 GB |
-- | `BLOB`   | Binary LOB      | Images, videos, files, etc | Up to 4 GB |
-- | `BFILE`  | Binary File LOB | Points to external OS file | Up to 4 GB |


-- CLOB
DECLARE
    my_clob CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(my_clob, TRUE);
    DBMS_LOB.WRITE(my_clob, LENGTH('Hello World'), 1, 'Hello World');
END;


DECLARE
    my_clob CLOB;
BEGIN
    SELECT clob_column INTO my_clob FROM employee WHERE employee_id = 1;
END;

Declare
lc_text CLOB;
BEGIN 
        lc_text := 'This ia a sample text to test large object (LOB) datatypes and that too
        it is a CLOB type. It is basically used to store large amount of character data in oracle DB';
    dbms_output.put_line('CLOB Test:'||lc_text);
END;

Declare
lc_text CLOB;
BEGIN 
        lc_text := 'This ia a sample text to test large object (LOB) datatypes and that too
        it is a CLOB type. It is basically used to store large amount of character data in oracle DB';
    lc_text := lc_text || RPAD (lc_text, 10000, '*');
    dbms_output.put_line('CLOB Test:'||lc_text);
END;

-- DBMS_LOB.SUBSTR
-- DBMS_LOB.WRITEAPPEND
-- DBMS_LOB.GETLENTGH

DECLARE
    my_clob CLOB;
BEGIN
    DBMS_LOB.CREATETEMPORARY(my_clob, TRUE);
    DBMS_LOB.WRITEAPPEND(my_clob, LENGTH('Hello'), 'Hello');
    DBMS_LOB.WRITEAPPEND(my_clob, LENGTH(' World'), ' World');
    DBMS_OUTPUT.PUT_LINE(DBMS_LOB.SUBSTR(my_clob, 100, 1));
    DBMS_LOB.FREETEMPORARY(my_clob);
END;

create TABLE xxnyb_boolean(emp_id number, emp_name varchar2(20), is_active BOOLEAN);
insert into xxnyb_boolean values(1, 'test emp', 'true');

-- SET SERVEROUTPUT ON;
-- Declare 
-- lc_active xxnyb_boolean.is_active%TYPE;
-- lb_active BOOLEAN;
-- BEGIN 
--     SELECT is_active INTO lb_active FROM xxnyb_boolean WHERE EMP_ID =1;
--     CASE WHEN lc_active = 'y'
--          then lb_active := TRUE;
--          ELSE lb_active := FALSE;
--          END;
-- if lb_active
-- then 
--     dbms_output.put_line('employee is active')
-- END if;


SET SERVEROUTPUT ON;
DECLARE 
lc_active_FLAG CHAR (10);
LB_ACTIVE BOOLEAN;
BEGIN 
    SELECT IS_ACTIVE
    INTO LC_ACTIVE_FLAG
    FROM xxnyb_boolean
    WHERE EMP_ID = 1;
    lb_active := CASE WHEN LC_ACTIVE_FLAG ='Y'
    THEN TRUE
    ELSE FALSE
    END;
    IF lb_active
    THEN 
        DBMS_OUTPUT.PUT_LINE ('EMPLOYE IS ACTIVE');
    END IF;
    END;

-- reference datatypes
-- Declares a variable with the same datatype as a column or another variable.
-- %TYPE

SET SERVEROUTPUT ON;
DECLARE
    v_emp_id employee.employee_id%TYPE;
    v_salary employee.salary%TYPE;
BEGIN
    SELECT employee_id, salary INTO v_emp_id, v_salary
    FROM employee
    WHERE ROWNUM = 1;

    DBMS_OUTPUT.PUT_LINE('ID: ' || v_emp_id || ', Salary: ' || v_salary);
END;
-- %ROWTYPE
-- Declares a record (a group of fields) with the same structure as a row in a table or cursor.
DECLARE
    v_emp_record employee%ROWTYPE;
BEGIN
    SELECT * INTO v_emp_record
    FROM employee
    WHERE employee_id = 100;

    DBMS_OUTPUT.PUT_LINE('Name: ' || v_emp_record.first_name || ' ' || v_emp_record.last_name);
END;
