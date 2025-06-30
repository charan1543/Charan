DECLARE
  v_name VARCHAR2(50);
  v_age  NUMBER;
BEGIN
  v_name := 'John Doe';
  v_age := 25;

  DBMS_OUTPUT.PUT_LINE('Name: ' || v_name);
  DBMS_OUTPUT.PUT_LINE('Age: ' || v_age);
END;

DECLARE
  v_salary NUMBER := 5000;
  v_bonus  NUMBER := 1500;
  v_total  NUMBER;
BEGIN
  v_total := v_salary + v_bonus;

  DBMS_OUTPUT.PUT_LINE('Total Salary (including bonus): ' || v_total);
END;
-- %TYPE
-- %TYPE is used to declare a variable that has the same data type
--  as a column in a database table or a previously defined variable. This ensures that the variable will always match the data type of the column, which is useful if the column type changes later.
DECLARE
  employee_id hr.employees.employee_id%TYPE;
BEGIN
  employee_id := 101;
  DBMS_OUTPUT.PUT_LINE('Employee ID: ' || employee_id);
END;
/
-- %ROWTYPE
DECLARE
  v_employee hr.employees%ROWTYPE;
BEGIN
  SELECT employee_id, first_name, last_name, salary
  INTO v_employee.employee_id, v_employee.first_name, v_employee.last_name, v_employee.salary
  FROM HR.employees
  WHERE employee_id = 105;

  DBMS_OUTPUT.PUT_LINE('Employee ID: ' || v_employee.employee_id);
  DBMS_OUTPUT.PUT_LINE('Name: ' || v_employee.first_name || ' ' || v_employee.last_name);
  DBMS_OUTPUT.PUT_LINE('Salary: ' || v_employee.salary);
END;

-- Dynamic SQL:

--  it allows you to construct and execute SQL statements dynamically
--  at runtime. This is useful when you need to execute SQL queries
--  where the table name, column names, or values are not known at
--  compile time and can only be determined during program execution.

-- In the context of PL/SQL, as well as in general programming,
--  compile-time and runtime refer to different phases in the
--  lifecycle of a program's execution. Let's break down the
--  differences:

-- Compile-Time:
-- What it is: Compile-time refers to the phase when your PL/SQL code is being compiled, before it is actually 
-- executed. The PL/SQL code is converted into executable 
-- machine code or bytecode by the Oracle compiler.

-- What happens: During compile-time, the compiler checks the 
-- syntax, verifies variable types, ensures all objects
-- (like tables, columns, and functions) exist, and ensures that
--  there are no semantic errors in the code.

-- Errors: Errors detected during this phase are called 
-- compile-time errors (e.g., syntax errors, undeclared variables).

-- Runtime:
-- What it is: Runtime refers to the period when the PL/SQL code 
-- is actually being executed. After the code has been compiled
--  and stored, it’s run by the Oracle runtime engine.

-- What happens: During runtime, the PL/SQL block is executed,
-- and operations like data retrieval, calculations, and 
-- modifications to the database happen.

-- Errors: Errors that occur during execution 
-- (e.g., invalid data values, logical errors, division by zero)
-- are called runtime errors.

-- | **Aspect**         | **Compile-Time**                               | **Runtime**                             |
-- | ------------------ | ---------------------------------------------- | --------------------------------------- |
-- | **When it occurs** | Before execution, when the program is compiled | When the program is actually running    |
-- | **Type of errors** | Compile-time errors (e.g., syntax errors)      | Runtime errors (e.g., logic errors)     |
-- | **Checking done**  | Syntax checking, semantic checking             | Execution, data manipulation            |
-- | **Speed**          | Fast, as it only checks the code structure     | Depends on logic, database access, etc. |

BEGIN
  EXECUTE IMMEDIATE '
    CREATE TABLE employees_temp (
      emp_id    NUMBER,
      emp_name  VARCHAR2(100),
      salary    NUMBER
    )';
  DBMS_OUTPUT.PUT_LINE('Table created successfully.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

BEGIN
  EXECUTE IMMEDIATE 'ALTER TABLE employees ADD (email VARCHAR2(100))';
  DBMS_OUTPUT.PUT_LINE('Column added.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

BEGIN
  EXECUTE IMMEDIATE 'DROP TABLE employees_temp';
  DBMS_OUTPUT.PUT_LINE('Table dropped successfully.');
EXCEPTION
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
