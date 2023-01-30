CREATE TABLE client (
	id int PRIMARY KEY NOT NULL,
	email VARCHAR(255) NOT NULL,
	first_name VARCHAR(255),
	last_name VARCHAR(255) not null,
	phone VARCHAR(255) not null,
	arrival_date DATE not null,
	date_of_departure Date not null,
	number_of_people int,
	budget int not null
	
);
CREATE TABLE room (
	id INT PRIMARY KEY NOT NULL,
	availablity VARCHAR(255) NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	price int NOT NULL,
	stage VARCHAR(255)NOT NULL,
	bath int NOT NULL ,
	shower int NOT NULL,
	wc int NOT NULL,
	bed varchar(255) NOT null
	
);
CREATE TABLE reservation (
	id INT PRIMARY KEY NOT NULL,
	date_of_departure date NOT NULL,
	arrival_date  date not null,
	date_of_reservation date not null
	
	
);
CREATE TABLE employee (
	id INT PRIMARY KEY NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) not null,
	phone VARCHAR(255) not null,
	address VARCHAR(255) not null,
	salary int not null,
	hire_date date not null,
	job VARCHAR(255) not null
);
CREATE TABLE service (
	id INT PRIMARY KEY NOT NULL,
	description VARChar(255) not null,
	price int not null,
	category VARCHAR(255) not null,
	date_of_departure date NOT NULL,
	arrival_date  date not null
);
CREATE TABLE billing (
	id INT PRIMARY KEY NOT NULL,
	total VARChar(255) not null,
	billing_date  date not null
);
create table hotels (
    id INT PRIMARY KEY NOT NULL,
    name_hotel VARCHAR(255) not null,
    localisation Varchar(255)not null

);

INSERT INTO client (id, email, first_name, last_name, phone, arrival_date, date_of_departure, number_of_people, budget)
VALUES (1, 'john.doe@email.com', 'John', 'Doe', '555-555-5555', '2022-10-01', '2022-10-10', 4, 2000),
(2, 'jane.doe@email.com', 'Jane', 'Doe', '555-555-5556', '2022-11-01', '2022-11-10', 2, 1000),
(3, 'bob.smith@email.com', 'Bob', 'Smith', '555-555-5557', '2022-12-01', '2022-12-10', 3, 1500),
(4, 'alice.johnson@email.com', 'Alice', 'Johnson', '555-555-5558', '2023-01-01', '2023-01-10', 1, 800),
(5, 'mike.williams@email.com', 'Mike', 'Williams', '555-555-5559', '2023-02-01', '2023-02-10', 2, 900),
(6, 'sarah.jones@email.com', 'Sarah', 'Jones', '555-555-5560', '2023-03-01', '2023-03-10', 4, 2000),
(7, 'dave.brown@email.com', 'Dave', 'Brown', '555-555-5561', '2023-04-01', '2023-04-10', 3, 1700),
(8, 'jennifer.davis@email.com', 'Jennifer', 'Davis', '555-555-5562', '2023-05-01', '2023-05-10', 2, 1100),
(9, 'chris.garcia@email.com', 'Chris', 'Garcia', '555-555-5563', '2023-06-01', '2023-06-10', 4, 2500),
(10, 'jessica.martin@email.com', 'Jessica', 'Martin', '555-555-5564', '2023-07-01', '2023-07-10', 3, 2000),
(11, 'william.taylor@email.com', 'William', 'Taylor', '555-555-5565', '2023-08-01', '2023-08-10', 2, 1500),
(12, 'ashley.thomas@email.com', 'Ashley', 'Thomas', '555-555-5566', '2023-09-01', '2023-09-10', 4, 3000),
(13, 'jason.jackson@email.com', 'Jason', 'Jackson', '555-555-5567', '2023-10-01', '2023-10-10', 3, 2000),
(14, 'samantha.white@email.com', 'Samantha', 'White', '555-555-5568', '2023-11-01', '2023-11-10', 2, 1000);

