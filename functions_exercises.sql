USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Last name sandwiched by E''s'
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT CONCAT(first_name, ' ', last_name) AS 'People born on X-mas', birth_date
FROM employees
WHERE (MONTH(birth_date) = 12) AND (DAY(birth_date) = 25);

SELECT CONCAT(first_name, ' ', last_name) AS 'People born on X-mas and hired in the 90''s', birth_date, hire_date
FROM employees
WHERE (MONTH(birth_date) = 12) AND (DAY(birth_date) = 25) AND (YEAR(hire_date) BETWEEN 1990 AND 1999);

SELECT CONCAT(first_name, ' ', last_name) AS 'Oldest person hired last in the 90''s', birth_date, hire_date
FROM employees
WHERE (MONTH(birth_date) = 12) AND (DAY(birth_date) = 25) AND (YEAR(hire_date) BETWEEN 1990 AND 1999)
ORDER BY hire_date DESC, year(birth_date) DESC
LIMIT 1;

#Added ORDER BY hire_date to show the people who have been at the company the longest
SELECT CONCAT(first_name, ' ', last_name), DATEDIFF(curdate(), hire_date) AS '# of days at the company', birth_date, hire_date
FROM employees
WHERE (MONTH(birth_date) = 12) AND (DAY(birth_date) = 25) AND (YEAR(hire_date) BETWEEN 1990 AND 1999)
ORDER BY hire_date ASC;
############################################################################################################
# The following was copied from order_by_exercise.sql
SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name ASC, last_name ASC;

SELECT first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name ASC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no ASC;

SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no DESC;

########################################################################################################################
#The following was copied over the entire contents from where_exercises.sql

SELECT first_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE  '%q%';

SELECT first_name
FROM employees
WHERE first_name = 'Irena' OR first_name = 'Vidya'
   OR first_name = 'Maya';

SELECT first_name
FROM employees
WHERE gender = 'm' AND (first_name IN ('Irena', 'Vidya', 'Maya'));

SELECT *
FROM employees
WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
