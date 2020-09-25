-- Drop table if exists
DROP TABLE departments cascade;

-- Create the departments table
CREATE TABLE departments (
	dept_no VARCHAR(30) PRIMARY KEY,
	dept_name VARCHAR(64)
	);
	
-- Query all fields from the table
SELECT *
FROM departments;

-- Drop table if exists
DROP TABLE titles;

-- Create the titles table
CREATE TABLE titles (
	title_id VARCHAR(30) PRIMARY KEY,
	title VARCHAR(64)
	);  
	
	
-- Query all fields from the table
SELECT *
FROM titles;

-- Drop table if exists
DROP TABLE employees cascade;

-- Create the employees table
CREATE TABLE employees (
	emp_no INT PRIMARY KEY,
	emp_title VARCHAR(30),
	birth_date DATE,
	first_name VARCHAR(64),
	last_name VARCHAR(64),
	sex varchar(1),
	hire_date DATE,
	FOREIGN KEY(emp_title) references titles(title_id));  
	
	
	
-- Query all fields from the table
SELECT *
FROM employees;

-- Drop table if exists
DROP TABLE dept_emp;

-- Create the dept_emp table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(30), 
	FOREIGN KEY(dept_no) references departments(dept_no),
	FOREIGN KEY(emp_no) references employees(emp_no));
	
-- Query all fields from the table
SELECT *
FROM dept_emp;

-- Drop table if exists
DROP TABLE dept_manager;

-- Create the dept_manager table
CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INT,
	FOREIGN KEY(dept_no) references departments(dept_no),
	FOREIGN KEY(emp_no) references employees(emp_no));  
	
	
-- Query all fields from the table
SELECT *
FROM dept_manager;

-- Drop table if exists
DROP TABLE salaries;

-- Create the salaries table
CREATE TABLE salaries (
	emp_no INT,
	salary INT,
	FOREIGN KEY(emp_no) references employees(emp_no));  
	
	
-- Query all fields from the table
SELECT *
FROM salaries;