INSERT INTO room (id, availablity, first_name, price, stage, bath, shower, wc, bed)
VALUES
(1, 'Available', 'Single', 50, '1st Floor', 1, 1, 1, 'Single Bed'),
(2, 'Available', 'Double', 70, '1st Floor', 2, 1, 2, 'Double Bed'),
(3, 'Not Available', 'Twin', 80, '2nd Floor', 1, 2, 1, 'Twin Bed'),
(4, 'Available', 'Triple', 90, '2nd Floor', 2, 2, 2, 'Triple Bed'),
(5, 'Not Available', 'Quad', 100, '3rd Floor', 2, 2, 2, 'Quad Bed'),
(6, 'Available', 'Queen', 120, '3rd Floor', 1, 2, 1, 'Queen Bed'),
(7, 'Not Available', 'King', 150, '4th Floor', 2, 2, 2, 'King Bed'),
(8, 'Available', 'Suite', 200, '4th Floor', 1, 1, 1, 'Suite Bed'),
(9, 'Not Available', 'Single', 50, '5th Floor', 1, 1, 1, 'Single Bed'),
(10, 'Available', 'Double', 70, '5th Floor', 2, 1, 2, 'Double Bed'),
(11, 'Not Available', 'Twin', 80, '6th Floor', 1, 2, 1, 'Twin Bed'),
(12, 'Available', 'Triple', 90, '6th Floor', 2, 2, 2, 'Triple Bed'),
(13, 'Not Available', 'Quad', 100, '7th Floor', 2, 2, 2, 'Quad Bed'),
(14, 'Available', 'Queen', 120, '7th Floor', 1, 2, 1, 'Queen Bed'),
(15, 'Not Available', 'King', 150, '8th Floor', 2, 2, 2, 'King Bed');

INSERT INTO reservation (id, date_of_departure, arrival_date, date_of_reservation)
VALUES 
(1, '2023-02-01', '2023-01-30', '2022-12-30'),
(2, '2023-02-02', '2023-01-31', '2022-12-31'),
(3, '2023-02-03', '2023-02-01', '2023-01-01'),
(4, '2023-02-04', '2023-02-02', '2023-01-02'),
(5, '2023-02-05', '2023-02-03', '2023-01-03'),
(6, '2022-05-01', '2022-05-05', '2022-04-01'),
(7, '2022-06-01', '2022-06-05', '2022-05-01'),
(8, '2022-07-01', '2022-07-05', '2022-06-01'),
(9, '2022-09-01', '2022-09-05', '2022-08-01'),
(10, '2023-02-15', '2023-02-13', '2023-01-13');

INSERT INTO employee (id, first_name, last_name, phone, address, salary, hire_date, job)
VALUES
(1, 'John', 'Doe', '123456789', '1 Main St', 5000, '2022-01-01', 'Manager'),
(2, 'Jane', 'Doe', '987654321', '2 Main St', 6000, '2022-02-01', 'Assistant Manager'),
(3, 'Bob', 'Smith', '123456788', '3 Main St', 4500, '2022-03-01', 'Receptionist'),
(4, 'Alice', 'Johnson', '987654322', '4 Main St', 5000, '2022-04-01', 'Housekeeper'),
(5, 'Charlie', 'Brown', '123456787', '5 Main St', 6000, '2022-05-01', 'Chef'),
(6, 'Emily', 'Davis', '987654323', '6 Main St', 5000, '2022-06-01', 'Waitress'),
(7, 'Daniel', 'Miller', '123456786', '7 Main St', 6000, '2022-07-01', 'Bartender'),
(8, 'Emma', 'Wilson', '987654324', '8 Main St', 6000, '2022-08-01', 'Barista'),
(9, 'Michael', 'Anderson', '123456785', '9 Main St', 5000, '2022-09-01', 'Security'),
(10, 'Olivia', 'Thomas', '987654325', '10 Main St', 6000, '2022-10-01', 'Driver'),
(11, 'David', 'Jackson', '123456784', '11 Main St', 5000, '2022-11-01', 'Maintenance'),
(12, 'Ava', 'White', '987654326', '12 Main St', 6000, '2022-12-01', 'Gardener'),
(13, 'James', 'Harris', '123456783', '13 Main St', 5000, '2023-01-01', 'Janitor'),
(14, 'Isabella', 'Young', '987654327', '14 Main St', 6000, '2023-02-01', 'Cook'),
(15, 'William', 'Allen', '123456782', '15 Main St', 5000, '2023-03-01', 'Server');

