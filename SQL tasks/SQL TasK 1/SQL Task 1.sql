show databases;
create database Arun;
use Arun;
show tables;
create table Students(StudentID int, Name varchar(20), Grade varchar(3), Age int);
select * from Students;
alter table Students add Email varchar(24);
alter table Students drop column Grade;
alter table Students modify Age varchar(2);
rename table Students to StudentDetails;
drop table StudentDetails;
select * from StudentDetails;

-- 7
create table Employees(EmpID int, EmpName varchar(20), EmpSalary int);
select * from Employees;

-- 8
alter table Employees add Department varchar(15);

-- 9
drop table Employees;

-- 10
create table Products(prodcut_ID int, Product_Name varchar(20), price int);
select * from Products;

-- 11
create table Books(BookID int, Title varchar(30), Author varchar(25), published_Year int);
select * from Books;

-- 12
insert into Books values(001, "Harry potter", "J K Rowling", 1997);
insert into Books values(002, "Lords of Rings", "Tolkien", 2000);
insert into Books values(003, "Wuthering Heights", "Emily", 1998);
insert into Books values(004, "Jane Eyre", "Charlotte", 1898);
insert into Books values(005, "Rebecca", "Daphne", 2005);
insert into Books values(006, "The African Queen", "C S Forester", 1990);
insert into Books values(007, "Animal farm", "George", 2002);
insert into Books values(008, "Beowulf", "Unknown", 2000);
insert into Books values(009, "New World", "Aldous", 2010);
insert into Books values(010, "Vanity Fair", "william", 2001);

-- 13
select * from Books;

-- 14
select Title, Author from Books;

-- 15
update Books set Title="1984" where BookID=1;

-- 16
delete from Books where BookID=2;

-- 17
create table Employ(employee_id int auto_increment primary key,
 first_name varchar(50), 
 last_name varchar(50), 
 age int, department varchar(50),
 salary decimal (10));
select * from Employ;

-- 18
insert into Employ values(1, "John", "Doe", 30, "HR", 50000);

-- 19
insert into Employ values(2, "Jane", "Smith", 25, "Finance", 60000);
insert into Employ Values(3, "Alice", "Johnson", 28, "IT", 70000);

-- 20
select * from Employ;

-- 21
update Employ set salary=65000 where employee_id=2;

-- 22
delete from Employ where employee_id=3;

-- 23

insert into Employ values(4, "Michael", "Taylor", 35, "Sales", 75000);
insert into Employ values(5, "Emily", "Davis", 40, "Marketing", 80000);



 



