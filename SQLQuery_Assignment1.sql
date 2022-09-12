--Firstly Creating a new database
create database iNeuron

use iNeuron
--creating the new table
CREATE TABLE Worker(wid INT ,
                     First_Name VARCHAR (20) NOT NULL , 
                     Last_Name VARCHAR(20) , 
                     Email varchar(50),
                     DEPARTMENT VARCHAR(20) , 
                     Salary INT , 
                     Join_Date DATE)

select * from Worker
--Adding the values in the table

insert into Worker values(01,'Omkar','Patade','omkarpatade@ineuron.com','Analytics', 45000,'2018-02-10');
insert into Worker values(02,'Shubham','Shedekar','shubhamshedekar@ineuron.com','Data Science', 46000,'2018-02-06');
insert into Worker values(03,'Sahil','Lade','sahillade@ineuron.com','machanical', 45000,'2018-02-9');
insert into Worker values(04,'Rahul','Shinde','rahulshinde@ineuron.com','Finance', 42000,'2018-06-10');
insert into Worker values(05,'Satyajeet','Patnaik','satyajeetpatnaik@ineuron.com','Data Science', 60000,'2015-02-04');
insert into Worker values(06,'Amit','Bose','amitbose@ineuron.com','Analytics', 59000,'2014-02-15');
insert into Worker values(07,'Riya','Agrawal','riyaagrawal@ineuron.com','HR', 36000,'2019-02-26');
insert into Worker values(08,'Anisha','Gour','anishagour@ineuron.com','Marketing', 42000,'2017-03-10');
insert into Worker values(09,'Shreya','Kapoor','shreyakapoor@ineuron.com','HR', 41000,'2016-12-05');
insert into Worker values(10,'Shraddha','Kapoor','shradhhakapoor@ineuron.com','HR', 39000,'2012-09-10');
insert into Worker values(11,'Katrina','Kaif','katrinakaif@ineuron.com','HR', 39500,'2017-05-01');
insert into Worker values(12,'Stebin','Ben','stebinben@ineuron.com','HR', 45000,'2018-09-03');
insert into Worker values(13,'Arjit','Singh','arjitsingh@ineuron.com','HR', 49000,'2018-06-21');
insert into Worker values(14,'Akash','Gupta','akashgupta@ineuron.com','HR', 54000,'2013-04-10');
insert into Worker values(15,'Divya','Kumar','divyakumar@ineuron.com','HR', 29000,'2020-02-10');
insert into Worker values(16,'Urvashi','Rautela','urvashirautela@ineuron.com','HR', 37000,'2015-11-26');
insert into Worker values(17,'Pulkit','Samrat','pulkitsamart@ineuron.com','HR', 40000,'2019-10-31');
insert into Worker values(18,'Aaisha','Javed','aaishajaved@ineuron.com','HR', 41000,'2020-02-01');

select* from Worker

--Q-1. Write an SQL query to fetch “FIRST_NAME” from Worker table using the alias
--name as WORKER_NAME.
select First_Name as WORKER_NAME 
FROM Worker

--Q-2. Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
select distinct(DEPARTMENT)
from Worker

--Q-3. Write an SQL query to show the last 5 record from a table.

select  top 5 *
from Worker
order by
wid desc


