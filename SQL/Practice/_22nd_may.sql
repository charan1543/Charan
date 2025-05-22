-- What does the UPPER() function do in Oracle SQL?
-- The UPPER() function converts all characters in a string to uppercase.
select upper ('oracle') from dual;

-- Inserting first 5 rows into EMPLOYEE2 table with South Indian Names and Towns

INSERT INTO EMPLOYEE2 (EMP_ID, EMP_NAME, DEPARTMENT, SALARY, HIRE_DATE, JOB_TITLE, EMAIL, MANAGER_ID)
VALUES (1, 'Ravi Kumar', 'Sales', 75000.00, TO_DATE('2015-06-15', 'YYYY-MM-DD'), 'Sales Manager', 'ravi.kumar@email.com', NULL);

INSERT INTO EMPLOYEE2 (EMP_ID, EMP_NAME, DEPARTMENT, SALARY, HIRE_DATE, JOB_TITLE, EMAIL, MANAGER_ID)
VALUES (9, 'Kumarasamy', 'Finance', 90000.00, TO_DATE('2017-11-10', 'YYYY-MM-DD'), 'Finance Manager', 'kumarasamy@email.com', NULL);

INSERT INTO EMPLOYEE2 (EMP_ID, EMP_NAME, DEPARTMENT, SALARY, HIRE_DATE, JOB_TITLE, EMAIL, MANAGER_ID)
VALUES (3, 'Harini Nair', 'Marketing', 80000.00, TO_DATE('2016-10-20', 'YYYY-MM-DD'), 'Marketing Manager', 'harini.nair@email.com', NULL);

INSERT INTO EMPLOYEE2 (EMP_ID, EMP_NAME, DEPARTMENT, SALARY, HIRE_DATE, JOB_TITLE, EMAIL, MANAGER_ID)
VALUES (4, 'Arjun Subramanian', 'Marketing', 60000.00, TO_DATE('2019-04-10', 'YYYY-MM-DD'), 'Marketing Analyst', 'arjun.subramanian@email.com', 3);

INSERT INTO EMPLOYEE2 (EMP_ID, EMP_NAME, DEPARTMENT, SALARY, HIRE_DATE, JOB_TITLE, EMAIL, MANAGER_ID)
VALUES (5, 'Sita Venkatesh', 'HR', 68000.00, TO_DATE('2017-01-25', 'YYYY-MM-DD'), 'HR Specialist', 'sita.venkatesh@email.com', NULL);

SELECT * FROM EMPLOYEE2;

UPDATE EMPLOYEE2 SET  SALARY = SALARY * 1.10 
WHERE HIRE_DATE < TO_DATE('2020-01-01', 'YYYY-MM-DD');
UPDATE EMPLOYEE2 SET  SALARY = SALARY * 1.10   as salary bonus from employee2
WHERE HIRE_DATE < TO_DATE('2020-01-01', 'YYYY-MM-DD');
DELETE FROM EMPLOYEE2 WHERE SALARY < ( SELECT AVG(SALARY) FROM EMPLOYEES);
SELECT EMP_ID, EMP_NAME,    TRUNC((SYSDATE - hire_date) / 365) AS experience_years,
    CASE
        WHEN SALARY < 25000 THEN 'Low'
        WHEN SALARY BETWEEN 30000 AND 50000 THEN 'Medium'
        ELSE 'high'
   END AS SALARY_GRADE FROM EMPLOYEE2;

select UPPER(EMP_NAME)   AS UPPER_EMPLOYEE_NAME,
    UPPER(DEPARTMENT) AS UPPER_DEPARTMENT_NAME
FROM    EMPLOYEE2 ORDER BY  LENGTH(EMP_NAME) DESC;

select e.*, d.DEPT_ID,d.location
from employee2 e
JOIN department1 d ON e.department = d.dept_name;

-- Correlated Subqueries
SELECT employee_id, first_name, salary, department_id
FROM employee e WHERE salary > (SELECT AVG(salary) FROM employee WHERE department_id = e.department_id);

INSERT INTO employee2 (emp_id, emp_name, department, salary)
SELECT emp_id, emp_name, 20 AS dept_id, salary FROM employees WHERE department = 10;
UPDATE employee2 e SET e.salary = (SELECT AVG(salary) FROM employee2 WHERE department = e.department WHERE e.salary < 50000;

CREATE TABLE high_salary_employees AS
SELECT employee_id, first_name, last_name, salary, department_id
FROM employees
WHERE 1=0;
create table high_salary_employees as select emp_id,emp_name,salary, department from employee2 whwre 1=0;
INSERT INTO high_salary_employees (employee_id, first_name, last_name, salary, department_id)
SELECT employee_id, first_name, last_name, salary, department_id
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);
