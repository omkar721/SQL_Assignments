use iNeuron
--Q-17. Write an SQL query to show the top n (say 10) records of a table.
--Normal top 10 by table
select top 10 * from Worker

--Top 10 by Salary

select top 10 * from Worker
order by
Salary desc

--Q-17. Write an SQL query to show the top n (say 10) records of a table.
select top 10 * from Worker
order by
Salary desc