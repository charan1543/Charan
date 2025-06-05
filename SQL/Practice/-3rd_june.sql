-- Scalar Data Types
-- | Data Type     | Description                              | Example                      |
-- | ------------- | ---------------------------------------- | ---------------------------- |
-- | `NUMBER`      | Integer or floating point number         | `salary NUMBER := 5000;`     |
-- | `VARCHAR2(n)` | Variable-length string (max `n` chars)   | `name VARCHAR2(50);`         |
-- | `CHAR(n)`     | Fixed-length string                      | `gender CHAR(1);`            |
-- | `BOOLEAN`     | Logical values (`TRUE`, `FALSE`, `NULL`) | `is_active BOOLEAN := TRUE;` |
-- | `DATE`        | Date and time value                      | `hire_date DATE;`            |

-- Composite Data Types
-- Hold multiple values (like arrays or records)
-- | Type           | Description                             |
-- | -------------- | --------------------------------------- |
-- | `RECORD`       | Group of fields of different types      |
-- | `TABLE`        | Like a single-column array (deprecated) |
-- | `VARRAY`       | Variable-size array                     |
-- | `NESTED TABLE` | Table-like collection                   |

-- Reference Data Types
-- Used for referencing objects or memory addresses
-- | Type         | Description                            |
-- | ------------ | -------------------------------------- |
-- | `REF CURSOR` | Pointer to a query result set (cursor) |
-- | `OBJECT`     | Instance of an object type             |

-- LOB Data Types
-- Large object types for storing large data.
-- | Type    | Description                     |
-- | ------- | ------------------------------- |
-- | `CLOB`  | Character large object          |
-- | `BLOB`  | Binary large object             |
-- | `NCLOB` | National character large object |
-- | `BFILE` | Binary file (external file)     |

DECLARE
   v_message VARCHAR2(50) := 'Hello from outer block';
BEGIN
   DECLARE
      v_inner VARCHAR2(50) := 'Inner block';
   BEGIN
      DBMS_OUTPUT.PUT_LINE(v_message);
      DBMS_OUTPUT.PUT_LINE(v_inner);
   END;

   -- DBMS_OUTPUT.PUT_LINE(v_inner);    
END;

DECLARE
   TYPE employee_rec_type IS RECORD (
      emp_id    NUMBER,
      emp_name  VARCHAR2(100),
      salary    NUMBER
   );

   emp_rec employee_rec_type;
BEGIN
   emp_rec.emp_id := 32;
   emp_rec.emp_name := 'charan';
   emp_rec.salary := 14000;

   DBMS_OUTPUT.PUT_LINE('employee_ID: ' || emp_rec.emp_id);
   DBMS_OUTPUT.PUT_LINE('employee_Name: ' || emp_rec.emp_name);
   DBMS_OUTPUT.PUT_LINE('employee_Salary: ' || emp_rec.salary);
END;

DECLARE
    FIRST_NAME VARCHAR(20)
   emp_row employees%ROWTYPE;
BEGIN
   SELECT * INTO emp_row
   FROM employees
   WHERE employee_id = 100;

   DBMS_OUTPUT.PUT_LINE('First_Name: ' || emp_row.first_name);
END;

DECLARE
LV_FIRST_NAME EMPLOYEE.FIRST_NAME.%TYPE;
BEGIN 
    SELECT FIRST_NAME 
    INTO FIRST_NAME
    FROM EMPLOYEE
    WHERE EMPLOYEE_ID ='101'
DBMS_OUTPUT.PUT.PUT_LINE('EMPLOYEE FIRST NAME' ||LV_FIRST_NAME );
END;