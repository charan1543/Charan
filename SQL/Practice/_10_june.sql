-- synonyms
-- In Oracle SQL, synonyms are database objects that provide alternative names for
--  other database objects, such as tables, views, sequences, or even other synonyms. 
--  Synonyms make it easier to reference database objects by providing a simpler or
--   more convenient name, and they can also be used for managing access control and 
--   simplifying queries.

-- Types of Synonyms:
-- Private Synonym: A synonym created for a specific user. 
-- It is accessible only by the user who created it or users who have been granted access to it.

-- Public Synonym: A synonym that can be accessed by any user in the database. 
-- It's useful for making commonly used objects available to all users without
--  requiring users to refer to the object's fully qualified name (schema.object_name).
CREATE VIEW count_emp AS SELECT COUNT(*) AS total FROM employee;


DECLARE
  LN_MARKS NUMBER := 35;
BEGIN
  IF LN_MARKS > 90
  THEN
    DBMS_OUTPUT.PUT_LINE('RESULT: GRADE A');
  ELSIF LN_MARKS > 75
   THEN
    DBMS_OUTPUT.PUT_LINE('RESULT: GRADE B');
  ELSIF LN_MARKS between 36 and 60
   THEN
    DBMS_OUTPUT.PUT_LINE('RESULT: GRADE C');
  ELSIF LN_MARKS = 35
   THEN
    DBMS_OUTPUT.PUT_LINE('RESULT: just pass');  
  ELSE
    DBMS_OUTPUT.PUT_LINE('RESULT: FAIL');
  END IF;
END;

DECLARE
  i NUMBER := 1;
BEGIN
  LOOP
    DBMS_OUTPUT.PUT_LINE('Count: ' || i);
    i := i + 1;
    EXIT WHEN i > 5;
  END LOOP;
END;

DECLARE
  i NUMBER := 1;
BEGIN
  WHILE i <= 5 LOOP
    DBMS_OUTPUT.PUT_LINE('Count: ' || i);
    i := i + 1;
  END LOOP;
END;

BEGIN
  FOR i IN 1..5 LOOP
    DBMS_OUTPUT.PUT_LINE('Count: ' || i);
  END LOOP;
END;