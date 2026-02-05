## Q1. Create a New Database and  Table for Employees Task: Create a new database named company_db and Create a table named employees with the following columns:

create database company_db;
use company_db;
create table employees
(Employee_id int,
first_name varchar(50),
last_name varchar(50),
department varchar(50),
salary int,
hire_date date);

select * from employees;

ALTER table employees
add primary key (Employee_id);

select * from employees;


## Q2. Insert Data into Employees Table Task
## Insert the following sample records into the employees table.

Insert  into employees
values
(101,"Amit","Sharma","HR",50000,'2020-01-15'),
(102,"Riya","Kapoor","Sales",75000,'2019-03-22'),
(103,"Raj","Mehta","IT",90000,'2018-07-11'),
(104,"Neha","Verma","IT",85000,'2021-09-01'),
(105,"Arjun","Singh","Finance",60000,'2022-02-10');

select * from employees;


## Q3. Display All Employee Records Sorted by Salary (Lowest to Highest)
## Hint: Use the ORDER BY clause on the salary column.
select * from employees
order by salary;


## Q4. Show Employees Sorted by Department (A–Z) and Salary (High → Low)
select * from employees
order by department ASC , salary desc;


## Q5. List All Employees in the IT Department, Ordered by Hire Date (Newest First)
select * from employees
where department = "IT"
ORDER BY hire_date desc;


## Q6. Create and Populate a Sales Table Task
## Create a table sales to track sales data:
create table sales
(sale_id int,
customer_name varchar(50),
amount int,
sale_date date);
select * from sales;

insert into sales
values
(1,"Aditi",1500,"2024-08-01"),
(2,"Rohan",2200,"2024-08-03"),
(3,'Aditi',3500,'2024-09-05'),
(4,'Meena',2700,"2024-09-15"),
(5,'Rohan',4500,'2024-09-25');


## Q7. Display All Sales Records Sorted by Amount (Highest → Lowest)
## Hint: Use ORDER BY amount DESC.
select * from sales;
select * from sales
order by amount desc;


## Q8. Show All Sales Made by Customer “Aditi”
## Hint: Use WHERE customer_name = 'Aditi'.
select * from sales
WHERE customer_name = "Aditi";

## Q9. What is the Difference Between a Primary Key and a Foreign Key?
## Answer - In database management, primary keys and foreign keys are the tools used to organize data and link different tables together. 
## The simplest way to remember them is that a Primary Key is an "identity card" for a row, while a Foreign Key is a "reference link" to another row.

## Q10. What Are Constraints in SQL and Why Are They Used?
## answer- In SQL, constraints are a predefined set of rules applied to table columns to limit the type of data that can be stored. They act as "guardrails" that prevent invalid, inconsistent, or missing data from being entered into the database. 
## Why Constraints are Used
## Data Integrity: They ensure that data remains accurate, valid, and reliable over time.
## Enforce Business Logic: They can automate rules like "age must be over 18" or "price cannot be negative" directly at the database level.
## Prevent Errors: They stop users or applications from accidentally inserting duplicate records or leaving mandatory fields blank.
## Maintain Relationships: They ensure that links between different tables remain consistent (e.g., an order must belong to an existing customer).



