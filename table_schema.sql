
--dropping all tables if exist
DROP TABLE IF EXISTS dept_emp, dept_manager, salaries, 
employees, titles, departments CASCADE;

--creating departments table
create table departments (
    dept_no VARCHAR(5) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(50) not null
);
--creating titles table
create table titles (
  title_id varchar(5) PRIMARY KEY NOT NULL,
  title varchar(100) not null
);

--creating employees table
CREATE TABLE employees (
  emp_no integer PRIMARY KEY NOT NULL,
  emp_title_id varchar(5),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
  birth_date date not null,
  first_name varchar(50) not null,
  last_name varchar(50) not null,
  sex varchar(5) not null,
  hire_date date not null
);

-- creating "dept_emp" table which has two composite keys
CREATE TABLE dept_emp (
    emp_no INT not null,
    dept_no VARCHAR(4) not null,
    PRIMARY KEY (emp_no, dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

-- creating "dept_manager" table which has two composite keys
  CREATE TABLE dept_manager (
    dept_no VARCHAR(5) not null,
    emp_no INT not null,
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- creating "salaries" table
create table salaries (
  emp_no int not null,
  salary money not null,
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
--checking data by every row
Select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles 