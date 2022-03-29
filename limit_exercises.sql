USE scott;

SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

#Adding extra salary field to validate results of first five results
SELECT emp_no, salary
FROM salaries
ORDER BY salary DESC
LIMIT 5;

#Adding extra salary field to validate results of 10th 'page' @ 5 results per page
SELECT emp_no, salary
FROM salaries
ORDER BY salary DESC
LIMIT 5 OFFSET 46;


