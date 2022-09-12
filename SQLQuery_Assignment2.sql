--Q-1. Write an SQL query to print the first three characters of  FIRST_NAME from Worker
--table.

use iNeuron
select * from Worker

select LEFT( [First_Name],3) as First_Initials
from Worker


--Q-2. Write an SQL query to find the position of the alphabet (‘a’) in the first name
--column ‘Omkar’ from Worker table.

select CHARINDEX('a',First_Name) as index_char
from Worker
where First_Name='Omkar'

--Q-3. Write an SQL query to print the name of employees having the highest salary 
--in each department.

--select distinct DEPARTMENT 
--from Worker


select DEPARTMENT, max(Salary)
from Worker
group by
DEPARTMENT



