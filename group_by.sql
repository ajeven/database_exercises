USE employees;

SELECT DISTINCT title FROM titles;
SELECT DISTINCT title FROM titles GROUP BY title;
SELECT * FROM employees WHERE last_name LIKE "E%e" GROUP BY first_name, last_name;
SELECT * FROM employees WHERE last_name LIKE "%q%" AND (last_name NOT LIKE "%qu%") GROUP BY last_name;