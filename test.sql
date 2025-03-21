create table student (studentID number primary key, StudentName varchar2(50), Gender varchar2(1), DOM date);
insert into student (StudentID, StudentName, Gender, DOM) values (1, 'Aarva Kumar', 'M', TO_DATE('2002-05-10', 'YYYY-MM-DD'));
insert into student (StudentID, studentName, Gender, DOM) values (2, 'Sneha Reddy', 'F', TO_DATE('2001-12-15', 'YYYY-MM-DD'));
insert into student (StudentID, studentName, Gender, DOM) values (3, 'Rohan Mehta', 'M', TO_DATE('2003-02-20', 'YYYY-MM-DD'));
insert into student (StudentID, studentName, Gender, DOM) values (4, 'Priya Shah', 'F', TO_DATE('2000-09-25', 'YYYY-MM-DD'));
insert into student (StudentID, studentName, Gender, DOM) values (5, 'Vikram Singh','M', TO_DATE('2002-07-14', 'YYYY-MM-DD'));
insert into student (StudentID, studentName, Gender, DOM) values (6, 'Kavya Nair', 'F', TO_DATE('2001-11-01', 'YYYY-MM-DD'));
insert into student (StudentID, studentName, Gender, DOM) values (7, 'Manoj Yadav', 'M', TO_DATE('2003-04-10', 'YYYY-MM-DD'));
insert into student (StudentID, studentName, Gender, DOM) values (8, 'Divya Patel', 'F', TO_DATE('2002-06-18', 'YYYY-MM-DD'));
select * from student;
select studentName, Gender from student;
select * from student where DOM > to_date ('2002-01-01', 'YYYY-MM-DD');
Select count(Gender) from student;
select * from student order by DOM desc;
select * from student where studentName like 'S%';
Select to_char(DOM, 'DD-MON-YYYY')  AS DOB_change_format from student;
Select * from student months_beteen(sysdate, DOM);
SELECT studentName, 
       TRUNC(MONTHS_BETWEEN(SYSDATE, DOM) / 12) AS age 
FROM student;
Select * from student where Gender='F' order by studentName DESC;
Select Extract (year from DOM) from student;
SELECT EXTRACT(YEAR FROM DOM) AS birth_year, COUNT(*) AS student_count
FROM student
GROUP BY EXTRACT(YEAR FROM DOM)
ORDER BY birth_year;
select extract (year from DOM) as birth_year, count(*) as student_count from student group by extract (year from DOM) order by birth
