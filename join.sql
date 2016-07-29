USE employees

SELECT d.dept_name as Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager FROM departments AS d 
JOIN dept_manager AS m ON d.dept_no = m.dept_no
JOIN employees AS e ON m.emp_no = e.emp_no
WHERE m.to_date = '9999-01-01';

SELECT d.dept_name as Department, CONCAT(e.first_name, ' ', e.last_name) AS Manager FROM departments AS d 
JOIN dept_manager AS m ON d.dept_no = m.dept_no
JOIN employees AS e ON m.emp_no = e.emp_no
WHERE m.to_date = '9999-01-01' AND e.gender = "F";

SELECT t.title, COUNT(*) 
FROM titles AS t
JOIN employees AS e ON t.emp_no = e.emp_no
JOIN dept_emp AS de ON e.emp_no = de.emp_no AND t.to_date = '999-01-01'
JOIN departments AS d ON de.dept_no = d.dept_no AND de.to_date = '9999-01-01'
WHERE d.dept_name = 'Customer Service';


SELECT d.dept_name AS "Department",
CONCAT(e.first_name, ' ', e.last_name) AS 'Name',
s.salary AS 'Salary'
FROM departments AS d
JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
JOIN employees as e ON dm.emp_no = e.emp_no
JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE s.to_date = "9999-01-01" AND dm.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name AS 'Department', CONCAT(m.first_name, ' ', m.last_name) AS 'Manager' FROM employees AS e
JOIN dept_emp AS de ON de.emp_no = e.emp_no
JOIN departments AS d ON d.dept_no = de.dept_no
JOIN dept_manager as dm ON dm.dept_no = d.dept_no AND dm.to_date > curdate()
JOIN employees AS m ON m.emp_no = dm.emp_no
WHERE de.to_date > curdate();