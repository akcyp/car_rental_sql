CREATE SEQUENCE office_seq;
INSERT INTO office VALUES (office_seq.nextval, '20-000, Lublin, Warszawska 999A', '606798224',    'lublin@car-rent.pl');
INSERT INTO office VALUES (office_seq.nextval, '01-330, Warszawa, Lazurowa 111F', '+48506777232', 'wawszawa@car-rent.pl');

CREATE SEQUENCE employee_role_seq;
INSERT INTO employee_role VALUES (employee_role_seq.nextval, 'Manager');
INSERT INTO employee_role VALUES (employee_role_seq.nextval, 'Accountant');
INSERT INTO employee_role VALUES (employee_role_seq.nextval, 'Mechanic');
INSERT INTO employee_role VALUES (employee_role_seq.nextval, 'Service Technician');

CREATE SEQUENCE employee_seq;
INSERT INTO employee VALUES (employee_seq.nextval, 'Jan',     'Kowalski',    'PL86219064824578125749770705', '92080617203');
INSERT INTO employee VALUES (employee_seq.nextval, 'Kamil',   'Górecki',     'PL84195020896399472190050111', '79032733640');
INSERT INTO employee VALUES (employee_seq.nextval, 'Jerzy',   'Pietrzak',    'PL61158084516091126577382783', '85111599490');
INSERT INTO employee VALUES (employee_seq.nextval, 'Marcin',  'Piotrowski',  'PL80187002246764364349080808', '86070965052');
INSERT INTO employee VALUES (employee_seq.nextval, 'Ignacy',  'Stępień',     'PL71102039614135383952895939', '62040376925');
INSERT INTO employee VALUES (employee_seq.nextval, 'Janusz',  'Wasilewska',  'PL06114040402679681601951813', '86022885399');
INSERT INTO employee VALUES (employee_seq.nextval, 'Daniel',  'Pietrzak',    'PL95147039995791372346390038', '57040733634');
INSERT INTO employee VALUES (employee_seq.nextval, 'Damian',  'Szymczak',    'PL08213075826879192522877711', '87020919282');
INSERT INTO employee VALUES (employee_seq.nextval, 'Juliusz', 'Maciejewski', 'PL83219070725494259984919881', '71112107655');

-- Jan Kowalski is the manager of both branches
INSERT INTO contract VALUES (1, 1, 1, 5000);
INSERT INTO contract VALUES (2, 1, 1, 8000);
-- Kamil Górecki is the accountant of both branches
INSERT INTO contract VALUES (1, 2, 2, 3000);
INSERT INTO contract VALUES (2, 2, 2, 4000);
-- Mechanics w Lublin
INSERT INTO contract VALUES (1, 3, 3, 5000);
-- Mechanics w Warsaw
INSERT INTO contract VALUES (2, 4, 3, 6000);
INSERT INTO contract VALUES (2, 5, 3, 6000);
-- Service technicians in Lublin
INSERT INTO contract VALUES (1, 6, 4, 4500);
-- Service technicians in Warsaw
INSERT INTO contract VALUES (2, 7, 4, 5500);
INSERT INTO contract VALUES (2, 8, 4, 5500);
INSERT INTO contract VALUES (2, 9, 4, 5500);

INSERT INTO car_brand VALUES ('Audi');
INSERT INTO car_brand VALUES ('BMW');
INSERT INTO car_brand VALUES ('Honda');
INSERT INTO car_brand VALUES ('Opel');
INSERT INTO car_brand VALUES ('Kia');
INSERT INTO car_brand VALUES ('Volkswagen');

INSERT INTO car_model VALUES ('A4',       'Audi');
INSERT INTO car_model VALUES ('A5',       'Audi');
INSERT INTO car_model VALUES ('S5',       'Audi');
INSERT INTO car_model VALUES ('A6',       'Audi');
INSERT INTO car_model VALUES ('M1',       'BMW');
INSERT INTO car_model VALUES ('M3',       'BMW');
INSERT INTO car_model VALUES ('M5',       'BMW');
INSERT INTO car_model VALUES ('M6',       'BMW');
INSERT INTO car_model VALUES ('Accord',   'Honda');
INSERT INTO car_model VALUES ('Civic',    'Honda');
INSERT INTO car_model VALUES ('Corsa',    'Opel');
INSERT INTO car_model VALUES ('Insignia', 'Opel');
INSERT INTO car_model VALUES ('Stinger',  'Kia');
INSERT INTO car_model VALUES ('Optima',   'Kia');
INSERT INTO car_model VALUES ('Golf',     'Volkswagen');

