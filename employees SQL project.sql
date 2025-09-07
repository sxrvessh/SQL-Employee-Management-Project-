CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    HireDate DATE
);
INSERT INTO Employees (EmployeeID, FirstName, LastName, Department, Salary, HireDate) VALUES
(1, 'John', 'Smith', 'IT', 70000, '2018-03-15'),
(2, 'Jane', 'Doe', 'HR', 65000, '2019-06-01'),
(3, 'Emily', 'Davis', 'IT', 80000, '2020-09-23'),
(4, 'Michael', 'Brown', 'Marketing', 62000, '2017-01-10'),
(5, 'Sarah', 'Wilson', 'HR', 67000, '2021-11-05'),
(6, 'David', 'Lee', 'IT', 90000, '2016-05-30');


Select all columns for employees in the IT department:
 select * from Employees where Department='IT';

Find the average salary of all employees :
 select  FirstName,
 avg(salary) as avg_salary from Employees;


List employees hired after January 1, 2019 :
 select * from Employees where HireDate> '2019-01-01';

Get the highest salary from the table :
 select top 1 * from Employees order by Salary desc;




List employees whose last name starts with 'D' :
 select * from Employees where LastName like 'D%';


Show all employees sorted by salary (highest first) :
 select * from Employees order by Salary desc;


Get the total salary paid to employees in the HR department :
 select
 sum(salary) as total_salary  from Employees  
 where  Department ='IT';


Find employees with a salary greater than 70,000 and in the IT department :
 select max(salary) as highest_salary from Employees where Department='IT';



Get the names (first and last) of employees who were hired before 2018 :
 select firstname , lastname from Employees where HireDate <'2019';
