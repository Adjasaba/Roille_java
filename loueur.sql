-- Active: 1694607739608@@127.0.0.1@3306
drop database if exists loueur;
create database loueur;
use loueur;

create table proprietaire
	(  
	CODEP VARCHAR(5) Not null ,
	PSEUDO VARCHAR(15) Null ,
	EMAIL VARCHAR(60) Null ,
	VILLE VARCHAR (25) Null ,
	ANNEEI INTEGER NULL ,
	PRIMARY KEY (CODEP)
	);


	CREATE TABLE VOITURE
(
IMMAT VARCHAR(25) NOT NULL ,
MODELE VARCHAR(25) NULL ,
MARQUE VARCHAR (25) Null ,
CATEGORIE VARCHAR (10) NULL ,
COULEUR ENUM('blanc','rouge','vert','noir','violet','bleu'),
PLACES INTEGER NULL,
constraint CHK_NBP CHECK ( PLACES <= 6),
ACHATA INTEGER NULL,
COMPTEUR INTEGER NULL ,
PRIXJ DECIMAL(8,2) NULL,
CODEP VARCHAR (5) NOT NULL,
PRIMARY KEY (IMMAT)
 );

CREATE TABLE CLIENT 
(
CODEC VARCHAR (4) NOT NULL,
NOM VARCHAR(25) Not NULL ,
PRENOM VARCHAR(25) ,
AGE INTEGER NOT NULL ,
PERMIS VARCHAR(5) NULL,
ADRESSE VARCHAR (70) NULL ,
VILLE VARCHAR (25) NULL ,
PRIMARY KEY (CODEC)
);

CREATE TABLE IF NOT EXISTS LOCATION 
(
CODEC VARCHAR (4) NOT NULL ,
IMMAT VARCHAR (25) NOT NULL ,
ANNEE INTEGER NOT NULL ,
MOIS INTEGER NOT NULL,
NUMLOC INTEGER NOT NULL,
KM INTEGER NULL,
DUREE INTEGER NULL,
VILLED VARCHAR (25) NULL,
VILLEA VARCHAR(25) NULL,
DATED DATE NULL ,
DATEF DATE NULL,
PRIMARY KEY (IMMAT,CODEC,ANNEE,MOIS)
);

ALTER TABLE VOITURE
ADD FOREIGN KEY FK_VOITURE_PROPRIETAIRE (CODEP)
  REFERENCES PROPRIETAIRE (CODEP) ;

  ALTER TABLE LOCATION
  ADD FOREIGN KEY FK_LOCATION_VOITURE (IMMAT)
  REFERENCES VOITURE (IMMAT) ;

  ALTER TABLE LOCATION 
  ADD FOREIGN KEY FK_LOCATION_CLIENT (CODEC)
  REFERENCES CLIENT (CODEC) ; 

INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C654', 'Juniot', 'Gérard', 45, '2348653', 'rue du colisée', 'Paris');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C655', 'Delon', 'Alain', 37, '5672821', 'rue des tuiles', 'Nantes');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C656', 'Auteuil', 'Daniel', 53, '757665', 'rue des plantes', 'Lyon');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C657', 'Gabin', 'Jean', 67, '34567', 'rue Descartes', 'Lyon');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C658', 'Reno', 'Jean', 55, '2348653', 'rue leonard', 'Paris');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C659', 'Delon', 'Gerard', 67, null, 'rue internationale', 'Nantes');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C660', 'Depardieu','Gerard', 52, '757665', 'rue Hollande', 'Lyon');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C661', 'Depardieu', 'Philippe', 47, '34567', 'rue grande', 'Lyon');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C662', 'Depardieu', 'Julie', 25, '2348653', 'rue des ours', 'Lyon');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C663', 'Dujardin', 'Jean-claude', 40, null, 'rue aux ours', 'Nantes');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C664', 'Boon', null, 42, '757665', 'rue des tulipes', 'Marseille');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C665', 'Willis', 'Bruce', 47, '34567', 'rue de Gaulle', 'Marseille');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C666', 'Cassel', 'Vincent', 45, '2348653', 'rue Vinci', 'Paris');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C667', 'Charlot', null, 77, '5672821', 'rue du fond','Nantes');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C668', 'Canet', 'Guillaume', 33, '757665', 'rue Verte', 'Lyon');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C669', 'Richard', 'Pierre', 53, '34567', 'rue Fermat', 'Lyon');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C670', 'Canet', 'Jean-Paul', 33, '75235', 'rue de la daurade', 'Marseille');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C671', 'Premier', 'Jean-Pierre', 63, '34354', 'rue Saint-Pierre', 'Vatican');
INSERT INTO `loueur`.`client` (`codeC`, `nom`, `prenom`, `age`, `permis`, `adresse`, `ville`) VALUES ('C672', 'Richard', NULL, 57, '346767', 'rue des amis', 'Lyon');

 

