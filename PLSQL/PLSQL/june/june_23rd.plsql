-- | Type              | Syntax   | Replaces | Use For          |
-- | ----------------- | -------- | -------- | ---------------- |
-- | Lexical Parameter | `&param` | SQL Text | Columns, clauses |
-- | Bind Variable     | `:param` | Value    | Data values      |

DECLARE
   lv_sql   VARCHAR2(1000);
   ln_count NUMBER;
BEGIN
   lv_sql := 'SELECT COUNT(*) FROM hr.employees WHERE department_id = :1';

   EXECUTE IMMEDIATE lv_sql INTO ln_count USING 50;

   DBMS_OUTPUT.PUT_LINE('Number of employees in department 50: ' || v_count);
END;

create table bikes (company_name VARCHAR2(20), cc number, town varchar2(30));
DECLARE
lv_table varchar2 (500);
begin
    lv_table:= 'create table bikes (company_name VARCHAR2(20), cc number, town varchar2(30))';
    EXECUTE IMMEDIATE lv_table;
    end;

DECLARE
LV_INSERT VARCHAR2(500);
BEGIN 
    LV_INSERT := 'insert into bikes (company_name, cc, town)values (''bajaj_pulsar'', 150, ''jmd'')';
    EXECUTE IMMEDIATE LV_INSERT;
    END;
select * from bikes;

-- DECLARE
-- LV_INSERT VARCHAR2(500);
-- BEGIN
--     LV_INSERT insert into bikes '(&company_name, &cc, &town)';
--     EXECUTE IMMEDIATE LV_INSERT;
--     end; this method not work

DECLARE
LV_INSERT VARCHAR2(500);
BEGIN 
    LV_INSERT := 'insert into bikes (company_name, cc, town)values ('' bajaj_Discover'', 150, '' jmd'')';
    EXECUTE IMMEDIATE LV_INSERT;
    END;

DESCRIBE bikes;

DECLARE
lv_bind VARCHAR2(500);
com_name VARCHAR2(100):= 'bajaj_platina';
BEGIN
    com_name := 'bajaj_pulsar';  -- Assign a value
    lv_bind := 'INSERT INTO bikes (company_name) VALUES (:com_name)';
    EXECUTE IMMEDIATE lv_bind USING com_name;  -- Bind the value
END;

-- Bind parameter

DECLARE
LV_INSERT VARCHAR2(500);
company_name VARCHAR2(100) := 'bajaj_pulsar';  -- Example value for company name
cc NUMBER := 150;  -- Example value for cc
town VARCHAR2(100) := 'jmd';  -- Example value for town
BEGIN 
    LV_INSERT := 'INSERT INTO bikes (company_name, cc, town) VALUES (:1, :2, :3)';
    EXECUTE IMMEDIATE LV_INSERT USING company_name, cc, town;
    END;
-- update

DECLARE
    lv_bind VARCHAR2(500);
    com_name VARCHAR2(100); 
    cc_value NUMBER;        
BEGIN
    com_name := 'yamaha_fz';  -- New company name to update
    cc_value := 150;          -- CC value to match for update
    lv_bind := 'UPDATE bikes SET company_name = :com_name WHERE cc = :cc_value';
    EXECUTE IMMEDIATE lv_bind USING com_name, cc_value;
END;

DECLARE
Lv_sql   VARCHAR2(100);
LN_dept  NUMBER := 50;
LN_count NUMBER;
BEGIN
    Lv_sql := 'SELECT COUNT(*) FROM HR.employees WHERE department_id = :1';
    EXECUTE IMMEDIATE Lv_sql INTO LN_count USING LN_dept;
    DBMS_OUTPUT.PUT_LINE('Employees in Dept ' || LN_dept || ': ' || LN_count);
    END;

SELECT * FROM &table;

select &column, first_name from hr.EMPLOYEEs;
select &column || last_name as fullName from &table;

insert into bikes values (&company_name, &cc, &town);

DECLARE
    l_sql     VARCHAR2(1000);
    l_result  VARCHAR2(100);
    l_id      NUMBER := 50;
BEGIN
    l_sql := 'SELECT first_name FROM hr.employees &where AND ROWNUM = 1';

    EXECUTE IMMEDIATE l_sql INTO l_result USING l_id;

    DBMS_OUTPUT.PUT_LINE('Result: ' || l_result);
END;