BEGIN
    EXECUTE IMMEDIATE '
        CREATE TABLE my_dynamic_table (
            id NUMBER PRIMARY KEY,
            name VARCHAR2(100)
        )
    ';
END;

DECLARE
    v_sql VARCHAR2(1000);
BEGIN
    v_sql := 'ALTER TABLE my_dynamic_table ADD (email VARCHAR2(100))';
    DBMS_OUTPUT.PUT_LINE('Running SQL: ' || v_sql);
    EXECUTE IMMEDIATE v_sql;
END;
/

begin 
    EXECUTE IMMEDIATE'
    create table ord (order_id number, total_amount number)';
    EXECUTE IMMEDIATE'
    alter table ord add (email varchar2(20))';
    end;
    /
-- if the first statement fails, the second one is never 
-- executed. The whole block jumps to the exception handler.

-- exception handler is a section of code designed to handle 
-- runtime errors or exceptions that occur during the execution
--  of a PL/SQL block. When an error occurs, the normal flow of
--  the program is interrupted and control is passed to the 
-- exception handler.

BEGIN
    BEGIN
        EXECUTE IMMEDIATE 'create table ord (order_id NUMBER, total_amount NUMBER)';
    exception
        when others then 
        DBMS_OUTPUT.PUT_LINE('create failed:' || SQLERRM);
    END;

    BEGIN
        EXECUTE IMMEDIATE 'alter table ord add (customer_id number)';
        exception
        when others then
        DBMS_OUTPUT.PUT_LINE('Alter failed: ' || SQLERRM);
        END;
    END;
/
drop table ord;

DECLARE
   age NUMBER := 20;
BEGIN
   IF age >= 18 THEN
      DBMS_OUTPUT.PUT_LINE('Adult');
   ELSE
      DBMS_OUTPUT.PUT_LINE('Minor');
   END IF;
END;

BEGIN
   UPDATE hr.employees
   SET salary = salary + 1000
   WHERE department = 'IT';
END;
DECLARE
    v_sql VARCHAR2(1000); 
BEGIN
    v_sql := 'ALTER TABLE ord ADD (salary NUMBER)';

    DBMS_OUTPUT.PUT_LINE('Running SQL: ' || v_sql);

    EXECUTE IMMEDIATE v_sql;
END;
/
begin 
    EXECUTE IMMEDIATE 'alter table ord modify salary number ';
    END;

    select * from ord;

DECLARE
v_name VARCHAR2(1000);
BEGIN
    v_name := 'alter table ord add(customer_name varchar2 (20))';
    DBMS_OUTPUT.PUT_LINE('customer_name' || v_name);
    EXECUTE IMMEDIATE v_name;
END;
/
BEGIN
    INSERT into ord (ORDER_ID, total_amount, customer_id, salary,customer_name) values (1, 20000, 121, 15000,'chandhu');
    END;
/
select * from ord;
BEGIN
    insert into ORD (ORDER_ID, total_amount, customer_id, salary,customer_name) values (2,20001,122, 14000,'rami');
    END;
/

BEGIN
    INSERT into ord (ORDER_ID, total_amount, customer_id, salary,customer_name) values (3, 20002, 103, 14500, 'dharma');
    END;
/

BEGIN
    INSERT INTO ord (order_id, TOTAL_AMOUNT, CUSTOMER_ID, salary, customer_name) VALUES (4, 20003, 104, 13400, 'saaho');
END;
/
BEGIN
    EXECUTE IMMEDIATE 'update ord set total_amount where order_id =: 2'
    using 15000;
    END;
/
select * from ord;

BEGIN
    EXECUTE IMMEDIATE 'UPDATE ord SET total_amount = :new_total WHERE order_id = :order_id'
    USING 15000, 2;
END;
/
    BEGIN
        EXECUTE IMMEDIATE 'update ord set total_amount = :new_total_amount  where order_id =:order_id'
        using 16000, 3;
        END;
    /
BEGIN
    EXECUTE IMMEDIATE 'update ord set total_amount = :new_total_amount where order_id =: order_id'
    using 17000, 1;
    END;
/
DECLARE
v_column_name VARCHAR2(50) : = 'customer_name';
v_name VARCHAR2(20);
BEGIN
    v_name := 'alter table ord drop column' || customer_name;
    EXECUTE IMMEDIATE v_sql;
    END;
/

BEGIN
   EXECUTE IMMEDIATE 'ALTER TABLE ord DROP COLUMN customer_name';
END;
/
COmMIT;
select * from ord;

begin
    DELETE from ord where order_id =4;
    end;
/