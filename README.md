# GDD-Aberwag-Partiel

# GDD-Aberwag-Partiel

J'ai choisi d'utiliser une base de donnees telle que celle-ci pour plusieurs raisons. Tout d'abord, elle permet de stocker et d'organiser de grandes quantites de donnees de maniere efficace et structuree. De plus, elle offre des fonctionnalites de recherche et d'analyse avancees qui facilitent la recuperation et l'utilisation des informations stockees. Enfin, les bases de donnees peuvent etre facilement partagees et mises e jour par plusieurs utilisateurs, ce qui les rend ideales pour les projets en equipe ou les entreprises. Et donc e l'aide des donnees que j'ai injecte dans la base de donnees destinee e la chaine d'hetel "TheHotels" 

Voici les demarches detaillees que jeai suivi pour la creation de la base de donnees pour la chaene TheHotels :

    Definir des objectifs : jeai determine les besoins en termes de stockage et d'analyse des donnees liees e la chaene d'hetels, tels que la gestion des reservations, des clients et des informations sur les hetels. Et pour les determiner rien de sorcier leiteration est la cle, e force de repeter les objectifs nous arrivons e un objectif concret.

    Analyse des donnees : jeidentifie les differents types de donnees necessaires pour atteindre les objectifs definis, tels que les informations sur les clients, les reservations, les services, les chambres, les factures et les employes. Le but de leanalyse ceest deavoir le plus deinformations possible que ce soit sur les clients, les chambres, les employees il faut vraiment remplir la base de donnees avec le plus de donnees.

    Conception de la base de donnees :Pour creer une architecture de base de donnees efficace jeutilise un modele de donnees relationnel, qui permet de lier les differentes tables en fonction de leur relation logique. Ainsi la conception de bases de donnees devient plus simple et plus explicites que si nous leavions juste fais sans modele.

    Choix du SGBD : Decider quel systeme de gestion de base de donnees utiliser, en fonction de la taille de la base de donnees, des fonctionnalites necessaires et de la facilite d'utilisation. Pour ma part jeai utilise PostgreSQL car jeai un peu plus de facilite avec ce SGBD donc qui dit aisance dit pouvoir pousser le travail plus loin et plus efficacement 

    Mise en place de la base de donnees : jeai cree la structure de la base de donnees en utilisant des outils appropries, tels que les scripts SQL pour la creation de tables, leinsertion de donnees, les jointures et les requetes SQL.

    Stockage des donnees jeai importe les donnees necessaires dans la base de donnees et s'assurer qu'elles sont organisees de maniere coherente, afin deavoir une base de donnees epure et pouvant tenir une chaine dehetel.

    Tests et optimisation : Tester la base de donnees pour s'assurer de son bon fonctionnement et optimiser les performances en utilisant des requetes et mise en situation.

Justification des choix :

    Modele de donnees relationnel : jeai choisi ce modele pour sa capacite e lier les differentes tables en fonction de leur relation logique, ce qui facilite la recuperation et l'analyse des donnees.

    Choix de PostgreSQL : jeai choisi PostgreSQL pour sa flexibilite, sa facilite d'utilisation et sa grande communaute d'utilisateurs, ce qui facilite la resolution de problemes eventuels et le fait que jeutilise assez souvent cette base de donnees mea aide pour mon choix.

Queries docse:

Crée des tables et ajouter de la données:

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
	type_room VARCHAR(255) NOT NULL,
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

INSERT INTO room (id, availablity, type_room, price, stage, bath, shower, wc, bed)
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


afficher la table billing et reservation:

SELECT * 
FROM billing 
JOIN reservation 
ON billing.id= reservation.id;


le but de cette requete est d'avoir le prix et le service proposé:

SELECT description, SUM(price)
FROM service
GROUP BY description
ORDER BY SUM(price);


celle-ci permet d'avoir le salaire moyen d'un hotel de la chaine:

SELECT name_hotel, AVG(salary)
FROM hotels
JOIN employee ON hotels.id = employee.id
GROUP BY name_hotel;


Cette requête permet de calculer le nombre de chambres et la somme des prix des chambres dans chaque hôtel, en utilisant une jointure entre les tables hotels et room.

SELECT name_hotel, COUNT(room.id), SUM(price)
FROM hotels
JOIN room ON hotels.id = room.id
GROUP BY name_hotel;


Cette requête compte le nombre de clients pour chaque catégorie de chambre et les trie par ordre décroissant.

SELECT stage, COUNT(client.id)
FROM client
JOIN reservation ON client.id = reservation.id
JOIN room ON reservation.id = room.id
GROUP BY stage
ORDER BY COUNT(client.id);


Cette requête regroupe les données de facturation par catégorie et calcule le total pour chaque groupe.

SELECT category, total
FROM billing
JOIN service ON billing.id = service.id
GROUP BY category,total;


Cette requête sert à compter le nombre de chambres et d'employés dans chaque hôtel et à afficher les résultats regroupés par nom d'hôtel.

SELECT name_hotel, COUNT(room.id), COUNT(employee.id)
FROM hotels
JOIN room ON hotels.id = room.id
JOIN employee ON hotels.id = employee.id
GROUP BY name_hotel;


Cette requête récupère le prénom, le nom et le salaire moyen de tous les employés dans la table des employés.

SELECT first_name, last_name, salary
FROM employee
ORDER BY salary;


la requete sert à sélectionner l'adresse électronique et le prix des clients associés à leur réservation de chambre, trié par prix croissant.

SELECT email, price
FROM client
JOIN reservation ON client.id = reservation.id
JOIN room ON reservation.id = room.id
ORDER BY price;


Cette requête récupère le courriel, la date d’arrivée, la date de départ et le nombre moyen de personnes de tous les clients ayant un budget supérieur à 1000 dans la table des clients.

SELECT email, arrival_date, date_of_departure , AVG(number_of_people) FROM client WHERE budget > 1000 group by id;


Cette requête sélectionne l'email, la date d'arrivée, la date de départ et la somme du budget pour chaque client unique (groupé par identifiant) dans la table client. Le résultat est la somme totale de tous les budgets pour chaque client.

SELECT email, arrival_date, date_of_departure , SUM(budget) FROM client group by id ;


La requête renvoie le nom et la moyenne des salaires des employés ayant le poste de "Housekeeper".

SELECT first_name , AVG(salary) FROM employee WHERE job = 'Housekeeper' group by first_name  ;


La requête renvoie la description et la moyenne des prix des services appartenant à la catégorie "Relaxation".

SELECT description, AVG(price) FROM service WHERE category = 'Relaxation' group by description ;


Cette requête permet de sélectionner et d'afficher les informations sur le type de chambre, la disponibilité, le nombre de personnes, l'email et le budget d'un client en reliant les tables "client" et "room" en utilisant l'ID des clients.

SELECT type_room,availablity,number_of_people,email,phone,budget
FROM client
JOIN room 
ON client.id= room.id;