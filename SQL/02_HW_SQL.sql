					--SQL_DDL_Joins

					--Table employees

					--1) Create table employees
					-- - id. serial,  primary key,
					-- - employee_name. Varchar(50), not null

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

					--2) Insert into employee 70 lines

insert into employees(employee_name)
values ('John Gomez'),
	('Matthew Copeland'),
	('Stacy Anderson'),
	('Robert Lane'),
	('Michael Gordon'),
	('Thomas Andrews'),
	('Donna Thompson'),
	('Phillip Brown'),
	('Anna Johnson'),
	('Mattie Moss'),
	('Lawrence Taylor'),
	('Marsha Byrd'),
	('Dennis Meyer'),
	('Rebecca Mitchell'),
	('Olga Huff'),
	('Raymond Palmer'),
	('Kathleen Ramirez'),
	('John Welch'),
	('Roy Myers'),
	('Richard Coleman'),
	('Raymond White'),
	('Richard Parker'),
	('Nathan Garrett'),
	('Robert Smith'),
	('Samuel Hoffman'),
	('Donna Sullivan'),
	('Paula Higgins'),
	('Charles Love'),
	('Donald Duncan'),
	('Kenneth Olson'),
	('Margie Johnson'),
	('Mark Cortez'),
	('Donald Patterson'),
	('Lynn Rogers'),
	('Christopher Wilson'),
	('Brian Floyd'),
	('Lisa Coleman'),
	('Charles Howard'),
	('Ray Davidson'),
	('Michele Bridges'),
	('George Warren'),
	('Barbara King'),
	('Shane Morton'),
	('Dawn Gomez'),
	('John Graves'),
	('Stephen Martin'),
	('Pamela Jackson'),
	('Jennifer James'),
	('Bradley Bishop'),
	('Troy Stone'),
	('Sherry Wilson'),
	('Reginald Gray'),
	('Byron Wells'),
	('Judy Soto'),
	('Martin Roberson'),
	('Michelle Wilkins'),
	('Anne Miller'),
	('Ruth Page'),
	('Rose Rose'),
	('Melinda Hill'),
	('Emily Smith'),
	('David Thompson'),
	('Justin Ortega'),
	('Ruth Johnson'),
	('Carlos Pierce'),
	('Evelyn Johnson'),
	('Ronald Adams'),
	('Edith Thompson'),
	('Shirley Hernandez'),
	('Ruth Baker');


					--Table salary

					--3) Create table salary
					-- id. Serial  primary key,
					-- monthly_salary. Int, not null

create table salary (
	id serial primary key,
	monthly_salary int not null
);

					--4) Insert into salary 16 lines:
					-- 1000
					-- 1100
					-- 1200
					-- 1300
					-- 1400
					-- 1500
					-- 1600
					-- 1700
					-- 1800
					-- 1900
					-- 2000
					-- 2100
					-- 2200
					-- 2300
					-- 2400
					-- 2500

insert into salary(monthly_salary)
values (1000),
	(1100),
	(1200),
	(1300),
	(1400),
	(1500),
	(1600),
	(1700),
	(1800),
	(1900),
	(2000),
	(2100),
	(2200),
	(2300),
	(2400),
	(2500);


					--Table employee_salary

					--5) Create table employee_salary
					-- id. Serial  primary key,
					-- employee_id. Int, not null, unique
					-- salary_id. Int, not null

create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);


					--6) Insert into employee_salary 40 lines:
					-- in 10 of 40 lines insert non-existen employee_id

					--id:  				1,2,3,4,5,6,7,8,9,10,11
					--employee_id: 		3,1,5,40,23,11,52,15,26,16,33
					--salary_id: 		7,4,9,13,4,2,10,13,4,1,7

