-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT employee_id, first_name, last_name, salary
FROM employees
WHERE salary > 14000
ORDER BY salary DESC;
