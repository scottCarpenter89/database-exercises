USE scott;

SELECT hire_date, COUNT(emp_no) AS Total
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = '101010'
    );