/*
Find the second highest salary from the Employee
table.
*/

-- SQL Query For Creating the Employee table


CREATE TABLE `employee` (
  `EmployeeID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Department` varchar(50) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Salary` decimal(10,2) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`);




INSERT INTO employee 
    (EmployeeID, FirstName, LastName, Department, Position, Salary, HireDate, IsActive)
VALUES
    (1, 'Ankita', 'Sharma', 'Engineering', 'Data Engineer', 75000.00, '2020-06-15', 1),
    (2, 'Rahul', 'Patil', 'Finance', 'Accountant', 55000.00, '2019-03-10', 1),
    (3, 'Sneha', 'Kulkarni', 'HR', 'HR Manager', 60000.00, '2021-01-20', 1),
    (4, 'Amit', 'Deshmukh', 'IT', 'System Administrator', 50000.00, '2018-11-05', 0),
    (5, 'Priya', 'Joshi', 'Marketing', 'Marketing Executive', 48000.00, '2022-07-01', 1);



-- SQL Query For Finding the Second Highest Salary

select * from (
select 
salary  ,row_number() over(  order by salary desc) as row_num
from myspace.employee
) t1 
where row_num = 2;






