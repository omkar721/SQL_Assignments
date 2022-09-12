use iNeuron

--Q-1. Write an SQL query to print the FIRST_NAME from Worker table after removing
--white spaces from the right side.

select * from Worker
select RTRIM(First_Name) as Clean_Name
from Worker


--Q-2. Write an SQL query that fetches the unique values of DEPARTMENT from Worker
--table and prints its length.
select distinct(DEPARTMENT),LEN(department) as length
from Worker

--Q-3. Write an SQL query to fetch nth max salaries from a table.
select max([Salary])
from Worker

select distinct top 5 Salary
from Worker
order by Salary desc