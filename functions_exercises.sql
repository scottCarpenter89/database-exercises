USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Last name sandwiched by E''s'
FROM employees
WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

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
