show databases;
create database Shadrach;
use Shadrach;
show tables;

create table Marks(Mark_id int, Student_id int, Subject varchar(10), Mark int);
select * from Marks;
drop table marks;

insert into Marks values(1, 1, "Math", 85);
insert into Marks values(2, 2, "Science", 78);
insert into Marks values(3, 3, "English", 90);
insert into Marks values(4, 4, "History", 88);
insert into Marks values(5, 5, "Geography", 92);

create table Student(Student_id int, Name varchar(20), Age int, Class varchar(5));
select * from Student;

insert into Student values(1, "Alice", 14, "8A");
insert into Student values(2, "Bob", 15, "9B");
insert into Student values(3, "Charlie", 13, "7A");
insert into Student values(4, "David", 14, "8B");
insert into Student values(5, "Eva", 15, "9A");

-- 1
select Name, Subject, Mark from Marks inner join Student on Marks. mark_id = Student. student_id;

-- 2
select name from Student;

-- 3
select Name, Subject, Mark from marks inner join student on Marks.mark_id = Student.student_id where subject = "Math";

-- 4
select name, subject, mark from marks inner join Student on marks.mark_id = student.student_id where mark>85;

-- 5
select name, subject from marks inner join student on marks.mark_id = student.student_id order by name ASC;

-- 6
select name, subject,mark from marks left join student on marks.mark_id = student.student_id;

-- 7
select name, subject,mark from marks left join student on marks.mark_id = student.student_id;

-- 8
select name, subject,mark from marks left join student on marks.mark_id = student.student_id;

-- 9
select name, subject,mark from marks left join student on marks.mark_id = student.student_id where age>14;

-- 10
select mark_id, name, subject,mark from marks right join student on marks.mark_id = student.student_id;

-- 11
select mark_id, name, subject,mark from marks right join student on marks.mark_id = student.student_id where subject="English";

-- 12
select name, subject,mark from marks join student on marks.mark_id = student.student_id;