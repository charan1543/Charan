SELECT
    DEPARTMENT_ID,
    COUNT(*)
FROM
    HR.EMPLOYEES
GROUP BY
    DEPARTMENT_ID
HAVING
    COUNT(*) > 5;

SELECT
    *
FROM
    (
        SELECT
            SALARY
        FROM
            HR.EMPLOYEES
        ORDER BY
            SALARY DESC
    )
WHERE
    ROWNUM = 2;

SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            HR.EMPLOYEES
        ORDER BY
            SALARY DESC
    )
WHERE
    ROWNUM = 1;

SELECT
    E.FIRST_NAME,
    D.DEPARTMENT_NAME
FROM
         HR.EMPLOYEES E
    JOIN HR.DEPARTMENTS D ON E.DEPARTMENT_ID = D.DEPARTMENT_ID;

SELECT
    COUNT(*),
    DEPARTMENT_ID
FROM
    HR.EMPLOYEES
GROUP BY
    DEPARTMENT_ID;

SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            HR.EMPLOYEES
        ORDER BY
            SALARY DESC
    )
WHERE
    ROWNUM <= 3;

-- 
SELECT
    D.DEPARTMENT_NAME,
    COUNT(E.EMPLOYEE_ID) AS NUM_EMPLOYEES
FROM
    HR.DEPARTMENTS D
    LEFT JOIN HR.EMPLOYEES   E ON D.DEPARTMENT_ID = E.DEPARTMENT_ID
GROUP BY
    D.DEPARTMENT_NAME;

SELECT
    *
FROM
    HR.EMPLOYEES
WHERE
    MANAGER_ID IS NULL;
-- show departments where the average salary is greater than 5000.

SELECT
    DEPARTMENT_ID,
    AVG(SALARY)
FROM
    HR.EMPLOYEES
GROUP BY
    DEPARTMENT_ID
HAVING
    AVG(SALARY) > 5000;

SELECT
    MAX(SALARY)
FROM
    HR.EMPLOYEES
WHERE
    SALARY < (
        SELECT
            MAX(SALARY)
        FROM
            HR.EMPLOYEES
        WHERE
            SALARY < (
                SELECT
                    MAX(SALARY)
                FROM
                    HR.EMPLOYEES
            )
    );