-- (13) insertion dans la table proprietaire
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P75', 'Lucien', 'L67@gmail.com', 'Montreuil', '2005');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P89', 'Marcel', 'bozo@gmail.com', 'Lyon', '2010');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P12', 'Jules', 'juju@hotmai.com', 'Paris', '2014');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P37', 'Georges', 'gigi@', 'Neuilly', '2015');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P14', 'Fred', null, 'Paris', '2008');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P23', 'Germain', 'Gi67@gmail.com', 'Nantes', '2011');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P44', 'Antoine', 'optic2000@hotmai.com', 'Marseille', '2014');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P61', 'Fernand', 'raynaud@', 'Neuilly', '2013');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P74', 'Emile', 'L67@gmail.com', 'Nantes', '2012');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P99', 'Marcel',null, 'Paris', '2010');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P19', 'Christian', 'juju@hotmai.com', 'Paris', '2013');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P35', 'Serge', 'gigi@', 'Neuilly', '2011');
INSERT INTO `loueur`.`proprietaire` (`codeP`, `pseudo`, `email`, `ville`, `anneeI`) VALUES ('P92', 'Marcel', 'marcou@gmail.com', 'Nantes', '2010');

 

-- (20) insertion dans la table voiture
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`,`prixJ`, `codeP`) VALUES ('75AZ92', '205', 'Peugeot', 'cabriolet', 'blanc', 2, '2010', 17560, 30, 'P75');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`,`prixJ`, `codeP`) VALUES ('42RS75', 'megane', 'Renault', 'premium', 'vert', 4, '2010', 4563, 30, 'P89');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`,`prixJ`, `codeP`) VALUES ('56AA46', 'C4', 'Citroen', 'familiale', 'blanc', 6, '2000', 8654, 30, 'P12');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`,`prixJ`, `codeP`) VALUES ('11TR62', 'Clio', 'Renault', 'luxe', 'rouge', 2, '1998', 87230, 30, 'P75');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('71BB37', 'C4', 'Citroen', 'familiale', 'noir', 4, '2012', 1258, 30,'P37');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('69AZ92', '205', 'Peugeot', 'berline', 'blanc', 2, '2010', 2987, 30,'P75');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`,`prixJ`, `codeP`) VALUES ('32RS75', '306', 'Peugeot', 'cabriolet', 'vert', 4, '2010', 4533, 30, 'P61');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('90AA46', '508', 'Peugeot', 'familiale', 'blanc', 6, '2000', 7654, 30, 'P14');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('23TR62', '404', 'Peugeot', 'premium', 'rouge', 2, '1998', 8720, 30,'P99');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('75BB37', 'Twingo', 'Renault', 'citadine', 'noir', 4, '2011', 9858, 30,'P99');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('87AZ92', 'Zoe', 'Renault', 'citadine', 'blanc', 2, '2010', 37520, 30,'P75');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('11RS75', 'Twingo', 'Renault', 'premium', 'vert', 4, '2009', 8563, 30,'P44');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('23AA46', 'Espace', 'Renault', 'familiale', 'blanc', 6, '2014', 8333, 30,'P19');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('11FG62', 'Clio', 'Renault', 'luxe', 'rouge', 2, '1998', 81230, 30,'P19');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('71RT37', 'F530', 'Ferrari', 'cabriolet', 'rouge', 2, '2013', 2358, 30,'P23');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('42RL75', 'T550', 'Ferrari', 'cabriolet', 'vert', 2, '2013', 46563, 30,'P89');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('56ER46', 'model S', 'Tesla', 'berline', 'blanc', 4, '2015', 854, 30,'P35');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('11UI62', 'Clio', 'Renault', 'luxe', 'rouge', 2, '2005', 4536, 30,'P23');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`, `prixJ`,`codeP`) VALUES ('71PO37', 'Caravan', 'Dodge', 'familiale', 'blanc', 7, '2012', 234258, 30,'P61');
INSERT INTO `loueur`.`voiture` (`immat`, `modele`, `marque`, `categorie`, `couleur`, `places`, `achatA`, `compteur`,`prixJ`, `codeP`) VALUES ('39YC59', 'C35', 'Citroen', 'utilitaire', 'blanc', '2', '2002', '67980', 42,'P61');

 

