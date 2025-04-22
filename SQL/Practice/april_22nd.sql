SELECT * FROM toy;
create table toy (toy_id number, name varchar2(20), price number);
INSERT into toy (toy_id, name, price) values (1, 'Ball', 10);
INSERT into toy (toy_id, name, price) values (2, 'car', 20);
INSERT into toy (toy_id, name, price) values (3, 'Doll', 30);
select toy_id, name from toy;
select * from toy where name ='car';
select toy_id, name from toy order by name desc;

update toy set name= 'bike'  where toy_id = 2;
delete  from toy where toy_id =3;
select e.first_name, d.department_name from hr.employees e JOIN hr.departments d ON e.department_id = d.department_id;
select * from hr.employees;
select d.department_name, e.first_name from hr.departments d left outer join hr.employees e on d.department_id = e.department_id;
select d.department_name, e.first_name from hr.departments d right outer join hr.employees e on d.department_id = e.department_id;
select d.department_name, e.first_name from hr.departments d full outer join hr.employees e on d.department_id = e.department_id;
create sequence xxnyb1 start with 100 increment by 10 minvalue 100 maxvalue 1000 cache 20 cycle;
drop sequence xxnyb1;
create sequence xxnyb1 start with 100 increment by 10 minvalue 100 maxvalue 1000 cache 20 cycle;
select count(*), avg(salary), max(salary) from hr.employees;
select upper (first_name), sysdate from hr.employees;
select * from students;
create table students(student_id number, s_name varchar2(20), age number, grade varchar2(20));
insert into students (student_id, s_name, age, grade) values (1, 'Arjun', 12, 'a');
insert into students (student_id, s_name, age, grade) values (2, 'sara', 13, 'b');
insert into students (student_id, s_name, age, grade) values (3, 'rani', 4, 'c');
insert into students (student_id, s_name, age, grade) values (4, 'kabir', 15, 'd');
select * from students  where age >12;
alter table students add gender varchar2(10);
-- update  students 
-- set gender = case
-- when student_id =1 then gender = 'male'
-- when student_id =2 then gender = 'female'
-- when student_id =3 then gender = 'female'
-- when student_id =4 then gender = 'male'
-- end 
-- where student_id in (1, 2, 3, 4);
-- commit;
-- select * from students;
-- select s_name, gender from students;

UPDATE students
SET gender = CASE
    WHEN student_id = 1 THEN 'male'
    WHEN student_id = 2 THEN 'female'
    WHEN student_id = 3 THEN 'female'
    WHEN student_id = 4 THEN 'male'
    ELSE gender
END
WHERE student_id IN (1, 2, 3, 4);

-- UPDATE students
-- SET gender = CASE
--     WHEN student_id = 1 THEN 'male'
--     WHEN student_id = 2 THEN 'female'
--     WHEN student_id = 3 THEN 'female'
--     WHEN student_id = 4 THEN 'male'
--     ELSE gender
-- END
-- WHERE student_id IN (1, 2, 3, 4);

select * from students order by age;
select * from students order by grade desc ;
select * from students where s_name like 's%';
-- between
select * from students where age between 12 and 14;
select * from students where s_name like '_____';
select * from hr.employees;
-- by using _ under squre it will represent ech one as one letter.
select* from hr.employees where first_name like '_____';
select* from hr.employees where first_name like '___';

select * from students where age between 12 and 14 order by age desc;
select * from students where age >12 and <14 ;
--Show students who are 12 years old and have grade A.
select * from students where age =12 and grade ='a';
--Show students whose grade is A or B or D, using IN.
select * from students where grade in ('a', 'b', 'd');
--Count how many students are male.
select count ('male') from students; -- it is taking all charecter (male) result 4
commit;
select count(*) from students where gender = 'male'; -- result 2
-- Show students who are not in grade 'D'.
select * from students where grade not in ('D');
select * from students where grade != 'D';
--You're doing awesome — just a few syntax tweaks and you’re golden! Want more quiz questions, or ready to explore JOINs next?