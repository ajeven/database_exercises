USE employees;

SELECT * FROM employees WHERE gender = "M" AND (first_name = 'Irena' OR first_name = 'Maya' OR first_name = 'Vidya');
SELECT * FROM employees WHERE last_name LIKE "E%" OR last_name LIKE "%e";
SELECT * FROM employees WHERE last_name LIKE "E%e";
SELECT * FROM employees WHERE hire_date LIKE "199%" AND birth_date LIKE "%%%%-12-25";
SELECT * FROM employees WHERE birth_date  LIKE "%%%%-12-25";
SELECT * FROM employees WHERE last_name LIKE "%q%" AND (last_name NOT LIKE "%qu%");