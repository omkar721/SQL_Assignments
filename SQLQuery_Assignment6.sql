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

DELETE w1 FROM Worker w1
INNER JOIN Worker w2
on
w1.Salary > w2.Salary AND
w1.Last_Name = w2.Last_Name

select * from Worker