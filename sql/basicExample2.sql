-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

SELECT employee_id, first_name, last_name, hire_date
FROM employees
LIMIT 5;
