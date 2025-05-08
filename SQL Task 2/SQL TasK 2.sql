show databases;
create database Aruiya;
use Aruiya;
show tables;

-- 1
create table Employee(Employee_id int, First_Name varchar(20), Last_Name varchar(20), Department varchar(15), Salary decimal, Hire_Date date);
select * from Employee;

-- 2
insert into Employee values(1, "Alice", "Smith", "Engineering", 75000.00, "2018-03-01");
insert into Employee values(2, "Bob", "Jones", "HR", 58000.00, "2019-07-15");
insert into Employee values(3, "Charlie", "Brown", "Engineering", 62000.00, "2020-01-10");
insert into Employee values(4, "David", "Wilson", "Sales", 49000.00, "2017-05-21");
insert into Employee values(5, "Eva", "Taylor", "HR", 54000.00, "2021-11-30");
insert into Employee values(6, "Frank", "Anderson", "Engineering", 88000.00, "2016-09-05");
insert into Employee values(7, "Grace", "Thomas", "Marketing", 45000.00, "2022-02-14");
insert into Employee values(8, "Hannah", "Jackson", "Sales", 67000.00, "2015-08-08");
insert into Employee values(9, "Ian", "White","Engineering", 59000.00, "2019-12-23");
insert into Employee values(10, "Jane", "Harris", "HR", 61000.00, "2020-06-18");
insert into Employee values(11, "Kyle", "Martin", "Marketing", 53000.00, "2018-10-09");
insert into Employee values(12, "Lara", "Thompson", "Engineering", 72000.00, "2017-01-27");
insert into Employee values(13, "Mike", "Garcia", "Sales", 48000.00, "2021-04-11");
insert into Employee values(14, "Nina", "Martiez", "HR", 55000.00, "2022-07-04");
insert into Employee values(15, "Oscar", "Robinson", "Marketing", 66000.00, "2019-02-28");
drop table Employee;

-- 3
select sum(salary) from Employee where salary>60000;

-- i)
select avg(salary) from Employee;

-- ii)
select count(salary) from Employee where salary<55000;

-- iii)
select max(salary) from Employee;

-- iv)
select min(salary) from Employee;

-- v
select department, sum(salary) from Employee group by department having department="HR";

-- vi
select department, avg(salary) from Employee group by department having department="Engineering";

-- vii
select count(*) from employee where salary between 50000 and 70000;

-- viii
select sum(salary) from Employee where salary<60000;

-- ix
select avg(salary) from employee where salary>60000;

-- 4
create table Books(Book_id int, Title varchar(30), author varchar(20), Genre varchar(10), Published_Year int, Available_copies int);
select * from Books;

insert into Books values(001, "Harry potter", "J K Rowling", "Fiction", 1960, 4);
insert into Books values(002, "Lords of Rings", "Tolkien", "Dystopian", 1949, 5);
insert into Books values(003, "Wuthering Heights", "Emily", "Fantasy", 1851, 7);
insert into Books values(004, "Jane Eyre", "Charlotte", "Thriller", 2003, 2);
insert into Books values(005, "Rebecca war", "Daphne", "Adventure", 1937, 1);
insert into Books values(006, "The African Queen", "C S Forester", "Adventure", 1988, 5);
insert into Books values(007, "Animal farm", "George Tolstoy", "Fiction", 2005, 3);
insert into Books values(008, "Beowulf", "Unknown", "Thriller",1813, 6);
insert into Books values(009, "New World", "Aldous", "Dystopian", 1869, 7);
insert into Books values(010, "Vanity Fair", "william", "Fantasy", 1997, 4);
drop table Books;

-- i
select * from Books where available_copies between 4 and 7;

-- ii
select * from Books where published_year between 1800 and 1900;

-- iii
select * from Books where Book_id between 5 and 10;

-- iv
select * from Books where (published_year between 1850 and 1950) and  (available_copies>5);

-- v
select * from Books where Title like "The%";

-- vi
select * from Books where Author like "Tolkien";

-- vii
select * from Books where Genre like "Fiction";

-- viii
select * from Books where Title like "%war";

-- ix
select * from Books where Author like "%Tolstoy";

-- x
select Title AS Book_Title, Available_Copies AS Copies from Books;

-- 11
select * from Books as B where Available_copies > 5;

-- 12
select Title, author, published_year as year_published from Books;

-- 13
select Title, author, Available_copies as number_of_available_copies from books;

-- 14
select Available_copies from Books where Available_copies>4;

-- 15
select * from Books limit 5;

-- 16
select * from Books order by Published_Year DESC limit 3;

-- 17
select * from Books where Available_copies>3 limit 7;

-- 18
select * from Books order by Author ASC limit 10;

-- 19
select * from Books where Genre like "Fantasy";



