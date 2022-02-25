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

---------Retreive All Records Using Select(UC4)
SELECT * FROM Employee_Payroll;
SELECT * FROM Employee_Payroll WHERE Name='Raj';
SELECT * FROM Employee_Payroll WHERE Salary>22000;
SELECT * FROM Employee_Payroll WHERE StartDate>'2020-07-17'

---------Retreive Particular Records Using Select(UC5)
SELECT Salary FROM Employee_Payroll WHERE NAME='Raj' 
SELECT Salary,Name FROM Employee_Payroll WHERE Name LIKE 'R%';
SELECT Salary,Name FROM Employee_Payroll WHERE StartDate between CAST('2021-03-24' as Date) and getdate(); 
SELECT Salary,Name FROM Employee_Payroll WHERE Salary between 22000 and 30000; 

---------Alter And Update Data(UC6)
ALTER TABLE Employee_Payroll ADD Gender	char(1);
UPDATE Employee_Payroll SET Gender='M' WHERE Id IN (1,6,7,8,9,10,11,12);
UPDATE Employee_Payroll SET Gender='F' WHERE Id IN (2,3,4,5);
UPDATE Employee_Payroll SET Salary=27000 WHERE Id IN (8);
UPDATE Employee_Payroll SET Salary=42000 WHERE Name = 'Raj';
UPDATE Employee_Payroll SET Salary=33000 WHERE Name = 'Aman';

---------Aggregate Functions(UC7)
SELECT SUM(Salary) as TotalSalary from Employee_Payroll;
SELECT SUM(Salary) as TotalSalary,Gender from Employee_Payroll group by Gender;
SELECT MAX(Salary) as MaxEmployeeSalary from Employee_Payroll;
SELECT MAX(Salary) as MaxSalary,Gender from Employee_Payroll group by Gender;
SELECT MIN(Salary) as MinEmployeeSalary from Employee_Payroll;
SELECT MIN(Salary) as MinSalary,Gender from Employee_Payroll group by Gender;
SELECT CAST(AVG(Salary) as decimal(10,2)) as AvgEmployeeSalary from Employee_Payroll;
SELECT CAST(AVG(Salary) as decimal(10,2)) as AvgSalary,Gender from Employee_Payroll group by Gender;
SELECT Count(Name) as NumOfEmployee from Employee_Payroll;
SELECT Count(Name) as NumOfEmployee,Gender from Employee_Payroll group by Gender;

---------Adding Phone Number, Department And Address Columns(UC8)
SELECT * FROM Employee_Payroll;
ALTER TABLE Employee_Payroll ADD Department varchar(20) not null default 'IT Developer';
ALTER TABLE Employee_Payroll ADD PhoneNumber bigint;
UPDATE Employee_Payroll SET PhoneNumber=8945125478 where name='Raj';
UPDATE Employee_Payroll SET PhoneNumber=7894561230 where name='Sona';
UPDATE Employee_Payroll SET PhoneNumber=7412589630 where name='Nidhi';
UPDATE Employee_Payroll SET PhoneNumber=8521479630 where name='Neha';
UPDATE Employee_Payroll SET PhoneNumber=3214569870 where name='Mansi';
UPDATE Employee_Payroll SET PhoneNumber=6541237890 where name='Aman';
UPDATE Employee_Payroll SET PhoneNumber=8012345679 where name='Ajay';
UPDATE Employee_Payroll SET PhoneNumber=9578461203 where name='Omkar';
UPDATE Employee_Payroll SET PhoneNumber=9156478230 where name='Yash';
UPDATE Employee_Payroll SET PhoneNumber=9187456237 where name='Sachin';
UPDATE Employee_Payroll SET PhoneNumber=9874512458 where name='Anand';
UPDATE Employee_Payroll SET PhoneNumber=9874125630 where name='Rahul';
UPDATE Employee_Payroll SET Department='HR' where Id IN (1,2);
UPDATE Employee_Payroll SET Department='Finance' where Id IN (3,4);
UPDATE Employee_Payroll SET Department='IT Developer' where Id IN (5,6,7,8);
UPDATE Employee_Payroll SET Department='Testing' where Id IN (9,10);
UPDATE Employee_Payroll SET Department='QA' where Id IN (11,12);

---------Adding column Address With Default Value
ALTER TABLE Employee_Payroll ADD Address varchar(255) default 'NIL';
UPDATE Employee_Payroll SET Address='Mumbai' WHERE Id IN (1,3,5,7);
UPDATE Employee_Payroll SET Address='Delhi' WHERE Id IN (2,4,6,8);
UPDATE Employee_Payroll SET Address='Banglore' WHERE Id IN (9,10,11,12);

---------To Remove Column Containing Constraint 
ALTER TABLE Employee_Payroll DROP COLUMN Address;
ALTER TABLE Employee_Payroll DROP CONSTRAINT [DF__Employee___Addre__267ABA7A];



