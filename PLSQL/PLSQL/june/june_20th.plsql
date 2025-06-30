DECLARE
  v_table   VARCHAR2(30) := 'HR.EMPLOYEES';
  v_column  VARCHAR2(30) := 'LAST_NAME';
  v_value   VARCHAR2(100);
  v_sql     VARCHAR2(1000);
BEGIN
  v_sql := 'SELECT ' || v_column || ' FROM ' || v_table || ' WHERE ROWNUM = 1';

  EXECUTE IMMEDIATE v_sql INTO v_value;

  DBMS_OUTPUT.PUT_LINE('Result: ' || v_value);
END;

DECLARE
  v_sql    VARCHAR2(1000);
  v_result VARCHAR2(100);
BEGIN
  v_sql := 'SELECT first_name FROM hr.employees WHERE employee_id = 100';

  EXECUTE IMMEDIATE v_sql INTO v_result;

  DBMS_OUTPUT.PUT_LINE('Result: ' || v_result);
END;

DECLARE
  v_sql VARCHAR2(1000);
BEGIN
  v_sql := 'UPDATE employee SET salary = salary + 500 WHERE department_id = 10';

  EXECUTE IMMEDIATE v_sql;

  DBMS_OUTPUT.PUT_LINE('Update complete');
END;

DECLARE
  lr_name  hr.employees.first_name%TYPE;
  lr_id    hr.employees.employee_id%TYPE := 100;
BEGIN
  SELECT first_name
  INTO lr_name
  FROM hr.employees
  WHERE employee_id = lr_id;

  DBMS_OUTPUT.PUT_LINE('Name: ' || lr_name);
END;

-- Fetch One Row %ROWTYPE

DECLARE
  v_emp hr.employees%ROWTYPE; 
BEGIN
  SELECT *
  INTO v_emp
  FROM HR.employees
  WHERE employee_id = 100;

  DBMS_OUTPUT.PUT_LINE(
    'ID: ' || v_emp.employee_id || ', Name: ' || v_emp.first_name || ' ' || v_emp.last_name
  );
END;

BEGIN
  DELETE FROM employee WHERE salary < 3000;
END;