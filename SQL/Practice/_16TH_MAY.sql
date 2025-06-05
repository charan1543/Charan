-- Index
-- Importance and Impact on Database Performance
-- | **Aspect**               | **Impact**                                                                      |
-- | ------------------------ | ------------------------------------------------------------------------------- |
-- | **Query Speed**          | Indexes **drastically reduce search time** for SELECT, JOIN, and WHERE.         |
-- | **Insert/Update/Delete** | Indexes can **slow down write operations** due to the need to update the index. |
-- | **Storage Cost**         | Indexes consume **additional disk space**, especially large or complex indexes. |
-- | **Maintenance**          | Indexes need to be **monitored and maintained** (e.g., rebuilt or reorganized). |
-- | **Execution Plans**      | Good indexing can help the optimizer **choose efficient query plans**.          |

Create table school (Student_id varchar2(20), name varchar2(20), departmentr_id number,class varchar2(10));
INSERT into school (Student_id,name,departmentr_id,class) values (1, 'vedha', 'telugu', '9th');
alter table school modify (departmentr_id varchar2(10));
INSERT into school (Student_id,name,departmentr_id,class) values (2, 'cherry', 'english', '9th');
create index B_tree_ind on school (departmentr_id);
alter  table school rename column departmentr_id to department_name;
INSERT into school (Student_id,name,department_name,class) values (3, 'tej', 'hindi', '9th');
select * from hr.departments;
select * from hr.DEPARTMENTS where DEPARTMENT_ID is null;
SELECT to_char(sysdate, 'Month DD, YYYY') AS formatted_date FROM dual;
select * from employee where salary = (select max(salary) from employee where department_id=e.department_id);
SELECT * FROM EMPLOYEE WHERE HIRE_DATE>TO_DATE('01-01-2020',' dd/mm/yyyy') and salary<5000;
select SALESORDER_ID, AMOUNT, SALES_DATE from XXCCT_SALES_ORDER_2024;
select department_id, avg(salary) as avg_salary from employee group by department_id having avg(salary)>5000;
SELECT * FROM Employee ORDER BY Salary DESC;

SELECT * FROM (  SELECT * FROM Employees ORDER BY Salary DESC ) WHERE ROWNUM <= 3;
SELECT DEPARTMENT_ID, AVG(Salary) FROM Employee GROUP BY DEPARTMENT_ID;
SELECT First_Name || ' ' || Last_Name AS FullName FROM Employee;

SELECT Department, COUNT(*) FROM Employee GROUP BY Department HAVING COUNT(*) > 1;
select * from employee where extract (year from HIRE_DATE) = 2003;