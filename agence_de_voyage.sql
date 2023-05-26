/* Inserting data into Autocars table */
INSERT INTO Autocars (type, emplacement)
VALUES
  ('Mercedes-Benz', 50),
  ('Iveco', 40),
  ('Volvo', 55),
  ('MAN', 48),
  ('Scania', 52),
  ('Setra', 45),
  ('Renault', 38),
  ('Neoplan', 42),
  ('Van Hool', 50),
  ('Temsa', 44);

/* Inserting data into Pays table */
INSERT INTO Pays (pays)
VALUES
('France'),
('Spain'),
('Italy'),
('Portugal'),
('Germany'),
('Greece'),
('Croatia'),
('Belgium'),
('Netherlands'),
('Switzerland');

/* Inserting data into Pension table */
INSERT INTO Pension (pension)
VALUES
('All-inclusive'),
('Half-board'),
('Full-board'),
('Bed and breakfast'),
('Room only'),
('Self-catering'),
('Ultra All-inclusive'),
('Cruise'),
('No meals'),
('Breakfast only');

/* Inserting data into Type_de_voyage table */
INSERT INTO Type_de_voyage (id_typevoyage, type_vyg)
VALUES
('SEA', 'Sea'),
('SUN', 'Sun'),
('CTY', 'City'),
('DIS', 'Discovery'),
('MOT', 'Mountain'),
('SPA', 'Spa'),
('HON', 'Honeymoon'),
('ADV', 'Adventure'),
('CUL', 'Cultural'),
('FAM', 'Family');

/* Inserting data into Supplement table */
INSERT INTO Supplement (chambre, assurance)
VALUES
('Single room', 'Travel insurance'),
('Double room', 'Cancellation insurance'),
('Triple room', 'Medical insurance'),
('Quadruple room', 'Baggage insurance'),
('Suite', 'Car rental insurance'),
('No supplement', 'No insurance'),
('Extra bed', 'Personal liability insurance'),
('Baby cot', 'Pet insurance'),
('No supplement', 'No insurance'),
('No supplement', 'No insurance');

/* Inserting data into Voyage table */
INSERT INTO Voyage (categorie, point_de_depart, dt, sejour, periode, id_typevoyage, id_pays)
VALUES
('Cruise', 'Marseille', '2023-05-01', '10 days', 'Spring', 'SEA', 2),
('Mountain', 'Chamonix', '2023-06-15', '7 days', 'Summer', 'MOT', 1),
('City break', 'Paris', '2023-07-01', '3 days', 'Summer', 'CTY', 1),
('Discovery', 'Athens', '2023-08-10', '14 days', 'Summer', 'DIS', 6),
('Sun', 'Albufeira', '2023-09-01', '10 days', 'Autumn', 'SUN', 4),
('Sea', 'Dubrovnik', '2023-10-05', '7 days', 'Autumn', 'SEA', 7),
('Cultural', 'Rome', '2024-01-15', '4 days', 'Winter', 'CUL', 3),
('Spa', 'Baden-Baden', '2024-02-15', '5 days', 'Winter', 'SPA', 5),
('Family', 'Amsterdam', '2024-04-01', '7 days', 'Spring', 'FAM', 9);

/*Inserting data into Voyage table*/
INSERT INTO Programmations (dt, id_voyage)
VALUES
  ('2023-05-01', 1),
  ('2023-06-15', 2),
  ('2023-07-01', 3),
  ('2023-08-10', 4),
  ('2023-09-01', 5),
  ('2023-10-05', 6),
  ('2024-01-15', 7),
  ('2024-02-15', 8),
  ('2024-04-01', 9);

/*Inserting data into Region table*/
INSERT INTO Region (region)
VALUES
  ('Tanger-Tétouan-Al Hoceïma'),
  ('Oriental'),
  ('Fès-Meknès'),
  ('Rabat-Salé-Kénitra'),
  ('Béni Mellal-Khénifra'),
  ('Casablanca-Settat'),
  ('Marrakech-Safi'),
  ('Drâa-Tafilalet'),
  ('Souss-Massa'),
  ('Guelmim-Oued Noun'),
  ('Laâyoune-Sakia El Hamra'),
  ('Dakhla-Oued Ed-Dahab');

  /*Inserting data into Departement table*/
INSERT INTO Departement (departement)
VALUES
  ('Tanger-Assilah'),
  ('Tétouan'),
  ('Al Hoceïma'),
  ('Oujda-Angad'),
  ('Nador'),
  ('Fès'),
  ('Meknès'),
  ('Rabat'),
  ('Salé'),
  ('Kénitra'),
  ('Beni Mellal'),
  ('Khénifra'),
  ('Casablanca'),
  ('Mohammadia'),
  ('El Jadida'),
  ('Settat'),
  ('Marrakech'),
  ('Essaouira'),
  ('Dakhla');

/*Inserting data into Ville table*/
INSERT INTO Ville (id_voyage, nom)
VALUES
  (1, 'Marseille'),
  (2, 'Chamonix'),
  (3, 'Paris'),
  (4, 'Athens'),
  (5, 'Albufeira'),
  (6, 'Dubrovnik'),
  (7, 'Rome'),
  (8, 'Baden-Baden'),
  (9, 'Amsterdam');

