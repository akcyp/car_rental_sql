CREATE TABLE office (
  office_id      NUMBER        PRIMARY KEY,
  office_address VARCHAR2(100) NOT NULL,
  office_phone   VARCHAR2(12)  NOT NULL,
  office_email   VARCHAR2(50)  NOT NULL
);

CREATE TABLE employee_role (
  role_id   NUMBER       PRIMARY KEY,
  role_name VARCHAR2(20) NOT NULL
);

CREATE TABLE employee (
  employee_id      NUMBER       PRIMARY KEY,
  employee_name    VARCHAR2(20) NOT NULL,
  employee_surname VARCHAR2(20) NOT NULL,
  bank_account     VARCHAR2(30),
  pesel            VARCHAR2(12)
);

CREATE TABLE contract (
  office_id   NUMBER,
  employee_id NUMBER,
  role_id     NUMBER NOT NULL,
  salary      NUMBER NOT NULL,
  PRIMARY KEY (employee_id, office_id),
  FOREIGN KEY (office_id)   REFERENCES office(office_id),
  FOREIGN KEY (employee_id) REFERENCES employee(employee_id),
  FOREIGN KEY (role_id)     REFERENCES employee_role(role_id)
);

CREATE TABLE car_brand (
  brand_name VARCHAR2(10) PRIMARY KEY
);

CREATE TABLE car_model (
  model_name VARCHAR2(12),
  brand_name VARCHAR2(10),
  PRIMARY KEY (brand_name, model_name),
  FOREIGN KEY (brand_name) REFERENCES car_brand(brand_name)
);

CREATE TABLE car (
  car_registration_number VARCHAR2(20) PRIMARY KEY,
  brand_name              VARCHAR2(10) NOT NULL,
  model_name              VARCHAR2(12) NOT NULL,
  office_id               NUMBER,
  fuel_type               VARCHAR2(10) NOT NULL,
  daily_cost              NUMBER       NOT NULL,
  vin                     VARCHAR2(50),
  FOREIGN KEY (office_id) REFERENCES office(office_id),
  FOREIGN KEY (brand_name, model_name)
    REFERENCES car_model (brand_name, model_name)
);

CREATE TABLE client (
  client_id              NUMBER        PRIMARY KEY,
  client_driving_license VARCHAR2(20)  NOT NULL,
  client_name            VARCHAR2(20)  NOT NULL,
  client_surname         VARCHAR2(20)  NOT NULL,
  client_address         VARCHAR2(100) NOT NULL,
  client_phone           VARCHAR2(12),
  client_email           VARCHAR2(50)
);

CREATE TABLE rental (
  rental_id           NUMBER           PRIMARY KEY,
  client_id           NUMBER           NOT NULL,
  car_registration_number VARCHAR2(20) NOT NULL,
  rental_start        DATE             NOT NULL,
  rental_end          DATE             NOT NULL,
  kilometers_traveled NUMBER           NOT NULL,
  used_fuel           NUMBER           NOT NULL,
  rental_type         VARCHAR2(10)     NOT NULL,
  FOREIGN KEY (client_id) REFERENCES client(client_id),
  FOREIGN KEY (car_registration_number) REFERENCES car(car_registration_number)
);
