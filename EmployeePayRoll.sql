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