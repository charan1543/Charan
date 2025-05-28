CREATE TABLE Jobers (
    EMPLOYEEID NUMBER PRIMARY KEY,
    FIRSTNAME  VARCHAR(20),
    LASTNAME   VARCHAR(30),
    DEPARTMENT VARCHAR(40),
    HIREDATE   DATE
);
select * from Jobers;
ALTER TABLE Jobers ADD SALARY NUMBER;
ALTER TABLE Jobers DROP COLUMN SALARY;

ALTER TABLE Jobers RENAME COLUMN EMPLOYEEID TO EMP_ID;
ALTER TABLE  RENAME COLUMN HIREDATE  TO salary;

ALTER TABLE Jobers MODIFY salary number;
ALTER TABLE  Jobers rename TO emp2;

select * from emp2;

Insert into emp2 (employee_id,FIRSTNAME,LASTNAME,DEPARTMENT,salary) values
(1,'chethan', 'raj', 10, 20000), (2,'ramesh', 'babu', 11,23000),(3,'balaji','rao',10,25000);
INSERT INTO EMP2 (
    EMPLOYEE_ID,
    FIRSTNAME,
    LASTNAME,
    DEPARTMENT,
    SALARY
) VALUES ( &EMPLOYEE_ID,
           &FIRSTNAME,
           &LASTNAME,
           &DEPARTMENT,
           &SALARY );
insert into emp2 values (&employee_id,&FIRSTNAME,&LASTNAME,&DEPARTMENT,&salary);
update emp2 set salary =26000 where employee_id =2;
delete from emp2 where rownum =5;
select * from emp2 order by salary DESC;
SELECT Department, COUNT(*) AS EmployeeCount FROM emp2 GROUP BY Department;
commit;
INSERT INTO EMP2 (employee_id,FIRSTNAME,LASTNAME,DEPARTMENT,salary) VALUES (&employee_id,&FIRSTNAME,&LASTNAME,&DEPARTMENT,&salary);
select * from emp2;
rollback;
select * from emp2;
ROLLBACK;
-- Arithmetic Operators
SELECT
    FIRSTNAME,
    LASTNAME,
    SALARY,
    SALARY * 12 AS ANNUALSALARY
FROM
    EMP2;
SELECT
    FIRSTNAME,
    LASTNAME,
    SALARY,
    SALARY * 1.15 AS bonus
FROM
    EMP2;
