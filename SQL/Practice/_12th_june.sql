DECLARE
    v_name VARCHAR2(50);
    v_age  NUMBER;
BEGIN
    v_name := 'John Doe';          
    v_age := 25;                   
    
    IF v_age >= 18 THEN
        DBMS_OUTPUT.PUT_LINE(v_name || ' is an adult.');
    ELSE
        DBMS_OUTPUT.PUT_LINE(v_name || ' is a minor.');
    END IF;
END;
-- Write a PL/SQL block that uses a FOR loop to calculate the factorial of a number.

DECLARE
v_number number := 5;
v_factorial number := 1;
BEGIN
     for i in v_number 
    loop
        v_factorial := v_factorial * i; 
        END loop;
        DBMS_OUTPUT.PUT_LINE ('factorial'|| v_number|| 'is'||v_factorial);
END;

DECLARE
    v_number     NUMBER := 5;
    v_factorial  NUMBER := 1;  
BEGIN
    FOR i IN 1..v_number 
    LOOP
        v_factorial := v_factorial * i; 
            END LOOP;
    
    -- Output the result
    DBMS_OUTPUT.PUT_LINE('Factorial of ' || v_number || ' is ' || v_factorial);
END;

-- Write a PL/SQL block that divides two numbers and handles division by zero exceptions.
DECLARE
    v_num1 NUMBER := 10;
    v_num2 NUMBER := 0; -- Change this to a non-zero number to test normal behavior
    v_result NUMBER;
BEGIN
    v_result := v_num1 / v_num2;
    DBMS_OUTPUT.PUT_LINE('Result: ' || v_result);
EXCEPTION
    WHEN ZERO_DIVIDE THEN
        DBMS_OUTPUT.PUT_LINE('Error: Cannot divide by zero!');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An unexpected error occurred.');
END;

-- Write a PL/SQL block that prints a multiplication table (from 1 to 5) using nested loops.
DECLARE
    v_row NUMBER;
    v_col NUMBER;
BEGIN
    FOR v_row IN 1..5
    LOOP
        FOR v_col IN 1..5
        LOOP
            DBMS_OUTPUT.PUT_LINE(V_ROW * V_COL || '' );
        END LOOP;
        DBMS_OUTPUT.PUT_LINE;
        END;

-- Write a PL/SQL block that checks if a given number is positive, negative, or zero, and displays an appropriate message using an IF-ELSE statement.
DECLARE
    V_NUMBER NUMBER;
BEGIN
    v_number:= 5;
IF V_NUMBER > 0 THEN
    DBMS_OUTPUT.PUT_LINE('the number is positive');
ELSIF V_NUMBER < 0 THEN
    DBMS_OUTPUT.PUT_LINE('the number is negative');
ELSE
    DBMS_OUTPUT.PUT_LINE('the number is zero');
END IF ;
END;

-- Write a PL/SQL block that checks the month number (from 1 to 12) and returns the corresponding month name using a CASE expression.

DECLARE
    v_month NUMBER := 5; 
    v_month_name VARCHAR2(20);
BEGIN
    CASE v_month
        WHEN 1 THEN v_month_name := 'January';
        WHEN 2 THEN v_month_name := 'February';
        WHEN 3 THEN v_month_name := 'March';
        WHEN 4 THEN v_month_name := 'April';
        WHEN 5 THEN v_month_name := 'May';
        WHEN 6 THEN v_month_name := 'June';
        WHEN 7 THEN v_month_name := 'July';
        WHEN 8 THEN v_month_name := 'August';
        WHEN 9 THEN v_month_name := 'September';
        WHEN 10 THEN v_month_name := 'October';
        WHEN 11 THEN v_month_name := 'November';
        WHEN 12 THEN v_month_name := 'December';
        ELSE v_month_name := 'Invalid month';
    END CASE;
    
    DBMS_OUTPUT.PUT_LINE('The month is: ' || v_month_name);
END;

-- Write a PL/SQL block that uses a WHILE loop to print numbers from 1 to 10. The loop should exit as soon as it reaches 6.

DECLARE
    v_counter NUMBER := 1;
BEGIN
    WHILE v_counter <= 10 LOOP
        IF v_counter = 6 THEN
            EXIT;
        END IF;
        DBMS_OUTPUT.PUT_LINE('Number: ' || v_counter);
        v_counter := v_counter + 1;
    END LOOP;
END;

DECLARE
    v_score NUMBER := 85;  
    v_grade CHAR(1);
BEGIN
    IF v_score >= 90 THEN
        v_grade := 'A';
    ELSIF v_score >= 80 THEN
        v_grade := 'B';
    ELSIF v_score >= 70 THEN
        v_grade := 'C';
    ELSE
        v_grade := 'F';
    END IF;

    DBMS_OUTPUT.PUT_LINE('Grade: ' || v_grade);
    CASE v_grade
        WHEN 'A' THEN DBMS_OUTPUT.PUT_LINE('Excellent!');
        WHEN 'B' THEN DBMS_OUTPUT.PUT_LINE('Good job!');
        WHEN 'C' THEN DBMS_OUTPUT.PUT_LINE('You can improve.');
        WHEN 'F' THEN DBMS_OUTPUT.PUT_LINE('Needs improvement.');
        ELSE DBMS_OUTPUT.PUT_LINE('Invalid grade.');
    END CASE;
END;