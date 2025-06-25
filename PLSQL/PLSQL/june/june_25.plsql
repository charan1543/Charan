-- Joins
-- Inner join
SELECT e.FIRST_NAME, d.dep_id
FROM hr.employees e
JOIN departments d ON e.department_id = d.dep_id;

-- LEFT OUTER JOIN
SELECT e.first_name, d.dep_id
FROM hr.employees e
LEFT OUTER JOIN departments d ON e.department_id = d.dep_id;

SELECT e.first_name, d.first_name, d.dep_id
FROM hr.employees e
LEFT OUTER JOIN departments d ON e.department_id = d.dep_id

-- RIGHT OUTER JOIN
SELECT e.first_name, d.dep_id
FROM hr.employees e
RIGHT OUTER JOIN departments d ON e.department_id = d.dep_id;

-- FULL OUTER JOIN
SELECT e.first_name, d.dep_id
FROM hr.employees e
full OUTER JOIN departments d ON e.department_id = d.dep_id;

-- SELF JOIN
SELECT e.first_name AS employee, m.MANAGER_ID AS manager
FROM employee e
LEFT OUTER JOIN employee m ON e.manager_id = m.employee_id;

SELECT e.first_name, d.DEP_ID
FROM hr.employees e
JOIN departments d ON e.department_id = d.DEP_ID;

-- Employees
CREATE TABLE employees1 (
    employee_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    department_id NUMBER,
    manager_id NUMBER
);

-- Departments
CREATE TABLE departments1 (
    department_id NUMBER PRIMARY KEY,
    department_name VARCHAR2(50)
);


-- Departments
INSERT INTO departments1 VALUES (10, 'HR');
INSERT INTO departments1 VALUES (20, 'Finance');
INSERT INTO departments1 VALUES (30, 'IT');

-- Employees
INSERT INTO employees1 VALUES (1, 'cherry', 10, NULL);
INSERT INTO employees1 VALUES (2, 'teja', 20, 1);
INSERT INTO employees1 VALUES (3, 'raghav', NULL, 1);
INSERT INTO employees1 VALUES (4, 'dharma', 10, 1);
INSERT INTO employees1 VALUES (5, 'kamal', 30, 4);

SELECT e.name, d.department_name
FROM employees1 e
JOIN departments1 d ON e.department_id = d.department_id;

-- Get a list of all employees and their department names. Show NULL if no department.
SELECT e.name, d.department_name
FROM employees1 e
LEFT JOIN departments1 d ON e.department_id = d.department_id;

-- List all departments and the names of employees in each. Show NULL if no employee is in that department.

SELECT d.department_name, e.name
FROM employees1 e
RIGHT JOIN departments1 d ON e.department_id = d.department_id;

-- List all employees and departments, even if they don’t match.
SELECT e.name, d.department_name
FROM employees1 e
FULL OUTER JOIN departments1 d ON e.department_id = d.department_id;

-- Get a list of employees and their managers.
SELECT e.name AS employee, m.name AS manager
FROM employees1 e
LEFT JOIN employees1 m ON e.manager_id = m.employee_id
WHERE e.manager_id IS NOT NULL;

-- Get department names with the number of employees in each
SELECT d.department_name, COUNT(e.employee_id) AS num_employees
FROM departments1 d
LEFT JOIN employees1 e ON d.department_id = e.department_id
GROUP BY d.department_name;

-- Lexical Parameter are placeholders in both SQL and PLSQL 
-- statements that can be replaced at run time with entire code
--  fragments. (Entire clauses, for eg: WHERE, ORDER BY, Column
--  Names, Table Names, Functions/Key words)
-- Prefixed with a ampersand '&' symbol (for eg., &where_clause)

CREATE TABLE projects (
    project_id NUMBER PRIMARY KEY,
    project_name VARCHAR2(50),
    department_id NUMBER
);

INSERT INTO projects VALUES (1, 'Recruitment System', 10);
INSERT INTO projects VALUES (2, 'Payroll Automation', 20);
INSERT INTO projects VALUES (3, 'Security Upgrade', 30);
INSERT INTO projects VALUES (4, 'ERP Migration', NULL);

SELECT e.name AS employee, p.project_name
FROM employees1 e
JOIN projects p ON e.department_id = p.department_id;

SELECT p.project_name, d.department_name
FROM projects p
LEFT JOIN departments1 d ON p.department_id = d.department_id;

commit;
SELECT m.name AS manager, COUNT(e.employee_id) AS team_size
FROM employees1 e
JOIN employees1 m ON e.manager_id = m.employee_id
GROUP BY m.name;