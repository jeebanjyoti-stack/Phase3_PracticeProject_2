create database MVCDataManage

use MVCDataManage

create table Student
(StudentId int primary key,
StudentName nvarchar(50) not null,
DOB date)

create table Subjects
(SubjectId int primary key,
SubjectName nvarchar(50) not null)

create table Class
(ClassId int primary key,
ClassTeacher nvarchar(50) not null,
SubjectId int
Constraint fk_SubjectId foreign key(SubjectId) references Subjects(SubjectId))

insert into Student values(101, 'Anup Gupta','03/04/2005')
insert into Student values(102, 'Anil Kumar','09/07/2006')

insert into Subjects values(1001,'Math')
insert into Subjects values(1002,'English')

insert into Class values(110,'Reyansh Das',1001)
insert into Class values(111,'Amit Bikram',1002)

select * from Student
select * from Subjects
select * from Class