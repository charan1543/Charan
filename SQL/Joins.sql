SELECT
    *
FROM
    schools
WHERE
    upper(student_name) = 'DEWALI';
CREATE TABLE school (
    student_name  VARCHAR(20),
    student_id    NUMBER,
    student_class VARCHAR(30),
    joindate      DATE
);
INSERT INTO school (
    student_name,
    student_id,
    student_class,
    joindate
) VALUES (
    'holly',
    32,
    '7th',
    TO_DATE('12-03-2026', 'DD-MM-YYYY')
);
INSERT INTO school (
    student_name,
    student_id,
    student_class,
    joindate
) VALUES (
    'Dewali',
    01,
    '7th',
    TO_DATE('14-12-2026', 'DD-MM-YYYY')
);
INSERT INTO school (
    student_name,
    student_id,
    student_class,
    joindate
) VALUES (
    'Justy',
    02,
    '7th',
    TO_DATE('15-02-2026', 'DD-MM-YYYY')
);
UPDATE school
SET
    joindate = '12-02-2026'
WHERE
    student_name = 'holly';
SELECT
    add_months(sysdate, 3)
FROM
    dual;
INSERT INTO school (
    student_name,
    student_id,
    student_class,
    joindate
) VALUES (
    'Dalphi',
    04,
    '7th',
    TO_DATE('11-02-2026', 'DD-MM-YYYY')
);
DELETE FROM school
WHERE
    student_id = '04';
ALTER TABLE school ADD student_no NUMBER;
RENAME school TO schools;
commit;
SELECT
    *
FROM
    schools
WHERE
lower(student_name) = 'holly';
SELECT
    *
FROM
    schools
WHERE
    upper(student_name) = 'DEWALI';
SELECT
    *
FROM
    schools
WHERE
    upper(student_name) = 'DEWALI';
ALTER TABLE schools DROP COLUMN student_no;
ALTER TABLE schools RENAME COLUMN student_id TO student_no;
//Aggregate Functions
SELECT
    COUNT(*)
FROM
    schools;
SELECT
    SUM(student_no) AS total_student_no
FROM
    schools;
SELECT
    MAX(student_no) AS max_student_no
FROM
    schools;
SELECT
    MIN(student_no) AS min_student_no
FROM
    schools;
SELECT
    AVG(student_no) AS avg_student_no
FROM
    schools;
SELECT
    student_class,
    COUNT(*) AS students_in_class
FROM
    schools
GROUP BY
    student_class;
SELECT
    student_name,
    length(student_name) AS name_length
FROM
    schools;
SELECT
    student_name,
    substr(student_name, 1, 3) AS short_name
FROM
    schools;
SELECT
    student_name
    || ' - '
    || student_class AS name_class
FROM
    schools;
SELECT
    TRIM(student_name) AS trimmed_name
FROM
    schools;
SELECT Student_name, INSTR(Student_name, 'o') AS position_of_o FROM Schools;

--joins

SELECT
    e.*,
    d.department_name,
    d.location_id
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id;

SELECT
    e.*,
    d.department_name
FROM
    employees   e,
    departments d
WHERE
    e.department_id != d.department_id;

SELECT
    e.*,
    d.department_id dept_department_id,
    d.department_name
FROM
    employees   e,
    departments d
WHERE
    e.department_id != d.department_id
ORDER BY e.employee_id;

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
ORDER BY e.employee_id;

SELECT
    e1.*,
    e2.first_name manager_first_name,
    e2.last_name manager_last_name
FROM
    employees e1,
    employees e2
WHERE
    e1.manager_id = e2.employee_id;

SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+);
    
SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id;
    
SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id = d.department_id (+) 
UNION
SELECT
    e.*,
    d.*
FROM
    employees   e,
    departments d
WHERE
    e.department_id (+) = d.department_id; 