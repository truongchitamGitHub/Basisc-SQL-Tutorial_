CREATE TABLE Employee_demographic
(Employee_ID int,
First_name varchar(50),
Last_name varchar(50),
Age int, 
Gender varchar(50)
)

CREATE TABLE Employee_salary
(Employee_ID int,
Job_title varchar(50),
Salary int)

INSERT INTO Employee_demographic Values
(1001,'Jim','Halpert',30,'Male'),
(1002,'Pam','Beasley',30,'Female'),
(1003,'Dwight','Schrute',29,'Male'),
(1004,'Angele','Martin',33,'Female'),
(1005,'Toby','Flenderson',32,'Male'),
(1006,'Michael','Scott',35,'Male'),
(1007,'Meredith','Palmer',32,'Female'),
(1008,'Stanley','Hudson',38,'Male'),
(1009,'Kevin','Malone',31,'Male')

Insert into Employee_salary values
(1001,'Salesman',45000),
(1002,'Receptionist',36000),
(1003,'Salesman',63000),
(1004,'Accountant',47000),
(1005,'HR',50000),
(1006,'Regional Manager',65000),
(1007,'Supplier Relations',41000),
(1008,'Salesman',48000),
(1009,'Accountant',42000)

Select * 
from dbo.Employee_demographic

Select * 
from dbo.Employee_salary

-- Delete top row from table
DELETE TOP (1)
FROM  dbo.Employee_demographic

-- Select first name and last name only
Select First_name, Last_name
from dbo.Employee_demographic

-- SELECT statement: Top, Distinct, Count, As, Max, Min, Avg

-- Select top 5
Select top 5 *
from dbo.Employee_demographic

Select top 5 *
from dbo.Employee_salary

-- Select Distinct
SELECT DISTINCT(gender)
From Employee_demographic

SELECT DISTINCT(Last_name)
From Employee_demographic
-- Count
SELECT count(Last_name)
From Employee_demographic

SELECT count(Last_name) as last_name_count
From Employee_demographic

-- Max, Min, Avg salary
SELECT max(Salary) as Max_salary
From Employee_salary

SELECT min(Salary) as Min_salary
From Employee_salary

SELECT Avg(Salary) as Avg_salary
From Employee_salary

-- Select from the database
Select * 
From [SQL Tutorial].dbo.Employee_demographic

/* 
Where statement 
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/


select *
from Employee_demographic
where Age = 30

select *
from Employee_demographic
where Age <= 30 and Gender='Male'

select *
from Employee_demographic
where Age >= 30 Or Gender='Female'

-- select employee with last name strat with S
select *
from Employee_demographic
where Last_name like 'S%'
-- select employee with a S in their last name
select *
from Employee_demographic
where Last_name like '%S%'
-- select employee start with a S and has a "o" in their last name
select *
from Employee_demographic
where Last_name like 'S%o%'

select *
from Employee_demographic
where Last_name like 'S%c%ott%'

-- select all first names are not null
select *
from Employee_demographic
where First_name is not null

-- select
select *
from Employee_demographic
where First_name ='Jim'

select *
from Employee_demographic
where First_name IN ('Jim','Michael')