use iNeuron

select * from Worker
--Q-1. Write an SQL query to print the FIRST_NAME from Worker table after replacing ‘a’
--with ‘A’.
select First_Name, REPLACE(First_Name,'a','A') as Replaced_Name
from Worker


--Q-2. Write an SQL query to print all Worker details from the Worker table order by
--FIRST_NAME Ascending and DEPARTMENT Descending.

select * 
from Worker
order by First_Name asc, DEPARTMENT desc


--Q-3. Write an SQL query to fetch the names of workers who earn the highest salary.

select First_Name,Salary
from Worker
where Salary=(select max(Salary) from Worker) 

