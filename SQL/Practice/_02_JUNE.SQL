SELECT LAST_DAY(SYSDATE) AS end_of_month FROM dual;
SELECT TO_DATE('2025-06-01', 'YYYY-MM-DD') AS date_value FROM dual;
SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD HH24:MI:SS') AS formatted FROM dual;
SELECT LAST_DAY(SYSDATE) AS end_of_month FROM dual;
SELECT NEXT_DAY(SYSDATE, 'MONDAY') AS next_monday FROM dual;
SELECT TRUNC(SYSDATE, 'MONTH') AS first_day_of_month FROM dual;
SELECT MONTHS_BETWEEN(TO_DATE('2025-06-30', 'YYYY-MM-DD'), TO_DATE('2025-01-01', 'YYYY-MM-DD')) AS months_diff FROM dual;
SELECT * FROM EMPLOYEE WHERE HIRE_DATE >= ADD_MONTHS(SYSDATE, -12);
SELECT * FROM EMPLOYEE WHERE TO_CHAR(HIRE_DATE, 'MM') = '06';
-- Employees whose anniversary is this month
SELECT * FROM EMPLOYEE WHERE TO_CHAR(HIRE_DATE, 'MM') = TO_CHAR(SYSDATE, 'MM');
SELECT   TO_CHAR(HIRE_DATE, 'YYYY') AS HIRE_YEAR, COUNT(*) AS TOTAL_HIRED FROM EMPLOYEE GROUP BY TO_CHAR(HIRE_DATE, 'YYYY') ORDER BY HIRE_YEAR;
SELECT
    FIRST_NAME
    || ''
    || LAST_NAME          AS FULL_NAME,
    HIRE_DATE,
    TO_DATE(TO_CHAR(SYSDATE, 'YYYY')
            || TO_CHAR(HIRE_DATE, '-MM-DD'),
            'YYYY-MM-DD') AS THIS_YEAR_ANNIVERSARY
FROM
    EMPLOYEE;
-- Employees hired in the last WEEK
SELET * FROM EMPLOYEE WHERE HIRE_DATE TRUNC(SYSDATE) -7 AND TRUNC (SYSDATE);
SELECT * FROM EMPLOYEE WHERE HIRE_DATE >= TRUNC(SYSDATE -7);
Employees hired in the last 7 months
SELECT * FROM EMPLOYEE WHERE HIRE_DATE >= TRUNC ADD_MONTHS(SYSDATE -7);
-- Employees hired in the current month
SELECT * FROM EMPLOYEE WHERE TRUNC (HIRE_DATE, 'MM') = TRUNC (SYSDATE, 'MM');
-- Employees hired in the last calendar year TO still date.
SELECT * FROM EMPLOYEE WHERE HIRE_DATE >= TO_DATE(TO_CHAR(EXTRACT(YEAR FROM SYSDATE) - 1) || '-01-01', 'YYYY-MM-DD');
-- Employees hired in the last calendar year?
SELECT * from employee where hire_date >= TO_DATE (TO_CHAR(EXTRACT (YEAR FROM SYSDATE)-1)|| 'YYYY-MM-DD')
AND HIRE_DATE < TO_DATE (TO_CHAR(EXTRACT (YEAR FROM SYSDATE ))||'-01-01', 'YYYY-MM-DD');
-- Employees whose work anniversary is in the next 30 days
SELECT * FROM EMPLOYEE WHERE TO_DATE(SYSDATE, 'YYYY')|| TO_CHAR(HIRE_DATE, '-MM-DD'),'YYYY-MM-DD') BETWEEN SYSDATE AND SYSDATE + 30;
-- Employees hired more than 5 years ago
SELECT * FROM  EMPLOYEE WHERE HIRE_DATE <= ADD_MONTHS (SYSDATE, -60);
-- Group employees by hire year and count?
SELECT TO_CHAR(HIRE_DATE, 'YYYY') AS HIRE_YEAR, COUNT(*) AS NUM_EMPLOYEE FROM EMPLOYEE GROUP BY TO_CHAR(HIRE_DATE, 'YYYY') ORDER BY HIRE_YEAR;
-- Employees hired on weekends
SELECT * FROM EMPLOYEE WHERE TRIM(TO_CHAR(HIRE_DATE, 'DY')) IN ('SAT', 'SUN')
-- Employees hired in the past 90 to 30 days only
SELECT * FROM EMPLOYEE WHERE HIRE_DATE BETWEEN SYSDATE - 90 AND SYSDATE - 30;
-- Employees hired in the last complete quarter?
SELECT * FROM EMPLOYEE WHERE HIRE_DATE BETWEEN SYSDATE -60 AND SYSDATE;
-- Employees whose next anniversary is in the current month
SELECT * FROM EMPLOYEE WHERE TO_CHAR (HIRE_DATE, 'MM') = TO_CHAR (SYSDATE, 'MM');
-- Employees hired on the last day of any month
SELECT * FROM EMPLOYEE WHERE HIRE_DATE = last_day ( hire_date);
-- Employees whose next Monday anniversary is coming up 
select FIRST_NAME, hire_date, next_day (to_date (TO_CHAR(sysdate, 'yyyy') || TO_CHAR(HIRE_DATE, '-MM-DD'), 'YYYY-MM-DD'), 'MONDAY') AS NEXT_MONDAY_ANNIVERSARY FROM EMPLOYEES;
-- Employees hired exactly N days ago (e.g., 100 days)
select * from employee where trunc (sysdate) - hire_date = 100;

-- PLSQL practice on scaler variables
-- A scalar variable in PL/SQL is a variable that holds a single value, such as:

-- Number

-- String

-- Date

-- Boolean
-- This is a logical value datatype (Either TRUE/FALSE)

-- These variables are used to store data that can be manipulated in PL/SQL blocks.
DECLARE
  hire_date DATE;  -- Declaring a variable to store a date
BEGIN
  hire_date := TO_DATE('2022-01-01', 'YYYY-MM-DD');  -- Assigning a value
  DBMS_OUTPUT.PUT_LINE('Hire Date: ' || TO_CHAR(hire_date, 'YYYY-MM-DD'));  -- Printing the value
END;

DECLARE
name varchar2(20);
AGE Number;
JOB varchar2(20);
BEGIN
    name:= 'charan';
    AGE:= 28;
    JOB := 'NO_JOB';
    DBMS_OUTPUT.PUT_LINE('name'||name);
    DBMS_OUTPUT.PUT_LINE('AGE'|| AGE);
    DBMS_OUTPUT.PUT_LINE ('JOB'|| JOB);
END;

DECLARE
price Number;
discount Number;
final_price number;
BEGIN
    price:= 1000;
    discount:= 0.1;
    final_price:= price - (price*discount);
    DBMS_OUTPUT.PUT_LINE('final_price' || final_price);
END;

DECLARE
emp_id number:= 111;
emp_name varchar2(20):= 'charan';
emp_salary Number:= 14000;
BEGIN
    dbms_output.put_line('emp_id'||emp_id);
    dbms_output.put_line('emp_name'||emp_name);
    dbms_output.put_line('emp_salary'||emp_salary);
END;

DECLARE
price Number := 20;
quantity NUMBER:= 2;
total_cost NUMBER;
BEGIN
    total_cost:= price * quantity;
    DBMS_OUTPUT.PUT_LINE ('total_cost'total_cost);
END;

DECLARE
full name varchar2(20):= 'John Doe';
FIRST_NAME varchar2(20);
LAST_NAME varchar2(20);

BEGIN
    FIRST_NAME := SUBSTR(FULL_NAME,1, INSTR (FULL_NAME, '')-1);
    LAST_NAME:= SUBSTR (FULL_NAME,1,INSTR (FULL_NAME,'')-1);
    DBMS_OUTPUT.PUT_LINE ('FIRST_NAME'||FIRST_NAME);
    dbms_output.put_line('LAST_NAME'|| LAST_NAME);
end;