insert into employee_salary(employee_id, salary_id)
values (3, 7),
	(73, 13),
	(1, 4),
	(98, 2),
	(5, 9),
	(80, 1),
	(49, 8),
	(78, 10),
	(23, 11),
	(89, 3),
	(11, 2),
	(91, 5),
	(52, 7),
	(95, 4),
	(68, 8),
	(77, 6),
	(54, 9),
	(99, 1),
	(40, 5),
	(83, 3),
	(13, 6),
	(65, 11),
	(37, 2),
	(28, 10),
	(32, 4),
	(59, 8),
	(19, 6),
	(42, 1),
	(25, 5),
	(61, 7),
	(38, 3),
	(45, 14),
	(22, 12),
	(17, 9),
	(35, 13),
	(62, 10),
	(16, 2),
	(10, 15),
	(53, 1),
	(15, 14);

					--Table roles

					--7) Create table roles
					-- id. Serial  primary key,
					--role_name. int, not null, unique

create table roles (
	id serial primary key,
	role_name int not null unique
);
	
					--8) Change type of column role_name from int to varchar(30)
alter table roles
alter column role_name type varchar(30);

					--9) Insert into roles 20 lines:
					--id 		--role_name
					
					--1			Junior Python developer
					--2			Middle Python developer
					--3			Senior Python developer
					--4			Junior Java developer
					--5			Middle Java developer
					--6			Senior Java developer
					--7			Junior JavaScript developer
					--8			Middle JavaScript developer
					--9			Senior JavaScript developer
					--10		Junior Manual QA engineer
					--11		Middle Manual QA engineer
					--12		Senior Manual QA engineer
					--13		Project Manager
					--14		Designer
					--15		HR
					--16		CEO
					--17		Sales manager
					--18		Junior Automation QA engineer
					--19		Middle Automation QA engineer
					--20		Senior Automation QA engineer

insert into roles(role_name)
values ('Junior Python developer'),
	('Middle Python developer'),
	('Senior Python developer'),
	('Junior Java developer'),
	('Middle Java developer'),
	('Senior Java developer'),
	('Junior JavaScript developer'),
	('Middle JavaScript developer'),
	('Senior JavaScript developer'),
	('Junior Manual QA engineer'),
	('Middle Manual QA engineer'),
	('Senior Manual QA engineer'),
	('Project Manager'),
	('Designer'),
	('HR'),
	('CEO'),
	('Sales manager'),
	('Junior Automation QA engineer'),
	('Middle Automation QA engineer'),
	('Senior Automation QA engineer')

					--Table roles_employee

					--10) Create table roles_employee
						-- id. Serial  primarey key,
					-- employee_id. Int, not null, unique (������� ���� ��� ������� employees, ���� id)
					-- role_id. Int, not null (������� ���� ��� ������� roles, ���� id)
	
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	foreign key (employee_id)
	references employees(id),
	role_id int not null,
	foreign key (role_id)
	references roles(id)
);

	
					--11) Insert into roles_employee 40 lines:

					--id 	--employee_id 	--role_id
										
					--1			7				2
					--2			20				4
					--3			3				9
					--4			5				13
					--5			23				4
					--6			11				2
					--7			10				9
					--8			22				13
					--9			21				3
					--10		34				4
					--11		6				7

insert into roles_employee(employee_id, role_id)
values (2, 2),
	(3, 9),
	(6, 4),
	(1, 13),
	(8, 2),
	(9, 7),
	(5, 11),
	(14, 5),
	(18, 1),
	(17, 2),
	(21, 6),
	(23, 8),
	(26, 9),
	(27, 19),
	(29, 4),
	(30, 12),
	(32, 13),
	(33, 10),
	(34, 2),
	(35, 1),
	(36, 18),
	(41, 6),
	(43, 9),
	(45, 15),
	(46, 17),
	(47, 16),
	(48, 14),
	(49, 12),
	(52, 13),
	(53, 10),
	(56, 9),
	(57, 1),
	(58, 3),
	(59, 5),
	(62, 6),
	(65, 7),
	(66, 9),
	(68, 19),
	(69, 20),
	(70, 18)
					

			



