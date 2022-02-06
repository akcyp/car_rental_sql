DROP TABLE rental         CASCADE CONSTRAINTS;
DROP TABLE client         CASCADE CONSTRAINTS;
DROP TABLE car            CASCADE CONSTRAINTS;
DROP TABLE car_model      CASCADE CONSTRAINTS;
DROP TABLE car_brand      CASCADE CONSTRAINTS;
DROP TABLE contract       CASCADE CONSTRAINTS;
DROP TABLE employee       CASCADE CONSTRAINTS;
DROP TABLE employee_role  CASCADE CONSTRAINTS;
DROP TABLE office         CASCADE CONSTRAINTS;

DROP SEQUENCE office_seq;
DROP SEQUENCE employee_role_seq;
DROP SEQUENCE employee_seq;
DROP SEQUENCE client_seq;
DROP SEQUENCE rental_seq;

DROP VIEW cars_view;
DROP VIEW active_clients;
DROP VIEW offices_employee_stats_view;
DROP VIEW offices_car_stats_view;