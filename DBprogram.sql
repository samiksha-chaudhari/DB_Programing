create database DBprograming;
use DBprograming;


--=========================================================
--Creates Person Table
--=========================================================
create table Person(
pId int identity(1,1) primary key,
pName varchar(255) not null,
personAge int not null,
pAddress varchar(255) not null
)
--Inserting data into Persoon Table
insert into Person (pName, personAge, pAddress) values
('samiksha', 25, 'Maharashtra'),
('Dhanashree', 26, 'Karnataka'),
('Nikita', 25, 'Maharashtra'),
('Pooja', 24, 'Tamilnadu')
--Retrive data from Person Table
select * from Person

select pAddress
from Person
where pAddress IS NOT NULL

--In Operator
select *
from Person
where pAddress In ('Maharashtra', 'Karnataka')

--===========================================================
--Ceates Employee Table
--===========================================================
create table Employee(
empId int identity (1,1) primary key,
empName varchar(255) Not Null,
empSalary int Not Null,
startDate Date Not Null
)
--Inserting data into Employee Table
insert into Employee values
('Samiksha', 27000, '2021/08/01'),
('Nikia', 26000, '2020/07/18'),
('Dhanashree', 25000, '2019/07/18'),
('Pojja', 24000, '2018/06/18')
--Retrive data from Employee Table
select * from Employee
select startDate
from Employee
where startDate IS NULL


--=========================================================
--Creates Person Table
--=========================================================
create table Person(
pId int identity(1,1) primary key,
pName varchar(255) not null,
personAge int not null,
pAddress varchar(255) not null
)
--Inserting data into Persoon Table
insert into Person (pName, personAge, pAddress) values
('Samiksha', 25, 'Maharashtra'),
('Nikita', 26, 'Maharashtra'),
('Dhanashree', 25, 'Kaarnataka'),
('Pooja', 24, 'Tamil Nadu')
--Retrive data from Person Table
select * from Person

select pAddress
from Person
where pAddress IS NOT NULL

--In Operator
select *
from Person
where pAddress In ('Maharashtra', 'Kaarnataka')

--===========================================================
--Ceates Employee Table
--===========================================================
create table Employee1(
empId int identity (1,1) primary key,
empName varchar(255) Not Null,
empSalary int Not Null,
startDate Date Not Null
)
--Inserting data into Employee Table
insert into Employee1 values
('Samiksha', 27000, '2021/08/01'),
('Nikita', 26000, '2020/07/18'),
('Dhanashree', 25000, '2019/07/18'),
('Pooja', 24000, '2018/06/18')
--Retrive data from Employee Table
select * from Employee1
select startDate
from Employee
where startDate IS NULL

-- inner Join
select *
from Person
INNER JOIN Employee On Employee.empId=Person.pId
--===========================================================
--Ceates Employee Table
--===========================================================
create table EmpCompany(
CompId int identity (1,1) primary key,
CompName varchar(255) Not Null,
CompRevenue int Not Null
)
--Inserting data into EmpCompany Table
insert into EmpCompany values
('TCS', 1000),
('Syntel', 1001),
('BPL', 1002),
('IBM', 1003)
--Retrive data from EmpCompany Table
select * from EmpCompany

select CompName
from EmpCompany
where CompName IS NOT NULL
--Update data Table value
Update EmpCompany
Set CompName = 'Dell EMC'
Where CompId = 4

select * from EmpCompany

Update EmpCompany
Set CompName = 'Software'
Where CompId = 4
select * from EmpCompany
--Find min-max CompRevenue in Table
select MAX(CompRevenue)
from EmpCompany

select MIN(CompRevenue)
from EmpCompany

--Count the number of record in Tabe
select COUNT(CompRevenue)
from EmpCompany
--===========================================================
--Ceates Customers Table
--===========================================================
create table Customers(
CustomerID int identity(1,1) Primary Key,
CustomerName varchar(255) not null,
CompId int not null,
City varchar(255) not null,
PostalCode int not null
)
--Inserting data into EmpCompany Table
insert into Customers values
('Samiksha', 4, 'Jalgaon', 10),
('Nikita', 3, 'Nashik', 20),
('Dhanashree', 4, 'Ubali', 30),
('Pooja', 2, 'Bangluru', 30),
('Diksha', 2, 'Pune', 40),
('Asnwini', 3, 'Asam', 50),
('Konika', 1, 'Mumbai', 60)

select * from Customers

--GROUP BY Statement
select count(CustomerID), City
from Customers
Group By City

--HAVING Clause
select count(CustomerID), City
from Customers
Group By City
Having count(CustomerID)>1
order by count(CustomerID)

--Add Unique key
Alter Table Customers
Add Unique (CustomerName)

--create a FOREIGN KEY constraint
Alter Table Customers
Add Foreign Key (CompId) references EmpCompany(CompId)
 