-- (9) insertion dans la table location
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C654', '75AZ92', '2015', '4', 'A-125', 70, 3, 'Montreuil', 'Montreuil', 0000-00, 0000-00);
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C655', '42RL75', '2015', '4', 'A-126', 678, 7, 'Lyon', 'lyon', 0000-00, 0000-00);
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C656', '56AA46', '2015', '4', 'B-236', 59, 1, 'Paris', 'Paris', 0000-00, 0000-00);
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C657', '11TR62', '2015', '4', 'B-237', 125, 2, 'Montreuil', 'Montreuil', 0000-00, 0000-00);
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C656', '42RL75', '2015', '4', 'C-45', 253, 4, 'Lyon', 'Lyon', 0000-00, 0000-00);
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C655', '71BB37', '2015', '4', 'C-34', 86, 3, 'Neuilly', 'Neuilly', 0000-00, 0000-00);
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C664', '75AZ92', '2017', '2', 'C-35', 386, 8, 'Courbevoie', 'Neuilly', 0000-00, 0000-00);
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C662', '71BB37', '2015', '5', 'C-36', 816, 8, 'Neuilly', 'Neuilly', 0000-00, 0000-00);
INSERT INTO `loueur`.`location` (`codeC`, `immat`, `annee`, `mois`, `numLoc`, `km`,`duree`, `villeD`, `villeA`,`dateD`,`dateF`) VALUES ('C669', '75AZ92', '2016', '5', 'C-37', 45, 2, 'Paris', 'Lyon', 0000-00, 0000-00);

 
Realiser un trigger  qui permet avant  d' inserer ou de modifer 
sur la table location de verifier a chaque location 
que l'annee de  location n'est pas superieur de 6 ans
par rapport a lannee d'achat ;

drop TRIGGER if exists verif_location;
DELIMITER $
CREATE Trigger verif_location
before insert on location 
for each row 

begin
declare  x INT;
select achata int  x
from voiture 
where immat=new.immat ;
if new.annee - x > 6
THEN
signal sqlstate '45000'
set MESSAGE_TEXT ='le vehicule n''est pas loué';
end if;
end $
DELIMITER ;

Test 


drop TRIGGER if exists verifupdate;
DELIMITER $
CREATE Trigger verif_location
before insert on location 
for each row 

begin
declare  x INT;
select achata int  x
from voiture 
where immat=new.immat ;
if new.annee - x > 6
THEN
signal sqlstate '45000'
set MESSAGE_TEXT ='le vehicule n''est pas loué';
end if;
end $
DELIMITER ;

test 
update location
set annee=2023
where immat='75AZ92' ;
réaliser une fonction qui permet de nous retourner le nbre total vehicule loué lors de la saisie du code CLIENT

drop Function if exists nblocclient;
DELIMITER $
create function nblocclient(numclt varchar(4))
returns INT
begin
declare x int ;
select count(immat) into x
from location
where codec =numclt;
returns(x)
end $
DELIMITER ;

pour executer
SELECT  nblocclient ('C654');
SELECT nblocclient ('C656');

en utilisant la fonction afficher tous les clients avec le nombre de location pour chacun d eux;
drop FUNCTION if exists nblocclient;
DELIMITER $
nbloc(ici on le met pour renommer sinon ca aurait afficher le nom de la fonction)
select * ,  nblocclient(codec) nbloc from client;

select *,nblocclient(codec) from client
where nblocclient(codec)=(select min (nblocclient(codec))from client);

realiser un trigger qui permet d interdir la suppression des proprietaires qui possèdent plus de trois voitures
drop TRIGGER if EXISTS supproprio;
DELIMITER $
CREATE trigger delete_proprio
before delete on proprietaire
for each row begin