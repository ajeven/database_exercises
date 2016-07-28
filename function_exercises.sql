USE employees;

SELECT COUNT(*) FROM employees WHERE gender = "M" AND (first_name = 'Irena' OR first_name = 'Maya' OR first_name = 'Vidya') OR gender = "F" AND (first_name = 'Irena' OR first_name = 'Maya' OR first_name = 'Vidya') GROUP BY gender;
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees WHERE last_name LIKE "E%e";
SELECT  first_name, last_name, datediff(curdate(), hire_date) AS time_working_as_days FROM employees WHERE hire_date LIKE "199%" AND birth_date LIKE "%%%%-12-25";
SELECT DISTINCT last_name, first_name FROM employees WHERE last_name LIKE "%q%" AND (last_name NOT LIKE "%qu%") ORDER BY last_name;