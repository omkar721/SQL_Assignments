use iNeuron

select * from Worker
--Q-13. Write an SQL query to show only odd rows from a table.

SELECT * FROM Worker WHERE wid %2!=0

--Q-14. Write an SQL query to clone a new table from another table.
select top 100 * into Worker_clone from Worker 

select * from Worker_clone

