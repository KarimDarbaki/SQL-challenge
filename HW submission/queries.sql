-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.emp_no,first_name,last_name,sex,salary
From employees
JOIN salaries ON employees.emp_no=salaries.emp_no;


-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name,last_name,hire_date
FROM employees
WHERE hire_date between '01/01/1986' AND '12/31/1986';

-- List the manager of each department with the following 
-- information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_managers.dept_no,employees.emp_no,last_name,first_name,dept_name
FROM dept_managers
JOIN departments ON dept_managers.dept_no=departments.dept_no
JOIN employees ON employees.emp_no=dept_managers.emp_no;

-- List the department of each employee with the following information: employee number,
-- last name, first name, and department name.
SELECT employees.emp_no,last_name,first_name,dept_name
FROM employees
JOIN dept_employees ON dept_employees.emp_no=employees.emp_no
JOIN departments ON departments.dept_no=dept_employees.dept_no;

-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name, sex
FROM employees
WHERE first_name='Hercules' AND last_name LIKE 'B%';
-- List all employees in the Sales department, including their
-- employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name,first_name,dept_name
FROM employees
JOIN dept_employees ON dept_employees.emp_no=employees.emp_no
JOIN departments ON departments.dept_no=dept_employees.dept_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments
-- , including their employee number, last name, first name, and department name.
SELECT employees.emp_no,last_name,first_name,dept_name
FROM employees
JOIN dept_employees ON dept_employees.emp_no=employees.emp_no
JOIN departments ON departments.dept_no=dept_employees.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';
-- In descending order, list the frequency count of employee
-- last names, i.e., how many employees share each last name.
SELECT last_name,count(last_name)
FROM employees
GROUP BY last_name
ORDER BY count(last_name) DESC;


