-----------------------------Welcome To The Employee PayRoll Service DataBase---------------------------------

---------Create DB (UC1)
create database PayRoll_Service;
use PayRoll_Service;

---------Create Table (UC2)
CREATE TABLE Employee_Payroll (
    Id int identity(1,1) primary key,
    Name varchar(255) not null,
    Salary float,
    StartDate date,
); 

---------Insert Data Into DB Table(UC3)
INSERT INTO Employee_Payroll(Name,Salary,StartDate) VALUES ('Raj',40000.50, getdate()); 
INSERT INTO Employee_Payroll(Name,Salary,StartDate) VALUES ('Sona',32000.50, CAST('2020-04-17' as Date)); 
INSERT INTO Employee_Payroll(Name,Salary,StartDate) VALUES ('Nidhi',35000.50, CAST('2021-02-24' as Date)); 
INSERT INTO Employee_Payroll(Name,Salary,StartDate) 
VALUES ('Mansi',28000.50, CAST('2020-07-13' as Date)),
		('Neha',38000.50, CAST('2022-01-10' as Date)); 
INSERT INTO Employee_Payroll(Name,StartDate) VALUES ('Aman', getdate()); 
INSERT INTO Employee_Payroll VALUES ('Ajay',25000.50, CAST('2021-06-18' as Date)); 
INSERT INTO Employee_Payroll VALUES ('Omkar',20000.50, CAST('2020-12-15' as Date)); 
INSERT INTO Employee_Payroll VALUES ('Yash',22500.50, getdate()); 
INSERT INTO Employee_Payroll VALUES ('Sachin',18000.50, CAST('2020-07-17' as Date)); 
INSERT INTO Employee_Payroll VALUES ('Anand',28000.50, CAST('2021-01-13' as Date)); 
INSERT INTO Employee_Payroll VALUES ('Rahul',24000.50, CAST('2021-03-24' as Date));

---------Retreive Records Using Select(UC4)
SELECT * FROM Employee_Payroll;
SELECT Id,Name FROM Employee_Payroll;
SELECT * FROM Employee_Payroll WHERE Name='Raj';
SELECT * FROM Employee_Payroll WHERE Salary>22000;
SELECT * FROM Employee_Payroll WHERE StartDate>'2020-07-17'