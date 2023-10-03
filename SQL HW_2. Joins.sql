--Таблица employees

--1) Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null
create table employees(
 	id serial primary key,
 	employee_name varchar (50) not null
 );

--2) Наполнить таблицу employee 70 строками.
insert into employees (employee_name) 
values ('Зарина'),
		('Александр'),		
		('Елизавета'), 
		('Анна'),
		('Даниил'),
		('Амалия'),
		('Виктория'),
		('Эмилия'),
		('Замира'),
		('Ильдар'),
		('Роберт'),
		('Альберт'),
		('Евгения'),
		('Евгений'),
		('Рината'),
		('Ринат'),
		('Рафаэлла'),
		('Рафаэль'),
		('Диана'),
		('Константин'),
		('Ольга'),
		('Екатерина'),
		('Элина'),
		('Артём'),
		('Лилия'),
		('Маргарита'),
		('Мария'),
		('Николай'),
		('Анастасия'),
		('Софья'),
		('Алина'),
		('Ариана'),
		('Михаил'),
		('Стефания'),
		('Антон'),
		('София'),
		('Наталья'),
		('Арсений'),
		('Дмитрий'),
		('Роман'),
		('Раиса'),
		('Рима'),
		('Римма'),
		('Люция'),
		('Анвар'),
		('Ришат'),
		('Лейла'),
		('Альмира'),
		('Ярослав'),
		('Ярослава'),
		('Валерий'),
		('Валерия'),
		('Эмилия'),
		('Артур'),
		('Тимур'),
		('Роберт'),
		('Денис'),
		('Эрна'),
		('Ирина'),
		('Марина'),
		('Дарина'),
		('Асия'),
		('Раиса'),
		('Рустам'),
		('Руслан'),
		('Наиля'),
		('Леонид'),
		('Эльмар'),
		('Давид'),
		('Иван');
select * from employees;

--Таблица salary

--3) Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null
create table salary(
 	id serial primary key,
 	monthly_salary int not null
 );
--4) Наполнить таблицу salary 15 строками:

insert into salary (monthly_salary) 
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
		
select * from salary;

--Таблица employee_salary

--5)Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null
create table employee_salary(
 	id serial primary key,
 	employee_id int not null unique,
	salary_id int not null
 );
--6)Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id
insert into employee_salary (employee_id, salary_id)
values  (3,7),
		(1,4),
		(5,9),
		(40,13),
		(23,4),
		(11,2),
		(52,10),
		(15,13),
		(26,4),
		(16,1),
		(33,7),
		(2,16),
		(4,15),
		(7,14),
		(25,12),
		(37,11),
		(59,8),
		(50,6),
		(45,5),
		(30,3),
		(20,2),
		(35,1),
		(8,7),
		(17,13),
		(36,10),
		(18,9),
		(12,2),
		(42,8),
		(43,1),
		(13,4),
		(28,11),
		(71,1),
		(72,15),
		(73,14),
		(74,13),
		(75,12),
		(76,11),
		(77,10),
		(78,9),
		(79,8),
		(80,7);
select * from employee_salary;

--Таблица roles

--7)Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique
create table roles(
 	id serial primary key,
 	role_name int not null unique
 );
--8)Поменять тип столба role_name с int на varchar(30)
alter table roles alter column role_name type varchar(30);
--9)Наполнить таблицу roles 20 строками:
insert into roles (role_name)
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
		('Senior Automation QA engineer');
select * from roles;

--Таблица roles_employee

--10)Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee(
 	id serial primary key,
 	employee_id int not null unique,
	foreign key (employee_id) references employees(id),
	role_id int not null,
	foreign key (role_id) references roles(id)
);
--11)Наполнить таблицу roles_employee 40 строками:
insert into roles_employee (employee_id, role_id)
values (1,16),
		(2,15),
		(9,13),
		(10,9),
		(13,11),
		(24,12),
		(35,1),
		(46,2),
		(57,4),
		(68,5),
		(70,7),
		(25,8),
		(36,5),
		(47,2),
		(58,19),
		(69,18),
		(30,8),
		(3,7),
		(4,5),
		(5,4),
		(6,2),
		(7,1),
		(8,20),
		(39,19),
		(11,18),
		(12,15),
		(14,14),
		(15,17),
		(16,12),
		(17,11),
		(18,10),
		(19,9),
		(20,8),
		(21,7),
		(22,6),
		(23,5),
		(27,4),
		(26,3),
		(28,2),
		(29,1);
	
select * from roles_employee;

select * from employees;
select * from salary;
select * from employee_salary;
select * from roles;
select * from  roles_employee;
--
-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id; 

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary.monthly_salary 
from employees 
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2000;
;
-- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary 
from employee_salary 
left join employees on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where employee_name is null;

-- 4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select employees.employee_name, salary.monthly_salary 
from employee_salary 
left join employees on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where employee_name is null and monthly_salary < 2000;

-- 5. Найти всех работников кому не начислена ЗП.
select employees.employee_name, salary.monthly_salary
from employees 
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where monthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id;

-- 7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Python developer%';

-- 9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Manual QA engineer%';

-- 11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles.role_name
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Automation QA engineer%';


-- 12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

-- 13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle%';

-- 14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Java%';

-- 16. Вывести зарплаты Python разработчиков
select roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Python%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior Python%';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Middle JavaScript%';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
insert into employee_salary (employee_id, salary_id)
	values(22, 14);
	
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name = 'Senior Java developer';


-- 20. Вывести зарплаты Junior QA инженеров

select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name = 'Junior QA engineer';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(salary.monthly_salary)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select sum(salary.monthly_salary)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%JavaScript%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(salary.monthly_salary) as lowest_QA_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 24. Вывести максимальную ЗП QA инженеров
select max(salary.monthly_salary) as highest_QA_salary
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where role_name like '%QA engineer%';

-- 25. Вывести количество QA инженеров
select count(role_name)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%QA engineer%';

-- 26. Вывести количество Middle специалистов.
select count(role_name)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%Middle%';

-- 27. Вывести количество разработчиков
select count(role_name)
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary.monthly_salary) as total_salary_amount
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
order by salary.monthly_salary;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary between 1700 and 2300 
order by salary.monthly_salary;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary < 2300 
order by salary.monthly_salary;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000 
select employees.employee_name, roles.role_name, salary.monthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on employees.id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where monthly_salary in (1100, 1500, 2000) 
order by salary.monthly_salary;  