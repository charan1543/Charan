-- variable declaration:
DECLARE
   v_num1 NUMBER := 10;
   v_num2 NUMBER := 5;
   v_result NUMBER;
BEGIN
   v_result := v_num1 + v_num2;
   DBMS_OUTPUT.PUT_LINE('The result is: ' || v_result);
END;

-- Local variables: Declared inside a block or subprogram and only accessible within it.
-- Global variables: PL/SQL does not support truly global variables, but you can use package variables for a similar effect.

-- | Data Type     | Description                           |
-- | ------------- | ------------------------------------- |
-- | `NUMBER`      | Numeric values                        |
-- | `VARCHAR2(n)` | Variable-length character string      |
-- | `CHAR(n)`     | Fixed-length character string         |
-- | `DATE`        | Date and time values                  |
-- | `BOOLEAN`     | TRUE, FALSE, or NULL (only in PL/SQL) |
-- | `Composite`   | RECORD, TABLE, VARRAY                 |
-- | `Reference Datatype`|  %TYPE, %ROW TYPE

-- Reference Datatype

DECLARE
   v_salary hr.employees.salary%TYPE;
BEGIN
   FOR rec IN (SELECT * FROM hr.employees) LOOP
      v_salary := rec.salary;
      DBMS_OUTPUT.PUT_LINE('Employee ID: ' || rec.employee_id || ', Salary: ' || v_salary);
   END LOOP;
END;

-- with out loop:
DECLARE
   v_salary   employees.salary%TYPE;
   v_emp_id   employees.employee_id%TYPE;
   v_name     employees.last_name%TYPE;
BEGIN
   SELECT employee_id, last_name, salary
   INTO v_emp_id, v_name, v_salary
   FROM employees
   WHERE ROWNUM = 1;

   DBMS_OUTPUT.PUT_LINE('ID: ' || v_emp_id || ', Name: ' || v_name || ', Salary: ' || v_salary);
END;

-- % row type

DECLARE
   v_emp hr.employees%ROWTYPE;
BEGIN
   SELECT *
   INTO v_emp
   FROM hr.employees
   WHERE ROWNUM = 1;

   DBMS_OUTPUT.PUT_LINE('ID: ' || v_emp.employee_id || ', Name: ' || v_emp.last_name || ', Salary: ' || v_emp.salary);
END;

-- You can use BULK COLLECT into collections — still no loop needed to fetch data?
DECLARE
   TYPE salary_table IS TABLE OF hr.employees.salary%TYPE;
   TYPE name_table IS TABLE OF hr.employees.last_name%TYPE;
   
   v_salaries salary_table;
   v_names    name_table;
BEGIN
   SELECT salary, last_name
   BULK COLLECT INTO v_salaries, v_names
   FROM HR.employees;

   DBMS_OUTPUT.PUT_LINE('First employee: Name = ' || v_names(1) || ', Salary = ' || v_salaries(1));
END;

-- Multiple Rows Using %ROWTYPE and BULK COLLECT

DECLARE
   TYPE emp_table_type IS TABLE OF employees%ROWTYPE;
   v_emps emp_table_type;
BEGIN
   SELECT *
   BULK COLLECT INTO v_emps
   FROM employees;

   -- Optional output
   DBMS_OUTPUT.PUT_LINE('First Employee ID: ' || v_emps(1).employee_id || ', Salary: ' || v_emps(1).salary);
END;

--  IF Statement
DECLARE
   v_num NUMBER := -5;
BEGIN
   IF v_num > 0 THEN
      DBMS_OUTPUT.PUT_LINE('Positive number');
   ELSIF v_num < 0 THEN
      DBMS_OUTPUT.PUT_LINE('Negative number');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Zero');
   END IF;
END;

-- CASE Statement
DECLARE
   v_score NUMBER := 85;
   v_grade CHAR(1);
BEGIN
   CASE 
      WHEN v_score >= 90 THEN v_grade := 'A';
      WHEN v_score >= 80 THEN v_grade := 'B';
      WHEN v_score >= 70 THEN v_grade := 'C';
      WHEN v_score >= 60 THEN v_grade := 'D';
      ELSE v_grade := 'F';
   END CASE;
   DBMS_OUTPUT.PUT_LINE('Grade: ' || v_grade);
END;

-- LOOP Statement
DECLARE
   i NUMBER := 1;
BEGIN
   LOOP
      EXIT WHEN i > 5;
      DBMS_OUTPUT.PUT_LINE('Number: ' || i);
      i := i + 1;
   END LOOP;
END;

-- Print employee names and salaries using FOR loop and %ROWTYPE?
DECLARE
   v_emp hr.employees%ROWTYPE;
BEGIN
   FOR rec IN (SELECT * FROM hr.employees) LOOP
      DBMS_OUTPUT.PUT_LINE('Name: ' || rec.last_name || ', Salary: ' || rec.salary);
   END LOOP;
END;

-- Print employees with salary > 5000 using FOR and %TYPE

-- Find max salary using FOR loop
DECLARE
name VARCHAR2(20);
salary NUMBER;
BEGIN
    for sal in (select first_name || LAST_NAME AS FULL_NAME, SALARY)
    LOOP
        IF sal.salary > v_max_salary THEN
         v_max_salary := sal.salary;
      END IF;
   END LOOP;
   DBMS_OUTPUT.PUT_LINE('Max Salary: ' || v_max_salary);
END;
-- Count employees in department 10 using FOR loop

DECLARE
   v_count NUMBER := 0;
BEGIN
   FOR rec IN (SELECT employee_id FROM hr.employees WHERE department_id = 10) LOOP
      v_count := v_count + 1;
   END LOOP;
   DBMS_OUTPUT.PUT_LINE('Employees in Dept 10: ' || v_count);
END;

-- Sequential Control Statements
-- GOTO
-- Jumps to a labeled statement within the same block
-- Can make code harder to follow (like in older languages)

DECLARE
   v_salary NUMBER := 1000;
BEGIN
   IF v_salary < 2000 THEN
      GOTO too_low;
   END IF;

   DBMS_OUTPUT.PUT_LINE('Salary is acceptable.');
   <<too_low>>
   DBMS_OUTPUT.PUT_LINE('Salary is too low!');
END;

BEGIN
   IF 5 > 10 THEN
      DBMS_OUTPUT.PUT_LINE('This will not print');
   ELSE
      NULL;
   END IF;

   DBMS_OUTPUT.PUT_LINE('Code continues...');
END;

-- Stop a loop when a condition is met
DECLARE
   i NUMBER := 1;
BEGIN
   LOOP
      DBMS_OUTPUT.PUT_LINE('i = ' || i);
      i := i + 1;

      EXIT WHEN i > 3;
   END LOOP;

   DBMS_OUTPUT.PUT_LINE('Loop exited.');
END;

DECLARE
Grade VARCHAR2(30);
BEGIN
    if grade = 'A' THEN
      DBMS_OUTPUT.PUT_LINE('Excellent');
   ELSIF v_grade = 'B' THEN
      DBMS_OUTPUT.PUT_LINE('Good');
   ELSE
      NULL;
   END IF;
   DBMS_OUTPUT.PUT_LINE('Grade processing complete.');
END;
DECLARE
   user_age NUMBER := 15;
BEGIN
   IF user_age < 18 THEN
      GOTO too_young;
   END IF;

   DBMS_OUTPUT.PUT_LINE('Access granted.');

   <<too_young>>
   DBMS_OUTPUT.PUT_LINE('Access denied: Underage.');
END;