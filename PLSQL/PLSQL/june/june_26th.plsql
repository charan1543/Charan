-- Composite datatypes are types that combine multiple
--  pieces of data (like arrays or records).
--  Unlike scalar types (e.g., NUMBER, VARCHAR2),
--  composite types can store multiple values in one variable.
-- PL/SQL Records:
-- A Record is like a row of a table
-- it can store multiple fields of different datatypes.

DECLARE
    TYPE emp_rec IS RECORD (
        emp_id   NUMBER,
        emp_name VARCHAR2(100),
        salary   NUMBER
    );
    employee emp_rec;
BEGIN
    employee.emp_id := 1;
    employee.emp_name := 'madhav';
    employee.salary := 2000;

    DBMS_OUTPUT.PUT_LINE('ID: ' || employee.emp_id);
    DBMS_OUTPUT.PUT_LINE('Name: ' || employee.emp_name);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || employee.salary);
END;

-- User-defined Record:
-- Useful when working with non-table data or aggregating multiple values.
-- When structure is unrelated to table.
DECLARE
    TYPE Emp_record IS RECORD (
        total_employee NUMBER,
        high_salary NUMBER,
        report_date DATE
    );
    emp_rec Emp_record;
BEGIN
    emp_rec.total_employee := 200;
    emp_rec.high_salary := 200000;
    emp_rec.report_date := SYSDATE;
    DBMS_OUTPUT.PUT_LINE('Total: ' || emp_rec.total_employee);
END;

-- Create a record type DepartmentInfo with dept_id, dept_name, and location?
DECLARE
    TYPE DepartmentInfo IS RECORD (
        dept_id NUMBER,
        dept_name VARCHAR2(30),
        location VARCHAR2(20)
    );
    Department_details DepartmentInfo;
BEGIN
    Department_details.dept_id := 302;
    Department_details.dept_name := 'HR';
    Department_details.location := 'HYD';
        DBMS_OUTPUT.PUT_LINE ('DepartmentInfo' ||  Department_details.dept_id||','||Department_details.dept_name|| ','||Department_details.location);
END;
/

-- Fetch a row from EMPLOYEES into a record.
-- record is user-defined, but it holds data coming from a table.
DECLARE
    TYPE EMPLOYEES IS RECORD(
        emp_id hr.employees.employee_id%TYPE,
        emp_name hr.employees.first_name%TYPE
    );
    emp_practice EMPLOYEES;
BEGIN
    SELECT employee_id, first_name
    INTO emp_practice.emp_id, emp_practice.emp_name
    FROM hr.employees
    WHERE employee_id = 101;
    DBMS_OUTPUT.PUT_LINE('Name: ' || emp_practice.emp_name || ', ID: ' || emp_practice.emp_id);
END;
/
-- Table-Based Record
-- a record that is based on a table’s row structure — that is, 
-- it inherits its fields directly from the columns of a database table.
-- This is done using the %ROWTYPE attribute.

DECLARE
  emp employees%ROWTYPE;
BEGIN
  SELECT * INTO emp FROM employees WHERE emp_id = 101;
END;
DECLARE
    emp_record hr.employees%ROWTYPE;
BEGIN
    SELECT * INTO emp_record
    FROM hr.employees
    WHERE employee_id = 100;

    DBMS_OUTPUT.PUT_LINE('ID:'|| emp_record.employee_id);
    DBMS_OUTPUT.PUT_LINE('Name:'|| emp_record.first_name || ' ' || emp_record.last_name);
    DBMS_OUTPUT.PUT_LINE('Salary:'|| emp_record.salary);
END;

DECLARE
    emp employee%ROWTYPE;
BEGIN
    SELECT * INTO emp
    FROM employee
    WHERE employee_id = 101;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Employee copied to backup table.');
END;
CREATE TABLE employees_backup AS SELECT * FROM employees WHERE 1 = 0;

DECLARE
    TYPE EmpArray IS TABLE OF VARCHAR2(100) INDEX BY PLS_INTEGER;
    emp_names EmpArray;
BEGIN
    emp_names(1) := 'cherry';
    emp_names(2) := 'tej';
    emp_names(3) := 'charan';
    FOR i IN 1..3 LOOP
        DBMS_OUTPUT.PUT_LINE('Employee ' || i || ': ' || emp_names(i));
    END LOOP;
END;