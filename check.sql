SELECT
  (SELECT COUNT(*) FROM car) as "Cars",
  (SELECT COUNT(*) FROM car_brand) as "Car brands",
  (SELECT COUNT(*) FROM car_model) as "Car models",
  (SELECT COUNT(*) FROM client) as "Clients",
  (SELECT COUNT(*) FROM contract) as "Contracts",
  (SELECT COUNT(*) FROM employee) as "Employees",
  (SELECT COUNT(*) FROM employee_role) as "Employee roles",
  (SELECT COUNT(*) FROM office) as "Offices",
  (SELECT COUNT(*) FROM rental) as "Rentals"
FROM dual;