--creating list of entries according to assignments: 

--1st
--List the employee number, last name, first name, sex, and salary of each employee
SELECT 
    employees.emp_no,
    employees.last_name,
    employees.first_name,
    employees.sex,
    salaries.salary
FROM 
    employees
JOIN 
    salaries
ON 
    employees.emp_no = salaries.emp_no;

-- 2nd
--List the first name, last name, and hire date for the employees who were hired in 1986
SELECT 
   last_name,
   first_name,
   hire_date
FROM 
    employees
WHERE 
    hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--3rd
--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name

SELECT
     dept_manager.dept_no,
	 departments.dept_name,
	 dept_manager.emp_no,
	 employees.last_name,
	 employees.first_name
FROM 
    dept_manager
JOIN 
    employees ON dept_manager.emp_no = employees.emp_no
JOIN
    departments ON dept_manager.dept_no = departments.dept_no;

--4th
--List the department number for each employee along with 
--that employee’s employee number, last name, first name, and department name
--(to easier check the table I also add sorting employees by employees number)
SELECT
     dept_emp.dept_no,
	 employees.emp_no,
	 employees.last_name,
	 employees.first_name,
	 departments.dept_name
FROM 
    employees
LEFT JOIN 
    dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN
    departments ON dept_emp.dept_no = departments.dept_no
ORDER BY 
    employees.emp_no;

--5th
--List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins 
--with the letter B

SELECT
    first_name,
    last_name,
    sex
FROM 
    employees
WHERE 
    first_name = 'Hercules' 
    AND last_name LIKE 'B%';

--6th
--List each employee in the Sales department, including their employee number, 
--last name, and first name (I also selected to sort it by last names)

SELECT
    employees.emp_no,
    employees.last_name,
    employees.first_name
FROM
    employees
JOIN
    dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN
    departments ON dept_emp.dept_no = departments.dept_no
WHERE
    departments.dept_name = 'Sales'
ORDER BY 
    employees.last_name;

--7th
--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name
SELECT
    employees.emp_no,
    employees.last_name,
    employees.first_name,
	departments.dept_name
FROM
    employees
LEFT JOIN
    dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN
    departments ON dept_emp.dept_no = departments.dept_no
WHERE
    departments.dept_name = 'Sales' or
	departments.dept_name = 'Development'
ORDER BY 
    employees.last_name;

--8th
--List the frequency counts, in descending order, of all the employee last names 
--(that is, how many employees share each last name)

SELECT
    last_name,
    COUNT(last_name) AS frequency
FROM
    employees
GROUP BY
    last_name
ORDER BY
    frequency DESC;