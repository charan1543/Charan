DECLARE
    LV_SQL         VARCHAR2(500);
    LN_ORDER_ID    NUMBER := 1001;
    LN_TOTAL_AMT   NUMBER := 5000;
    LN_CUSTOMER_ID NUMBER := 201;
    LN_SALARY      NUMBER := 45000;
BEGIN
    LV_SQL := 'INSERT INTO ord VALUES(:1, :2, :3, :4)';
    EXECUTE IMMEDIATE LV_SQL
        USING LN_ORDER_ID, LN_TOTAL_AMT, LN_CUSTOMER_ID, LN_SALARY;
END;
/

DECLARE
    LV_SQL    VARCHAR2(500);
    LN_SALARY NUMBER;
    LN_RESULT VARCHAR2(500);
BEGIN
    LV_SQL := 'select max(&col_name) from hr.employees';
    EXECUTE IMMEDIATE LV_SQL
    INTO LN_RESULT;
    DBMS_OUTPUT.PUT_LINE('max value:' || LN_RESULT);
END;

declare
lv_sql varchar2(500);
ln_result number;
BEGIN
    lv_sql :='select max (&column) from hr.employees';
    EXECUTE IMMEDIATE lv_sql INTO ln_result;
    DBMS_OUTPUT.PUT_LINE ('max value' || LN_RESULT );
    EXECUTE IMMEDIATE lv_sql;
    END;

DECLARE
lv_sql varchar2(500);
ln_result NUMBER;
BEGIN
    lv_sql := 'select count(*) from employee &where_clause';
    EXECUTE IMMEDIATE lv_sql into ln_result;
    dbms_output.PUT_LINE ('count'||ln_result);
    end;

BEGIN
    DBMS_OUTPUT.PUT_LINE('Employee ID is: &emp_id');
END;
/

DECLARE
ln_dept_id number :=101;
ln_count number;
BEGIN
    select count(*)  into ln_count from hr.employees where department_id = ln_dept_id;
    DBMS_OUTPUT.PUT_LINE('Number of employees in Dept ' || ln_dept_id || ': ' || ln_count);
    end;

DECLARE
    ln_salary NUMBER;
BEGIN
    SELECT salary INTO ln_salary FROM hr.employees WHERE employee_id = 102;
    DBMS_OUTPUT.PUT_LINE('Salary: ' || ln_salary);
END;
/

DECLARE
    lv_sql   VARCHAR2(100);
    ln_count NUMBER;
BEGIN
    lv_sql := 'SELECT COUNT(*) FROM hr.employees WHERE department_id = :106';
    EXECUTE IMMEDIATE lv_sql INTO ln_count USING 60;
    DBMS_OUTPUT.PUT_LINE('Employee Count: ' || ln_count);
END;
/

DECLARE
    ln_score NUMBER := 85;
    lv_grade varchar2(100);
BEGIN
    CASE 
        WHEN ln_score >= 90 THEN lv_grade := 'A';
        WHEN ln_score >= 80 THEN lv_grade := 'B';
        WHEN ln_score >= 70 THEN lv_grade := 'C';
        WHEN ln_score >= 60 THEN lv_grade := 'D';
        ELSE lv_grade := 'F';
    END CASE;
    DBMS_OUTPUT.PUT_LINE('Grade: ' || lv_grade);
END;
/

-- Skip Even Numbers

begin
    FOR i in 1..10 loop
    if mod(i,2) = 0 then
    continue;
    END IF;
    dbms_output.put_line ('odd_numer' || i);
    END LOOP;
    END;
    /
-- Skips the rest of the current loop iteration
--  and jumps to the next one.
--  Loops from 1 to 100 Exits the loop when a number divisible by both 7 and 11 is found ?
begin
    FOR i in 1..100 loop
    if mod(i,7) = 0 AND MOD(i,11) = 0 then
    continue;
    END IF;
    dbms_output.put_line ('divided =' || i);
    END LOOP;
    END;
    /

-- EXIT Statement
-- Immediately exits a loop when a condition is met

begin
    for i in 1..10 loop
    if i=5 then EXIT;
    end if;
    DBMS_OUTPUT.put_line('i=' ||i);
    end loop;
    dbms_output.put_line ('exit loop at i =5');
    end;
    /
DECLARE
counter number := 1;
BEGIN
    loop
        DBMS_OUTPUT.PUT_LINE('Hello');
        counter := counter + 1;
        EXIT WHEN counter > 3;
        END LOOP;
    END;

-- CASE Statement
-- Replaces complex IF-THEN-ELSE logic with more readable

DECLARE
lv_week NUMBER:= 2;
lv_day VARCHAR2(500);
BEGIN
    CASE lv_week
    WHEN 1 then lv_day := 'sunday';
    when 2 then lv_day := 'Monday';
    when 3 then lv_day := 'tuesday';
    when 4 then lv_day := 'thursday';
    when 5 then lv_day := 'friday';
    when 6 then lv_day := 'saturday';
    ELSE lv_DAY := 'INVALID';
        END CASE;
        dbms_output.PUT_LINE('DAY_TYPE - ' ||  lv_day);
    END;
DECLARE
    LV_MARKS NUMBER := 76;
    LV_GRADE VARCHAR2(50);
BEGIN
    CASE
        WHEN LV_MARKS BETWEEN 81 AND 90 THEN
            LV_GRADE := 'A';
        WHEN LV_MARKS BETWEEN 71 AND 80 THEN
            LV_GRADE := 'B';
        WHEN LV_MARKS BETWEEN 61 AND 70 THEN
            LV_GRADE := 'c';
        WHEN LV_MARKS BETWEEN 41 AND 50 THEN
            LV_GRADE := 'd';
        ELSE
            LV_GRADE := 'Fail';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('grade - ' || LV_GRADE);
END;

DECLARE
    LV_MARKS NUMBER := 78;
    LV_GRADE CHAR(1);
BEGIN
    CASE
        WHEN LV_MARKS >= 90 THEN LV_GRADE := 'A';
        WHEN LV_MARKS >= 80 THEN LV_GRADE := 'B';
        WHEN LV_MARKS >= 70 THEN LV_GRADE := 'C';
        WHEN LV_MARKS >= 60 THEN LV_GRADE := 'D';
        ELSE LV_GRADE := 'F';
    END CASE;

    DBMS_OUTPUT.PUT_LINE('Grade: ' || LV_GRADE);
END;
/
