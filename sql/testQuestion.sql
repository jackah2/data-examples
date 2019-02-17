-- !preview conn=DBI::dbConnect(RSQLite::SQLite(), "tutorial.sqlite")

--SELECT e.department_id, department_name, SUM(salary)
--FROM employees e
--INNER JOIN departments d ON d.department_id = e.department_id
--GROUP BY e.department_id
--HAVING SUM(salary) > 30000
--ORDER BY SUM(salary) DESC;

--select d.first_name d_first, d.last_name d_last, e.first_name e_first, e.last_name e_last, p.department_id
--from dependents d 
--inner join employees e on d.employee_id = e.employee_id
--inner join departments p on e.department_id = p.department_id
--order by p.department_id desc;

SELECT manager_id, first_name, last_name, COUNT(employee_id) direct_reports
FROM employees
WHERE manager_id IS NOT NULL
GROUP BY manager_id
HAVING direct_reports >= 2
ORDER BY direct_reports DESC;
