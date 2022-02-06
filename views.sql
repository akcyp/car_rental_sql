-- Ranking of cars based on popularity
CREATE OR REPLACE VIEW cars_view as WITH cars AS (SELECT
    car.car_registration_number as "Registration number",
    car.brand_name || ' ' || car.model_name as "Car",
    0 as "Usage",
    0 as "Total km traveled",
    0 as "Total fuel used",
    0 as "Fuel consumption",
    0 as "Profit",
    0 as "Loss",
    'False' as "In use"
FROM car
UNION SELECT
    car.car_registration_number,
    car.brand_name || ' ' || car.model_name,
    COUNT(*),
    SUM(rental.kilometers_traveled),
    SUM(rental.used_fuel),
    ROUND(SUM(rental.used_fuel) / (SUM(rental.kilometers_traveled) / 100), 2),
    SUM(CASE
        WHEN rental.rental_type = 'PER_DAY' THEN (rental.rental_end - rental_start) * car.daily_cost
        WHEN rental.rental_type = 'PER_KM'  THEN (rental.rental_end - rental_start) * car.daily_cost / 2 + rental.kilometers_traveled * 2.5
        ELSE 0
    END),
    SUM(CASE
        WHEN car.fuel_type = 'DIESEL' THEN rental.used_fuel * 5.82
        WHEN car.fuel_type = 'PETROL' THEN rental.used_fuel * 5.85
        WHEN car.fuel_type = 'GAS'    THEN rental.used_fuel * 2.97
        ELSE 0
    END),
    DECODE(MAX(CASE WHEN sysdate BETWEEN rental.rental_start AND rental.rental_end THEN 1 ELSE 0 END), 1, 'True', 'False')
FROM car
JOIN rental ON rental.car_registration_number = car.car_registration_number
GROUP BY car.car_registration_number, car.brand_name, car.model_name
ORDER BY "Profit" DESC)
SELECT
    "Registration number",
    "Car",
    "Usage",
    "Total km traveled",
    "Total fuel used",
    "Fuel consumption",
    "In use",
    "Profit",
    "Loss",
    "Profit" - "Loss" as "Income"
FROM cars
ORDER BY "Income" DESC;

-- Zestawienie aktywnych klientów
CREATE OR REPLACE VIEW active_clients AS
SELECT
    client.client_name || ' ' || client.client_surname as "Client",
    COUNT(*) as "Number of rentals",
    SUM(rental.rental_end - rental.rental_start) as "Rental days in total",
    CASE
        WHEN SUM(CASE rental.rental_type WHEN 'PER_DAY' THEN 1 ELSE -1 END) > 0 THEN 'Pay per day'
        WHEN SUM(CASE rental.rental_type WHEN 'PER_DAY' THEN 1 ELSE -1 END) < 0 THEN 'Pay per kilometers'
        ELSE 'Does not matter'
    END as "Preffered rental type"
FROM client
JOIN rental ON rental.client_id = client.client_id
GROUP BY client.client_name, client.client_surname;

-- List of branches based on employees
CREATE OR REPLACE VIEW offices_employee_stats_view AS SELECT
    REGEXP_REPLACE(office.office_address, '.*, (.+), .*', '\1') as "Location",
    COUNT(*) as "Employees",
    ROUND(AVG(contract.salary), 2) as "Average salary",
    MAX(contract.salary) as "Min salary",
    MIN(contract.salary) as "Max salary"
FROM office
JOIN contract ON office.office_id = contract.office_id
JOIN employee ON employee.employee_id = contract.employee_id
GROUP BY office.office_address;

-- List of branches based on cars
CREATE OR REPLACE VIEW offices_car_stats_view AS SELECT
    office.office_address as "Office",
    COUNT(DISTINCT car.car_registration_number) as "Number of cars",
    SUM(NVL(rental.kilometers_traveled, 0)) as "Sum of kilometers traveled by cars",
    COUNT(client.client_id) as "Total clients"
FROM office
JOIN car ON car.office_id = office.office_id
LEFT JOIN rental ON rental.car_registration_number = car.car_registration_number
LEFT JOIN client ON rental.client_id = client.client_id
GROUP BY office.office_address;

-- Selects
SELECT * FROM cars_view;
SELECT * FROM active_clients;
SELECT * FROM offices_employee_stats_view;
SELECT * FROM offices_car_stats_view;