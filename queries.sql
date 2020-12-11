-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT 
	employees.emp_no AS "Employee Number", 
	employees.last_name AS "Last Name", 
	employees.first_name AS "First Name",
	employees.sex AS "Sex", 
	salaries.salary AS "Salary"
FROM employees
JOIN salaries
ON salaries.emp_no = employees.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT 
	employees.first_name AS "First Name", 
	employees.last_name AS "Last Name", 
	employees.hire_data AS "Hire Date"
FROM employees
WHERE employees.hire_data BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
SELECT 
	departments.dept_no AS "Department Number", 
	departments.dept_name AS "Department Name",
	dept_manager.emp_no AS "Department Manager",
	employees.last_name AS "Last Name", 
	employees.first_name AS "First Name"
FROM (departments JOIN dept_manager ON departments.dept_no = dept_manager.dept_no)
JOIN employees ON dept_manager.emp_no = employees.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT 
	employees.emp_no AS "Employee Number", 
	employees.last_name AS "Last Name", 
	employees.first_name AS "First Name", 
	departments.dept_name AS "Department Name"
FROM (employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no)
JOIN departments ON departments.dept_no = dept_emp.dept_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT 
	employees.first_name AS "First Name", 
	employees.last_name AS "Last Name", 
	employees.sex AS "Sex"
FROM employees
WHERE first_name = 'Hercules' AND last_name lIKE 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.
SELECT 
	employees.emp_no AS "Employee Number", 
	employees.last_name AS "Last Name", 
	employees.first_name "First Name", 
	departments.dept_name AS "Department Name"
FROM (employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no)
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
SELECT 
	employees.emp_no AS "Employee Number", 
	employees.last_name AS "Last Name", 
	employees.first_name "First Name",
	departments.dept_name AS "Department Name"
FROM (employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no)
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name IN ('Sales','Development');

--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name AS "Last Name", COUNT(last_name) AS "Frequency"
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;


