SELECT
	employees.name AS employee_name,
	employees.role AS employee_role,
	departments.name AS department_name
FROM
	inlaid-computer-474219-u0.datos_empleado.employees AS employees 
RIGHT JOIN
	inlaid-computer-474219-u0.datos_empleado.departamentos AS departments
    ON employees.department_id = departments.department_id