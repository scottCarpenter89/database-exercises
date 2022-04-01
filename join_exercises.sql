USE scott;

#We need to show the department name and the department manager
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';
#WHERE de.to_date = '9999-01-01' AND e.emp_no = 10001;

#SELECT all of the departments currently managed by women
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date = '9999-01-01';

#We're SELECTing all employees in Customer Service with a specific title and counting the instances
SELECT t.title AS 'Job Title', COUNT(t.emp_no) AS 'Total People w/ Job Title'
FROM employees as e
JOIN dept_emp AS de
ON de.emp_no = e.emp_no
JOIN titles AS t
ON t.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE d.dept_no = 'd009' AND t.to_date > CURDATE()
GROUP BY t.title
ORDER BY COUNT(t.emp_no) DESC;

#We are selecting the department name, department manager, and their salary ordering by their department name
SELECT DISTINCT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) as 'Department Manager',
       s.salary AS Salary
FROM employees AS e
JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
JOIN salaries AS s
ON s.emp_no = e.emp_no
WHERE s.to_date > CURDATE() AND dm.to_date > CURDATE();








