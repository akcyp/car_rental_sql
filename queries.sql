-- Top earning employee / employees
WITH rank AS (
    SELECT employee.employee_name || ' ' || employee.employee_surname as "Employee", SUM(contract.salary) as "Salary"
    FROM employee JOIN contract ON contract.employee_id = employee.employee_id
    GROUP BY employee.employee_name, employee.employee_surname
) SELECT * FROM rank WHERE "Salary" = (SELECT MAX("Salary") FROM rank);

-- Top 5 cars with high earnings
SELECT "Car", "Income" FROM cars_view ORDER BY "Income" DESC FETCH NEXT 5 ROWS ONLY;