USE scott;

SELECT hire_date, COUNT(emp_no) AS Total
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );

SELECT title, COUNT(title) AS Total
FROM titles
WHERE emp_no IN (
    SELECT emp_no
    FROM employees
    WHERE first_name = 'Aamod'
    )
GROUP BY title;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE to_date > CURDATE()
    ) AND gender = 'F';

SELECT dept_name
FROM departments
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_manager
    WHERE emp_no IN (
        SELECT emp_no
        FROM employees
        WHERE gender = 'F'
        ) AND to_date > CURDATE()
    );

# Want the first and last name of the person with the highest salary
SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE to_date > CURDATE() AND salary > 150000
    ORDER BY salary DESC
)
LIMIT 1;


