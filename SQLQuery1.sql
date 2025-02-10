﻿create database company;
use company;
GO

create table employee (
id int primary key ,
name varchar(50) not null,
email varchar(100) unique,
hire_date date
);

/** inset **/
INSERT INTO employee (id , name , email , hire_date)
VALUES (1, 'Ahmad Ali', 'ahmad@example.com', '2025-02-01');

insert into employee (id , name , email , hire_date)
values 
(2 , 'Sofyan Yousef' , 'sofyan@example.com' , '2025-02-24'),
(3 , 'Fadi Mhmad' , 'fadi@gmail.com' , '2025-03-14');

/** update **/
update employee 
set email = 'sofyan@gmail.com' where id = 2;

/** update - while **/
insert into employee (id , name , email)
values 
(4 , 'alaa ziad' , 'alaa@example.com');

update employee 
set hire_date = '2025-01-01' where hire_date is null;

/** delete **/
insert into employee (id , name , email , hire_date)
values 
(4 , 'alaa ziad' , 'alaa@example.com', '' );

DELETE FROM employee
WHERE id = 4;

delete from employee
where hire_date < '2015-01-01'


/** Alter table **/
alter table employee add salary decimal  (10 , 2) ;

update employee set salary = 900.05 where id =2 ;
UPDATE employee SET salary = 750 WHERE id = 1;
UPDATE employee SET salary = 1100.05 WHERE id = 3;
UPDATE employee SET salary = 1000.05 WHERE id = 4;

alter table employee modify column name varchar(100); /** هنا يتم تغيير حجم عمود "name" ليسمح بما يصل إلى 100 حرف بدلاً من 50. **/

ALTER TABLE employee CHANGE COLUMN name full_name VARCHAR(100);




/** COUNT() **/
select count (*) from employee ; /* يحسب عدد الموظفين بالجدول */

/** SUM() **/
select sum (salary) from employee ;

/** AVG() **/




select * from employee;




