use iNeuron

select * from Worker
--Q-1. Write an SQL query to print details of the Workers who have joined in Feb’2014.
--First Method
select * 
from Worker
where
Join_Date like '2014%02%'

--Second Method

Select *
from Worker 
where
year(Join_Date) = 2014 and month(Join_Date) = 2

--Q-2. Write an SQL query to fetch duplicate records having matching data in some 
--fields of a table.

select DEPARTMENT,count(*) as feq
from Worker
group by
DEPARTMENT
having
count(*)>1;

select Salary, count(*) as Frq
from Worker
group by
Salary
having
count(*)>1;

--Q3.How to remove duplicate rows from Worker table.
--for that we need to create new table with duplicate values becuz worker table have no duplicate values
DELETE w1 FROM Worker w1
INNER JOIN Worker w2
on
w1.Salary > w2.Salary AND
w1.Last_Name = w2.Last_Name

select * from Worker

create table duplicate_records(
wid int,
First_Name varchar(20),
Last_Name varchar(20),
Email varchar(20),
DEPARTMENT varchar(20), 
Salary int)

select * from duplicate_records
insert into duplicate_records values(1,'Omkar','Patade','','Analytics',45000);
insert into duplicate_records values(2,'Rahul','Shinde','','IT',46000);
insert into duplicate_records values(3,'Omkar','Patade','','Analytics',45000);
insert into duplicate_records values(4,'Shubham,','Shedekar','','Data_Science',60000);
insert into duplicate_records values(5,'Omkar','Patade','','Analytics',45000);


--Finding the duplicate values
select First_Name, Last_Name, count(*) as duplication 
from duplicate_records
group by
First_Name, Last_Name
having
count(*) >1;

with Duplicate_cte as(
select wid,First_Name,Last_Name,Email,DEPARTMENT,Salary,
ROW_NUMBER() over (partition by First_Name,Last_Name, Email,DEPARTMENT, Salary order by wid) as duplication
from duplicate_records
)
delete from Duplicate_cte where duplication>1
