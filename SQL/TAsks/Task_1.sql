--  1. Create a Students table with the following columns: 
-- – Student_ID (NUMBER, Primary Key) 
-- – First_Name (VARCHAR2(30), Not Null) 
-- – Last_Name (VARCHAR2(30)) 
-- – Email (VARCHAR2(50), Unique) 
-- – DOB (DATE) 
-- – Phone_Number (VARCHAR2(10), Check for 10 digits) 
-- – Department_ID (NUMBER, Foreign Key) 
 Create table Students (
    student_id   NUMBER PRIMARY KEY,
    first_name   VARCHAR2(30) NOT NULL,
    last_name    VARCHAR2(30),
    email        VARCHAR2(50) UNIQUE,
    dob          DATE,
    phone_number VARCHAR2(10)
    CONSTRAINT pk_phone CHECK (LENGTH(phone_number) = 10),
    department_id  NUMBER,
     CONSTRAINT fk_dept FOREIGN KEY (department_id)
        REFERENCES department(department_id)
);

--2. Create a Departments table with: 
-- Department_ID (NUMBER, Primary Key) 
-- Department_Name (VARCHAR2(50), Not Null) 
-- Head_Of_Department (VARCHAR2(50)) 

Create table Department (Department_ID NUMBER Primary Key, Department_Name VARCHAR2(50) Not Null, Head_Of_Department VARCHAR2(50));

-- 3. Insert sample data (at least 5 records per table).
--Department table 5 records
insert into Department (Department_ID, Department_Name, Head_Of_Department) values (101, 'Director', 'Radha');
insert into Department (Department_ID, Department_Name, Head_Of_Department) values (102, 'President', 'Rama');
insert into Department (Department_ID, Department_Name, Head_Of_Department) values (103, 'Vice_President', 'Krishna');
insert into Department (Department_ID, Department_Name, Head_Of_Department) values (104, 'Manager', 'Keshava');
insert into Department (Department_ID, Department_Name, Head_Of_Department) values (105, 'ASST_Manager', 'Madhava');
select * from Department;
commit;

ALTER TABLE Department RENAME COLUMN department_id TO Department_ID;

--& Students table 5 records
INSERT INTO students (
    student_id,
    first_name,
    last_name,
    email,
    dob,
    phone_number,
    department_id
) VALUES (
    201,
    'Syam',
    'Sundhar',
    'Syam@gmail.com',
    TO_DATE('10-OCT-1998', 'DD-MON-YYYY'),
    '9879776698',
    101
);

INSERT INTO students (
    student_id,
    first_name,
    last_name,
    email,
    dob,
    phone_number,
    department_id
) VALUES (
    202,
    'Raghu',
    'Ram',
    'Raghu@gmail.com',
    TO_DATE('11-OCT-1997', 'DD-MON-YYYY'),
    '9879776698',
    102
);

INSERT INTO students (
    student_id,
    first_name,
    last_name,
    email,
    dob,
    phone_number,
    department_id
) VALUES (
    203,
    'Ram',
    'Laxman',
    'Ram@gmail.com',
    TO_DATE('12-OCT-1999', 'DD-MON-YYYY'),
    '9879876545',
    103
);

INSERT INTO students (
    student_id,
    first_name,
    last_name,
    email,
    dob,
    phone_number,
    department_id
) VALUES (
    204,
    'Luckey',
    'Hayans',
    'Luckey@gmail.com',
    TO_DATE('12-NOV-1995', 'DD-MON-YYYY'),
    '7876567656',
    104
);

INSERT INTO students (
    student_id,
    first_name,
    last_name,
    email,
    dob,
    phone_number,
    department_id
) VALUES (
    205,
    'Cherry',
    'Charan',
    'Cherry@gmail.com',
    TO_DATE('13-SEP-1996', 'DD-MON-YYYY'),
    '7876567656',
    105
);


--4. Write queries to: 
--a. Fetch all students born after the year 2000. 
UPDATE studentS
SET DOb = CASE
    WHEN department_id = 101 THEN TO_DATE('15-JAN-2000', 'DD-MON-YYYY')
    WHEN department_id = 102 THEN TO_DATE('20-FEB-2001', 'DD-MON-YYYY')
    WHEN department_id = 103 THEN TO_DATE('10-MAR-2002', 'DD-MON-YYYY')
    WHEN department_id = 104 THEN TO_DATE('05-APR-2003', 'DD-MON-YYYY')
    WHEN department_id = 105 THEN TO_DATE('25-MAY-2004', 'DD-MON-YYYY')
END
WHERE department_id IN (101, 102, 103, 104, 105);

--b. Display department names and total number of students in each (use GROUP 
--BY). 

SELECT
    d.department_name,
    COUNT(s.STUDENTS) AS total_students
FROM
    department d
    LEFT JOIN students   s ON d.department_id = s.department_id
GROUP BY
    d.department_name;

--c. List students in alphabetical order by last name
SELECT
    *
FROM
    students
ORDER BY
    last_name ASC;

select * from students;