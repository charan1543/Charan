-- It is used to perform Conditional logic, similar to 
-- IF-THEN-ELSE, but it is more readable when dealing with 
-- multiple conditios.
-- Simple CASE

-- Compares a single expression to multiple possible values.

DECLARE
    V_GRADE  CHAR(1) := 'B';
    V_RESULT VARCHAR2(20);
BEGIN
    V_RESULT :=
        CASE V_GRADE
            WHEN 'A' THEN
                'Excellent'
            WHEN 'B' THEN
                'Good'
            WHEN 'C' THEN
                'Fair'
            ELSE 'Fail'
        END;

    DBMS_OUTPUT.PUT_LINE('Result: ' || V_RESULT);
END;
-- Searched CASE
DECLARE
    V_SCORE NUMBER := 78;
    V_GRADE VARCHAR2(10);
BEGIN
    V_GRADE :=
        CASE
            WHEN V_SCORE >= 90 THEN
                'A'
            WHEN V_SCORE >= 80 THEN
                'B'
            WHEN V_SCORE >= 70 THEN
                'C'
            ELSE 'F'
        END;

    DBMS_OUTPUT.PUT_LINE('Grade: ' || V_GRADE);
END;

-- Simple CASE:
-- “If this one thing equals that value, then give this result.”
-- Simple CASE compares one column or expression to fixed values.


-- Searched CASE:
-- “If this condition is true (it can be anything — >, <, AND, 
-- OR), then give this result.”
-- Searched CASE checks individual conditions that can involve
--  any logic, not just equality.

-- Let's say we have a variable dept_name, and we want to assign a department code based on that.

DECLARE
  dept_name VARCHAR2(20) := 'IT';
  dept_code VARCHAR2(10);
BEGIN
  CASE dept_name
    WHEN 'IT' THEN
      dept_code := 'D01';
    WHEN 'HR' THEN
      dept_code := 'D02';
    WHEN 'Sales' THEN
      dept_code := 'D03';
    ELSE
      dept_code := 'D00';
  END CASE;

  DBMS_OUTPUT.PUT_LINE('Department Code: ' || dept_code);
END;

-- Now let’s use salary logic to assign salary grades:
DECLARE
    SALARY NUMBER := 60000;
    GRADE  VARCHAR2(10);
BEGIN
    CASE
        WHEN SALARY >= 80000 THEN
            GRADE := 'A';
        WHEN SALARY >= 50000 THEN
            GRADE := 'B';
        ELSE
            GRADE := 'C';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Salary Grade: ' || GRADE);
END;

-- Nested CASE logic to determine both grade and feedback.
DECLARE
  marks NUMBER := 85;
  grade CHAR(1);
  feedback VARCHAR2(50);
BEGIN
  CASE 
    WHEN marks >= 90 THEN
      grade := 'A';
    WHEN marks >= 75 THEN
      grade := 'B';
    WHEN marks >= 50 THEN
      grade := 'C';
    ELSE
      grade := 'F';
  END CASE;

  CASE grade
    WHEN 'A' THEN feedback := 'Excellent!';
    WHEN 'B' THEN feedback := 'Very Good';
    WHEN 'C' THEN feedback := 'Good, but room for improvement';
    WHEN 'F' THEN feedback := 'Needs improvement';
  END CASE;

  DBMS_OUTPUT.PUT_LINE('Grade: ' || grade);
  DBMS_OUTPUT.PUT_LINE('Feedback: ' || feedback);
END;

BEGIN
    EXECUTE IMMEDIATE 'UPDATE orders SET amount = amount + 100 WHERE costomer_id = 1';
    COMMIT;
END;
select * from orders;

DECLARE
  first_name     VARCHAR2(50) := 'Bob';
  salary   NUMBER;
  
BEGIN
  SELECT salary
  INTO emp_salary
  FROM employees
  WHERE name = emp_name;
  CASE 
    WHEN emp_salary >= 80000 THEN
      salary_grade := 'High';
    WHEN emp_salary >= 50000 THEN
      salary_grade := 'Medium';
    ELSE
      salary_grade := 'Low';
  END CASE;
  DBMS_OUTPUT.PUT_LINE('Employee: ' || first_name);
  DBMS_OUTPUT.PUT_LINE('Salary: ' || salary);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Employee not found.');
  WHEN TOO_MANY_ROWS THEN
    DBMS_OUTPUT.PUT_LINE('Multiple employees found with that name.');
END;