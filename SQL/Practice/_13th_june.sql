BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE employees (
        employee_id NUMBER PRIMARY KEY,
        employee_name VARCHAR2(50),
        department VARCHAR2(30),
        salary NUMBER
    )';
    DBMS_OUTPUT.PUT_LINE('Table created successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
-- result : ERROR at line 1:
-- ORA-01031: insufficient privileges

BEGIN
    EXECUTE IMMEDIATE 'ALTER TABLE employees ADD (email VARCHAR2(100))';
    DBMS_OUTPUT.PUT_LINE('Table altered successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

BEGIN
    EXECUTE IMMEDIATE 'DROP TABLE employees';
    DBMS_OUTPUT.PUT_LINE('Table dropped successfully.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

DECLARE
    v_sql VARCHAR2(1000);
BEGIN
    v_sql := 'CREATE TABLE dynamic_table (
                id NUMBER PRIMARY KEY,
                name VARCHAR2(50),
                created_at DATE
              )';
    EXECUTE IMMEDIATE v_sql;
END;
-- result : ERROR at line 1:
-- ORA-01031: insufficient privileges

DECLARE
   v_id NUMBER := 1;
   v_name VARCHAR2(50) := 'John Doe';
BEGIN
  
   INSERT INTO hr.employees (employee.id, first_name) VALUES (v_id, v_name);

   UPDATE hr.employees SET first_name = 'charan' WHERE employee_id = v_id;
 
   DELETE FROM hr.employees WHERE v_id = employee_id;

END;
create table office (employees varchar2(20), address varchar(20), system_no number);
insert into office (employees, address, system_no ) values ('divyans', 'JMD', 2091 );
drop table office;
commit;
-- case statment
DECLARE
    grade VARCHAR2(20) := 'C';
    bonus NUMBER;
BEGIN
    IF grade = 'A' THEN
        bonus := 10000;
    ELSIF grade = 'B' THEN
        bonus := 8000;
    ELSIF grade = 'C' THEN
        bonus := 5000;
    ELSE
        bonus := 0;
    END IF;
    DBMS_OUTPUT.PUT_LINE('Bonus: ' || bonus);
END;
/
DECLARE
    GRADE VARCHAR2(20) := 'C';
    BONUS NUMBER;
BEGIN
    CASE GRADE
        WHEN 'A' THEN BONUS := 10000;
        WHEN 'B' THEN BONUS := 8000;
        WHEN 'C' THEN BONUS := 5000;
        ELSE BONUS := 0;
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Bonus: ' || BONUS);
END;
/