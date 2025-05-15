-- Sequences 
-- A sequence is used to automatically generate unique numbers,
--  typically for primary key columns.
--  This is especially useful when you want to:

-- | Feature               | Benefit                            |
-- | --------------------- | ---------------------------------- |
-- | Auto-increment values | Automatically generate unique IDs  |
-- | Avoid duplicates      | Guarantees uniqueness in a column  |
-- | Concurrency safe      | Handles multiple inserts at once   |
-- | Performance options   | Supports caching for faster access |

CREATE SEQUENCE first
START WITH 500
INCREMENT BY 10
MAXVALUE 9999
CYCLE
CACHE 20; 
SELECT first.NEXTVAL FROM dual;
SELECT first.CURRVAL FROM dual;
drop SEQUENCE first;