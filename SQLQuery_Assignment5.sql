use iNeuron

--Q-1. Write an SQL query to print details of workers excluding first names, “Akash” and
--“Urvashi” from Worker table.

select * from Worker

--Method_1
select * 
from Worker
where First_Name !='Akash' and First_Name !='Urvashi'

--Method_2
select * from Worker
where First_Name not in ('Akash','Urvashi')


--Q-2. Write an SQL query to print details of the Workers whose FIRST_NAME ends with
--‘a’ and contains six alphabets.

select *
from Worker
where
RIGHT(First_Name,1)='a' and
LEN(First_Name)=6

--Q-3. Write a query to validate Email of Employee.
select * from Worker
where
Email not like '[0-9a-zA-Z]%@%.%'

--All the emails are valid