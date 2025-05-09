CREATE MATERIALIZED VIEW WORK_MV
build DEFFERED
    REFRESH
            COMPLETE
                START WITH SYSDATE
                NEXT SYSDATE + 7
AS
    SELECT
        *
    FROM WORKERS;

CREATE MATERIALIZED VIEW WORK1
    BUILD IMMEDIATE
    REFRESH
                COMPLETE
                START WITH TRUNC(SYSDATE, 'MONTH') + INTERVAL '1' MONTH
            NEXT TRUNC(SYSDATE, 'MONTH') + INTERVAL '1' MONTH
AS
    SELECT
        TOTAL_AMOUNT,
        SUM(TOTAL_AMOUNT) AS ORDERS_TOTAL_AMOUNT
    FROM
        ORDERS
    GROUP BY
        TOTAL_AMOUNT;
DROP MATERIALIZED VIEW WORK1
select * from WORK1;

-- Cardinality: - The distinct/unique values in a column against a table
-- Cardinality = Count of distinct values in a column.
-- If you have 1000 rows but only two values (Male, Female), the column has low cardinality.



-- 1.High Cardinality:- Many unique values  LIKE  Email, Phone Number, Employee ID
-- Good candidate for B-tree indexes.
-- 2.Medium Cardinality:- Moderate number of unique values LIKE  Department, City, Job Title
-- 3.Low Cardinality:- Few unique values   LIKE   Gender, Status (Active/Inactive), Boolean flags

-- | Column Type        | Cardinality | Best Index Type      | Reasoning                                             |
-- | ------------------ | ----------- | -------------------- | ----------------------------------------------------- |
-- | Primary Keys       | Very High   | B-Tree               | Unique; fast lookup                                   |
-- | Foreign Keys       | High        | B-Tree               | Used in joins/filters                                 |
-- | Status/Flags       | Low         | Bitmap (Oracle only) | Bitmap handles repetitive data well                   |
-- | Job Titles, Cities | Medium      | B-Tree (if filtered) | May benefit if used in `WHERE`, `GROUP BY` frequently |
