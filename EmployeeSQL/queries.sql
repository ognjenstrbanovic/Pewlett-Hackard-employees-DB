-- 1. List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no AS "Employee Number", 
		employees.last_name AS "Last Name", 
		employees.first_name AS "First Name", 
		employees.gender AS "Gender", 
		salaries.salary AS "Salary"
FROM salaries
INNER JOIN employees ON
employees.emp_no = salaries.emp_no;


-- 2. List employees who were hired in 1986.
SELECT emp_no AS "Employee Number", 
		last_name AS "Last Name", 
		first_name AS "First Name", 
		hire_date AS "Hire Date"
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986
ORDER BY hire_date;


-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT dept_manager.dept_no AS "Department Number", 
		departments.dept_name AS "Department Name", 
		dept_manager.emp_no AS "Manager Employee Number", 
		employees.last_name AS "Last Name", 
		employees.first_name AS "First Name", 
		dept_manager.from_date AS "Start Employment Date", 
		dept_manager.to_date AS "End Employment Date"
FROM ((dept_manager
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no)
INNER JOIN departments ON dept_manager.dept_no = departments.dept_no);


-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no AS "Employee Number", 
		employees.last_name AS "Last Name", 
		employees.first_name AS "First Name", 
		departments.dept_name AS "Department Name"
FROM employees
CROSS JOIN departments;


-- 5. List all employees whose first name is "Hercules" and last names begin with "B."
SELECT *
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name;


-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT employees.emp_no AS "Employee Number", 
		employees.last_name AS "Last Name", 
		employees.first_name AS "First Name", 
		departments.dept_name AS "Department Name"
FROM employees
CROSS JOIN departments
WHERE departments.dept_name = 'Sales';


-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT employees.emp_no AS "Employee Number", 
		employees.last_name AS "Last Name", 
		employees.first_name AS "First Name", 
		departments.dept_name AS "Department Name"
FROM employees
CROSS JOIN departments
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development';


-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name AS "Last Name", COUNT(last_name) AS "Frequency Count of Employee Last Names"
FROM employees
GROUP BY last_name
ORDER BY last_name DESC;