INSERT INTO service (id, description, price, category, date_of_departure, arrival_date)
VALUES
(1, 'Spa', 100, 'Relaxation', '2022-12-01', '2022-12-02'),
(2, 'Massage', 80, 'Relaxation', '2022-12-03', '2022-12-04'),
(3, 'Gym', 50, 'Fitness', '2022-12-05', '2022-12-06'),
(4, 'Swimming pool', 70, 'Relaxation', '2022-12-07', '2022-12-08'),
(5, 'Breakfast', 20, 'Food', '2022-12-09', '2022-12-10'),
(6, 'Lunch', 30, 'Food', '2022-12-11', '2022-12-12'),
(7, 'Dinner', 40, 'Food', '2022-12-13', '2022-12-14'),
(8, 'Housekeeping', 30, 'Maintenance', '2022-12-15', '2022-12-16'),
(9, 'Laundry', 20, 'Maintenance', '2022-12-17', '2022-12-18'),
(10, 'Room service', 40, 'Food', '2022-12-19', '2022-12-20'),
(11, 'Concierge', 50, 'Guest service', '2022-12-21', '2022-12-22'),
(12, 'Airport shuttle', 60, 'Transportation', '2022-12-23', '2022-12-24'),
(13, 'Parking', 20, 'Transportation', '2022-12-25', '2022-12-26'),
(14, 'Rent a car', 70, 'Transportation', '2022-12-27', '2022-12-28'),
(15, 'Excursions', 80, 'Adventure', '2022-12-29', '2022-12-30');

INSERT INTO billing (id, total, billing_date)
VALUES
(1, '1000', '2022-12-01'),
(2, '900', '2022-12-02'),
(3, '800', '2022-12-03'),
(4, '700', '2022-12-04'),
(5, '600', '2022-12-05'),
(6, '500', '2022-12-06'),
(7, '400', '2022-12-07'),
(8, '300', '2022-12-08'),
(9, '200', '2022-12-09'),
(10, '100', '2022-12-10'),
(11, '900', '2022-12-11'),
(12, '800', '2022-12-12'),
(13, '700', '2022-12-13'),
(14, '600', '2022-12-14');


SELECT * 
FROM client 
JOIN reservation 
ON client.id = reservation.id;

SELECT * 
FROM room 
JOIN reservation 
ON room.id = reservation.id;


SELECT * 
FROM billing 
JOIN reservation 
ON billing.id_reservation = reservation.id_reservation;


SELECT description, SUM(price)
FROM service
GROUP BY description
ORDER BY SUM(price);

SELECT first_name, last_name, SUM(total)
FROM client
JOIN reservation ON client.id = reservation.id
JOIN billing ON reservation.id = billing.id
GROUP BY first_name, last_name
ORDER BY SUM(total);

SELECT name_hotel, AVG(salary)
FROM hotels
JOIN employee ON hotels.id = employee.id
GROUP BY name_hotel;

SELECT name_hotel, COUNT(room.id), SUM(price)
FROM hotels
JOIN room ON hotels.id = room.id
GROUP BY name_hotel;

SELECT stage, COUNT(client.id)
FROM client
JOIN reservation ON client.id = reservation.id
JOIN room ON reservation.id = room.id
GROUP BY stage
ORDER BY COUNT(client.id);

SELECT category, SUM(total)
FROM billing
JOIN service ON billing.id = service.id
GROUP BY category
ORDER BY SUM(total);

SELECT name_hotel, COUNT(room.id), COUNT(employee.id)
FROM hotels
JOIN room ON hotels.id = room.id
JOIN employee ON hotels.id = employee.id
GROUP BY name_hotel;

SELECT first_name, last_name, salary
FROM employee
ORDER BY salary;

SELECT email, price
FROM client
JOIN reservation ON client.id = reservation.id
JOIN room ON reservation.id = room.id
ORDER BY price;

SELECT AVG(price) FROM service;

SELECT SUM(salary) FROM employee;

SELECT description, AVG(price) FROM service WHERE category = 'Relaxation' group by description ;

SELECT first_name , AVG(salary) FROM employee WHERE job = 'Housekeeper' group by first_name  ;

SELECT email, arrival_date, date_of_departure , SUM(budget) FROM client group by id ;

SELECT email, arrival_date, date_of_departure , AVG(number_of_people) FROM client WHERE budget > 1000 group by id;