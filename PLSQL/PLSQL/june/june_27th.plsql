DECLARE
    EMP_REC HR.EMPLOYEES%ROWTYPE;  -- Table-based record
BEGIN
    SELECT
        *
    INTO EMP_REC
    FROM
        HR.EMPLOYEES
    WHERE
        EMPLOYEE_ID = 101;

    DBMS_OUTPUT.PUT_LINE('Name: '
                         || EMP_REC.FIRST_NAME
                         || ' '
                         || EMP_REC.LAST_NAME);

END;
-- List employees with salary > 55000:
SELECT
    FIRST_NAME,
    LAST_NAME,
    SALARY
FROM
    HR.EMPLOYEES
WHERE
    SALARY > 25000;
-- Order employees by hire_date:
SELECT
    *
FROM
    HR.EMPLOYEES
ORDER BY
    HIRE_DATE;
-- Get average salary per department:
SELECT
    DEPARTMENT_ID,
    AVG(SALARY) AS AVG_SALARY
FROM
    EMPLOYEES
GROUP BY
    DEPARTMENT_ID;

-- Employees earning more than the average salary:
SELECT
    FIRST_NAME,
    LAST_NAME,
    SALARY
FROM
    HR.EMPLOYEES
WHERE
    SALARY > (
        SELECT
            AVG(SALARY)
        FROM
            HR.EMPLOYEES
    );

SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    DEPARTMENT_ID IN (
        SELECT
            DEPARTMENT_ID
        FROM
            HR.EMPLOYEES
        GROUP BY
            DEPARTMENT_ID
        HAVING
            COUNT(*) > 1
    );

-- Show average salary by department.
SELECT
    DEPARTMENT_ID,
    AVG_SAL
FROM
    (
        SELECT
            DEPARTMENT_ID,
            AVG(SALARY) AS AVG_SAL
        FROM
            EMPLOYEE
        GROUP BY
            DEPARTMENT_ID
    );

-- Show each employee and the total salary of all employees.
SELECT
    FIRST_NAME,
    SALARY,
    (
        SELECT
            SUM(SALARY)
        FROM
            EMPLOYEE
    ) AS TOTAL_SALARIES
FROM
    EMPLOYEE;

-- Find employees whose salary is greater than the average of their department.
SELECT
    FIRST_NAME || LAST_NAME AS FULL_NAME,
    SALARY,
    DEPARTMENT_ID
FROM
    EMPLOYEE E
WHERE
    SALARY > (
        SELECT
            AVG(SALARY)
        FROM
            EMPLOYEE
        WHERE
            DEPARTMENT_ID = E.DEPARTMENT_ID
    );

-- Find the employee with the highest salary
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY = (
        SELECT
            MAX(SALARY)
        FROM
            EMPLOYEE
    );

-- List all employees in the same department as 'A'.
SELECT
    *
FROM
    EMPLOYEE
WHERE
    DEPARTMENT_ID = (
        SELECT
            DEPARTMENT_ID
        FROM
            EMPLOYEE
        WHERE
            FIRST_NAME = 'A'
    );

-- | Type                    | Description                               | Example Use Case             |
-- | ----------------------- | ----------------------------------------- | ---------------------------- |
-- | **Single-row subquery** | Returns one row and one column            | Compare with `=`, `>`, `<`   |
-- | **Multi-row subquery**  | Returns multiple rows                     | Use `IN`, `ANY`, `ALL`       |
-- | **Correlated subquery** | Refers to outer query’s row               | Compare row-by-row           |
-- | **Subquery in SELECT**  | Used in SELECT clause for each row        | Add computed value           |
-- | **Subquery in FROM**    | Acts like a temporary table (inline view) | Aggregate, then filter again |

-- Find employees in the same departments as employees earning over 2000
SELECT
    *
FROM
    EMPLOYEE
WHERE
    DEPARTMENT_ID IN (
        SELECT
            DEPARTMENT_ID
        FROM
            EMPLOYEE
        WHERE
            SALARY > 2000
    );
-- Find employees in the same departments as employees earning over 2000
SELECT
    *
FROM
    EMPLOYEE
WHERE
    DEPARTMENT_ID IN (
        SELECT
            DEPARTMENT_ID
        FROM
            EMPLOYEE
        WHERE
            SALARY > 2000
    );

-- Find employees earning more than ANY employee in department 10.
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY > ANY (
        SELECT
            SALARY
        FROM
            EMPLOYEE
        WHERE
            DEPARTMENT_ID = 10
    );

-- Find employees whose salary is greater than all employees in department 10
SELECT
    *
FROM
    EMPLOYEE
WHERE
    SALARY > ANY (
        SELECT
            SALARY
        FROM
            EMPLOYEE
        WHERE
            DEPARTMENT_ID = 10
    );

-- Show departments that have employees earning > 2500
SELECT DISTINCT
    DEPARTMENT_ID
FROM
    EMPLOYEE E
WHERE
    EXISTS (
        SELECT
            1
        FROM
            EMPLOYEE
        WHERE
                DEPARTMENT_ID = E.DEPARTMENT_ID
            AND SALARY > 2500
    );

-- Employees who earn the same salary as someone in another department
SELECT
    *
FROM
    EMPLOYEE E1
WHERE
    SALARY IN (
        SELECT
            SALARY
        FROM
            EMPLOYEE E2
        WHERE
            E1.DEPARTMENT_ID <> E2.DEPARTMENT_ID
    );

-- Find departments where every employee earns more than 1000
SELECT DISTINCT
    DEPARTMENT_ID
FROM
    EMPLOYEE E
WHERE
    1000 < ALL (
        SELECT
            SALARY
        FROM
            EMPLOYEE
        WHERE
            DEPARTMENT_ID = E.DEPARTMENT_ID
    );