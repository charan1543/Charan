SELECT employee_id, salary, 1000 + salary AS salary_with_bonus from hr.employees;

.. simple join / inner join
SELECT e.employee_id, e.last_name, d.department_name
from hr.employees e
join hr.departments d on e.department_id = d.department_id;

.. left outer join
select e.employee_id, e.last_name, d.department_name
from hr.employees e left outer join hr.departments d on e.department_id = d.department_id;

.. right outer join
select e.employee_id, e.last_name, d.department_name
from hr.employees e right outer join hr.departments d on e.department_id = d.department_id;

.. full outer join
select e.employee_id, e.last_name, d.department_name
from hr.employees e full outer join hr.departments d on e.department_id = d.department_id;

.. CROSS JOIN
select e.employee_id, e.last_name, d.department_name
from hr.employees e CROSS join hr.departments d;

select e.employee_id, d.department_name
from hr.employees e 
inner join hr.departments d on e.department_id = d.department_id;
select * from hr.departments;

create table customers (customer_id number, name varchar2(30), city varchar2(20));
create table orders (order_id number, customer_id number,order_date Date, total_amount number);
insert into customers (customer_id, name, city) values (01, 'ram', 'hyd');
insert into customers (customer_id, name, city) values (02, 'raghu', 'bengalore');
insert into customers (customer_id, name, city) values (03, 'krishna', 'mumbai');
insert into customers (customer_id, name, city) values (04, 'raghav', 'chenai');
insert into orders (order_id, customer_id, order_date, total_amount) values (101, 01, to_date ('2024-11-10', 'yyyy-mm-dd'), 200);
insert into orders (order_id, customer_id, order_date, total_amount) values (102, 02, to_date ('2025-01-09', 'yyyy-mm-dd'), 150);
insert into orders (order_id, customer_id, order_date, total_amount) values (103, 03, to_date ('2025-12-02', 'yyyy-mm-dd'), 300);
insert into orders (order_id, customer_id, order_date, total_amount) values (101, 01, to_date ('2025-03-07', 'yyyy-mm-dd'), 400);

select c.name, o.order_id, o.total_amount 
from customers c 
inner join orders o on c.customer_id = o.customer_id;

select * from hr.locations;
SELECT employee_id, salary, 1000 + salary AS salary_with_bonus from hr.employees;
select employee_id, salary, salary - 500 as salary_after_tax from hr.employees;
select employee_id, salary, salary * 12 as annual_salary from hr.employees;
select employee_id, salary, salary / 2 as avg_per_dependent from hr.employees;
select employee_id, first_name  mod(employee_id, 2) =1; from hr.employees;
select employee_id, name, salary from hr.employees where department_id = 10 and salary > 5000;
select employee_id, name, salary from hr.employees where department_id = 10 OR salary > 5000;
select employee_id, name, salary from hr.employees where not department_id = 10;
select * from hr.employees where salary = 5000;
select * from hr.employees where salary != 5000;
select * from hr.employees where salary > 5000;
select * from hr.employees where salary < 5000;
select * from hr.employees where salary >= 5000;
select * from hr.employees where salary <= 5000;