INSERT INTO car VALUES ('LU 8041', 'Audi',       'A4',       1, 'DIESEL', 500,  '1HGS22BX16R8G9572');
INSERT INTO car VALUES ('WB 8242', 'Audi',       'A5',       2, 'DIESEL', 750,  'WMW4XCS03TY1V4880');
INSERT INTO car VALUES ('WB 8244', 'Audi',       'S5',       2, 'PETROL', 1000, '9UJY5HYY43FHY4251');
INSERT INTO car VALUES ('LU 8937', 'Audi',       'A6',       1, 'PETROL', 600,  '6G2P8GA32JFYD0179');
INSERT INTO car VALUES ('WB 4232', 'BMW',        'M1',       2, 'PETROL', 740,  'LC03G05Z3AWEP6721');
INSERT INTO car VALUES ('LU 5834', 'BMW',        'M3',       1, 'PETROL', 800,  'PNAFPJLE851W88897');
INSERT INTO car VALUES ('WB 8068', 'BMW',        'M5',       2, 'PETROL', 900,  'TCC9FZFS6NYGF6576');
INSERT INTO car VALUES ('WB 3801', 'BMW',        'M6',       2, 'PETROL', 800,  'SJN6N5AR2LLPL8066');
INSERT INTO car VALUES ('WB 4874', 'Honda',      'Accord',   2, 'PETROL', 550,  '4T5SD02520G3Z7380');
INSERT INTO car VALUES ('LU 5375', 'Honda',      'Civic',    1, 'DIESEL', 500,  'VV9134UK4R6XN8344');
INSERT INTO car VALUES ('LU 7422', 'Opel',       'Insignia', 1, 'DIESEL', 500,  '93X082VB7CZG63698');
INSERT INTO car VALUES ('LU 1435', 'Opel',       'Corsa',    1, 'DIESEL', 400,  '1GBNCXB8022HS2776');
INSERT INTO car VALUES ('WB 5435', 'Kia',        'Stinger',  2, 'DIESEL', 1200, 'JC1MG7NW2MYKF7129');
INSERT INTO car VALUES ('WB 2342', 'Kia',        'Optima',   2, 'DIESEL', 800,  '95PV9LJ14MEDZ6587');
INSERT INTO car VALUES ('LU 2112', 'Volkswagen', 'Golf',     1, 'GAS',    2000, '95GV9LJ15MEDFS587');

CREATE SEQUENCE client_seq;
INSERT INTO client VALUES (client_seq.nextval, 'AMJ004735', 'Jan',       'Kowalski',   '43-648, Chełm, Rzemielźnicza 13', '791112228', 'jan.kowalski@gmail.com');
INSERT INTO client VALUES (client_seq.nextval, 'AMJ106729', 'Mirosław',  'Mucha',      '31-244, Katowice, Sosnowa 15',    '518112007', NULL);
INSERT INTO client VALUES (client_seq.nextval, 'AMJ376904', 'Joanna',    'Zduńska',    '09-260, Koszalin, Leśna 67',      NULL, NULL);
INSERT INTO client VALUES (client_seq.nextval, 'AMJ468816', 'Klaudiusz', 'Piotrowski', '74-904, Konin, Wróblewskiego 44', NULL, NULL);
INSERT INTO client VALUES (client_seq.nextval, 'AMJ948370', 'Stanisław', 'Stępień',    '91-109, Sosnowiec, Akacjowa 67',  NULL, NULL);
INSERT INTO client VALUES (client_seq.nextval, 'AMJ422151', 'Albert',    'Madej',      '10-504, Chorzów, Konwaliowa 12',  NULL, NULL);
INSERT INTO client VALUES (client_seq.nextval, 'AMJ647716', 'Czesława',  'Jasińska',   '15-089, Poznań, Narcyzowa 17',    NULL, NULL);
INSERT INTO client VALUES (client_seq.nextval, 'AMJ552966', 'Igor',      'Polak',      '21-400, Łuków, Kilińskiego 37',   NULL, NULL);
INSERT INTO client VALUES (client_seq.nextval, 'AMJ329331', 'Julianna',  'Marek',      '09-260, Kalisz, Cukiernicza 87',  NULL, NULL);
INSERT INTO client VALUES (client_seq.nextval, 'AMJ488553', 'Elwira',    'Urbańska',   '47-194, Tarnów, Kujawska 18',     NULL, NULL);

CREATE SEQUENCE rental_seq;
INSERT INTO rental VALUES (rental_seq.nextval, 1, 'LU 8041', '2018-04-05', '2018-04-09', 250, 22, 'PER_DAY');
INSERT INTO rental VALUES (rental_seq.nextval, 2, 'LU 8041', '2019-01-12', '2019-01-15', 320, 20, 'PER_KM');
INSERT INTO rental VALUES (rental_seq.nextval, 1, 'LU 5834', '2020-07-22', '2020-07-26', 500, 60, 'PER_DAY');
INSERT INTO rental VALUES (rental_seq.nextval, 4, 'WB 4232', '2020-07-23', '2020-07-24', 60,  5,  'PER_KM');
INSERT INTO rental VALUES (rental_seq.nextval, 1, 'LU 2112', '2022-04-16', '2022-04-20', 800, 8,  'PER_KM');
INSERT INTO rental VALUES (rental_seq.nextval, 6, 'LU 5834', '2022-05-06', '2022-05-16', 400, 50, 'PER_DAY');
INSERT INTO rental VALUES (rental_seq.nextval, 1, 'LU 8041', '2022-05-12', '2022-05-15', 200, 15, 'PER_KM');
INSERT INTO rental VALUES (rental_seq.nextval, 3, 'LU 8041', '2022-05-16', '2022-05-17', 180, 14, 'PER_DAY');
INSERT INTO rental VALUES (rental_seq.nextval, 1, 'WB 5435', '2022-07-12', '2022-07-15', 350, 38, 'PER_DAY');
INSERT INTO rental VALUES (rental_seq.nextval, 3, 'WB 8242', '2022-12-12', '2022-12-20', 150, 10, 'PER_KM');
