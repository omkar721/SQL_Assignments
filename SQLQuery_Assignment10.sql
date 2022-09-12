use iNeuron

--Q-19. Write an SQL query to determine the 5th highest salary without using TOP or limit method.

select * from Worker

Select * from (  
select row_number() over (order by Salary desc) as rownumber,Salary  
from Worker )  
as Top_n 
where rownumber = 5 

--Q-20. Write an SQL query to fetch the list of employees with the same salary.

Select distinct
W.FIRST_NAME, W.Salary 
from Worker W, Worker W1 
where W.Salary = W1.Salary 
and W.FIRST_NAME != W1.FIRST_NAME;




