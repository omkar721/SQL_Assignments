use iNeuron
--Q-15. Write an SQL query to fetch intersecting records of two tables.
select * from Worker


select w1.wid,
w1.First_Name,
w2.wid,
w2.First_Name
from worker w1
inner join
Worker_clone w2
on w1.wid=w2.wid

--Q-16. Write an SQL query to show records from one table that another table does not have.

select w1.wid,
w1.First_Name,
w2.wid,
w2.First_Name
from Worker w1
left join
Worker_clone w2
on 
w1.First_Name=w2.First_Name