/*Inserting data into Client table*/
INSERT INTO Client (Nom, prenom, adresse, email, tel)
VALUES
  ('Benali', 'Karim', '123 Rue Mohammed V, Casablanca', 'karim.benali@gmail.com', '+212612345678'),
  ('El Mansouri', 'Leila', '456 Avenue Hassan II, Rabat', 'leila.elmansouri@gmail.com', '+212623456789'),
  ('Chaoui', 'Youssef', '789 Boulevard Mohammed VI, Marrakech', 'youssef.chaoui@gmail.com', '+212634567890'),
  ('Hassani', 'Lina', '321 Rue Mohammed VI, Fes', 'lina.hassani@gmail.com', '+212645678901'),
  ('El Amiri', 'Sara', '654 Avenue Hassan II, Tangier', 'sara.elamiri@gmail.com', '+212656789012'),
  ('Mahmoudi', 'Ali', '987 Boulevard Hassan II, Agadir', 'ali.mahmoudi@gmail.com', '+212667890123'),
  ('Bennani', 'Nour', '321 Avenue Mohammed VI, Essaouira', 'nour.bennani@gmail.com', '+212678901234'),
  ('El Kaddouri', 'Omar', '456 Rue Mohammed V, Meknes', 'omar.elkaddouri@gmail.com', '+212689012345'),
  ('Khalil', 'Hiba', '987 Boulevard Mohammed VI, Tetouan', 'hiba.khalil@gmail.com', '+212690123456'),
  ('El Azzouzi', 'Amir', '654 Avenue Hassan II, Oujda', 'amir.elazzouzi@gmail.com', '+212701234567');

/*Inserting data into Hotel table*/
INSERT INTO Hotel (nom_hotel)
VALUES
  ('Hôtel de Paris'),
  ('Riad Laaroussa'),
  ('Four Seasons Hotel Casablanca'),
  ('Marrakech Riad'),
  ('Palais Amani'),
  ('La Sultana Marrakech'),
  ('Riad Fes Maya Suite & Spa'),
  ('Dar Seven'),
  ('Hotel Sahrai'),
  ('Sofitel Rabat Jardin des Roses');

INSERT INTO Reservation (annulation_assu, chmbr_supp, nbr_passager, id_supp, id_prg, id_client)
VALUES
  ('Cancellation insurance', 'Double room', '2', 1, 1, 1),
  ('No insurance', 'No supplement', '1', 2, 2, 2),
  ('Travel insurance', 'Single room', '1', 3, 3, 3),
  ('Cancellation insurance', 'Extra bed', '2', 4, 4, 4),
  ('No insurance', 'No supplement', '1', 5, 5, 5),
  ('Travel insurance', 'Triple room', '3', 6, 6, 6),
  ('Cancellation insurance', 'Double room', '2', 7, 7, 7),
  ('No insurance', 'No supplement', '1', 8, 8, 8),
  ('Travel insurance', 'Single room', '1', 9, 9, 9);

  INSERT INTO Passager (nom, prenom, adresse, email, tel, id_reservation)
VALUES
  ('Zouhairi', 'Fatima', '123 Rue A', 'fatima.zouhairi@example.com', '0612345678', 21),
  ('El Amrani', 'Ahmed', '456 Rue B', 'ahmed.elamrani@example.com', '0698765432', 22),
  ('Bennani', 'Hassan', '789 Rue C', 'hassan.bennani@example.com', '0645612378', 23),
  ('Lamrini', 'Sanaa', '321 Rue D', 'sanaa.lamrini@example.com', '0698945612', 24),
  ('El Moutawakil', 'Karim', '654 Rue E', 'karim.elmoutawakil@example.com', '0612398765', 25),
  ('Ait Said', 'Nadia', '987 Rue F', 'nadia.aitsaid@example.com', '0698754321', 26),
  ('Haddad', 'Youssef', '147 Rue G', 'youssef.haddad@example.com', '0698765432', 27),
  ('Tazi', 'Leila', '258 Rue H', 'leila.tazi@example.com', '0612345678', 28),
  ('Rahmouni', 'Mounir', '369 Rue I', 'mounir.rahmouni@example.com', '0698945612', 29),
  ('Chami', 'Lina', '753 Rue J', 'lina.chami@example.com', '0612398765', 21);

INSERT INTO affecter (id_voyage, id_hotel)
VALUES
  (1, 1),
  (2, 2),
  (3, 3),
  (4, 4),
  (5, 5),
  (6, 6),
  (7, 7),
  (8, 8),
  (9, 9);

  INSERT INTO Monter (id_passager, id_autocar)
VALUES
  (11, 1),
  (12, 2),
  (13, 3),
  (14, 4),
  (15, 5),
  (16, 6),
  (17, 7),
  (18, 8),
  (19, 9),
  (20, 10);

/*Jointure entre les tables Reservation et Client*/
SELECT Reservation.*, Client.Nom, Client.prenom
FROM Reservation
INNER JOIN Client ON Reservation.id_client = Client.id_client;

/*Jointure entre les tables Voyage, Programmations et Pays*/
SELECT Voyage.*, Programmations.dt, Pays.pays
FROM Voyage
INNER JOIN Programmations ON Voyage.id_voyage = Programmations.id_voyage
INNER JOIN Pays ON Voyage.id_pays = Pays.id_pays;


