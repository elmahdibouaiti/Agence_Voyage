/* /* Creation de la base de données*/
CREATE DATABASE Agence_Voyage;
/* utilisation de la base de données*/
use Agence_Voyage; 
/* Creation de la table autocar*/
CREATE TABLE Autocars (
  id_autocar INT AUTO_INCREMENT,
  type VARCHAR(50),
  emplacement VARCHAR(50),
  PRIMARY KEY (id_autocar)
) ENGINE=InnoDB;
/* Creation de la table pays*/
CREATE TABLE Pays (
  id_pays INT AUTO_INCREMENT,
  pays VARCHAR(50),
  PRIMARY KEY (id_pays)
) ENGINE=InnoDB;
/* Creation de la table pension*/
CREATE TABLE Pension (
  id_pension INT AUTO_INCREMENT,
  pension VARCHAR(50),
  PRIMARY KEY (id_pension)
) ENGINE=InnoDB;
/* Creation de la table type de voyage*/
CREATE TABLE Type_de_voyage (
  id_typevoyage VARCHAR(50),
  type_vyg VARCHAR(50),
  PRIMARY KEY (id_typevoyage)
) ENGINE=InnoDB;
/* Creation de la table supplement*/
CREATE TABLE Supplement (
  id_supp INT AUTO_INCREMENT,
  chambre VARCHAR(50),
  assurance VARCHAR(50),
  PRIMARY KEY (id_supp)
) ENGINE=InnoDB;
/* Creation de la table voyage*/
CREATE TABLE Voyage (
  id_voyage INT AUTO_INCREMENT,
  categorie VARCHAR(50),
  point_de_depart VARCHAR(50),
  dt VARCHAR(50),
  sejour VARCHAR(50),
  periode VARCHAR(50),
  id_typevoyage VARCHAR(50),
  id_pays INT,
  PRIMARY KEY (id_voyage),
  FOREIGN KEY (id_typevoyage) REFERENCES Type_de_voyage(id_typevoyage),
  FOREIGN KEY (id_pays) REFERENCES Pays(id_pays)
) ENGINE=InnoDB;
/* Creation de la table programmation*/
CREATE TABLE Programmations (
  id_prg INT AUTO_INCREMENT,
  dt VARCHAR(50),
  id_voyage INT,
  PRIMARY KEY (id_prg),
  FOREIGN KEY (id_voyage) REFERENCES Voyage(id_voyage)
) ENGINE=InnoDB;
/* Creation de la table region*/
CREATE TABLE Region (
  id_region INT AUTO_INCREMENT,
  region VARCHAR(50),
  PRIMARY KEY (id_region)
) ENGINE=InnoDB;
/* Creation de la table depart*/
CREATE TABLE Depart (
  id_dep INT AUTO_INCREMENT,
  adresse VARCHAR(50),
  id_voyage INT,
  PRIMARY KEY (id_dep),
  FOREIGN KEY (id_voyage) REFERENCES Voyage(id_voyage)
) ENGINE=InnoDB;
/* Creation de la table departement*/
CREATE TABLE Departement (
  id_dept INT AUTO_INCREMENT,
  departement VARCHAR(50),
  PRIMARY KEY (id_dept)
) ENGINE=InnoDB;
/* Creation de la table ville*/
CREATE TABLE Ville (
  id_ville INT AUTO_INCREMENT,
  id_voyage INT,
  nom VARCHAR(50),
  PRIMARY KEY (id_ville),
  FOREIGN KEY (id_voyage) REFERENCES Voyage(id_voyage)
) ENGINE=InnoDB;
/* Creation de la table client*/
CREATE TABLE Client (
  id_client INT AUTO_INCREMENT,
  Nom VARCHAR(50),
  prenom VARCHAR(50),
  adresse VARCHAR(50),
  email VARCHAR(50),
  tel VARCHAR(50),
  PRIMARY KEY (id_client)
) ENGINE=InnoDB;
/* Creation de la table hotel*/
CREATE TABLE Hotel (
  id_hotel INT AUTO_INCREMENT,
  nom_hotel VARCHAR(50),
  PRIMARY KEY (id_hotel)
) ENGINE=InnoDB;
/* Creation de la table reservation*/
CREATE TABLE Reservation (
  id_reservation INT AUTO_INCREMENT,
  annulation_assu VARCHAR(50),
  chmbr_supp VARCHAR(50),
  nbr_passager VARCHAR(50),
  id_supp INT,
  id_prg INT,
  id_client INT,
  PRIMARY KEY (id_reservation),
  FOREIGN KEY (id_supp) REFERENCES Supplement(id_supp),
  FOREIGN KEY (id_prg) REFERENCES Programmations(id_prg),
  FOREIGN KEY (id_client) REFERENCES Client(id_client)
) ENGINE=InnoDB;
/* Creation de la table passager*/
CREATE TABLE Passager (
  id_passager INT AUTO_INCREMENT,
  nom VARCHAR(50),
  prenom VARCHAR(50),
  adresse VARCHAR(50),
  email VARCHAR(50),
  tel VARCHAR(50),
  id_reservation INT,
  PRIMARY KEY (id_passager),
  FOREIGN KEY (id_reservation) REFERENCES Reservation(id_reservation)
) ENGINE=InnoDB;
/* Creation de la table affecter*/
CREATE TABLE affecter (
  id_voyage INT,
  id_hotel INT,
  FOREIGN KEY (id_voyage) REFERENCES Voyage(id_voyage),
  FOREIGN KEY (id_hotel) REFERENCES Hotel(id_hotel)
) ENGINE=InnoDB;
/* Creation de la table Monter*/
CREATE TABLE Monter (
  id_passager INT,
  id_autocar INT,
  FOREIGN KEY (id_passager) REFERENCES Passager(id_passager),
  FOREIGN KEY (id_autocar) REFERENCES Autocars(id_autocar)
) ENGINE=InnoDB;