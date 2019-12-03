

Insert into quizz VALUES (1,'Requetes simple');
Insert into exercices VALUES (1,'Ecrire une requete pour selectionner toutes les specialités', 5, 'SELECT * FROM specialite', 1 );

Insert into exercices VALUES (2,'Ecrire une requete pour selectionner les spécialités dont le dégré est supérieur à 10', 5, 'SELECT * FROM specialite WHERE degree > 10', 1 );

Insert into tests VALUES (1,'CREATE TABLE specialite (id integer primary key auto_increment, nom_specialite varchar(100), degree integer)',1);


## CORRECTION AKANJI

Insert into quizz (nom) 
  VALUES ('Requètes simples');


Insert into exercices (enonce, note, sql_reponse, id_quizz) 
  VALUES ('Ecrire une requete pour selectionner toutes les specialités', 5, 'SELECT * FROM specialite;', 1 );

Insert into exercices (enonce, note, sql_reponse, id_quizz) 
  VALUES ('Ecrire une requete pour selectionner les spécialités dont le dégré (Colone "degree") est supérieur à 10', 5, 'SELECT * FROM specialite WHERE degree > 10;', 1 );


Insert into tests (table_sql, id_exercice) 
  VALUES ('CREATE TABLE specialite (id integer primary key auto_increment, nom_specialite varchar(100), degree integer);',1);

##  mxchx


insert into quizz(nom) value('Requetes simple');

insert into exercices (enonce,note,sql_reponse,id_quizz) values("calcul le nombre de personne inscrit au cour de l'annee 2019 ",10,"select count(*) from inscrit where annee = 2019 ;",1);

insert into Tests(table_sql,id_exercice) values ("create table inscrit (
  id int auto_increment primary key,
  nom varchar(50),
  prenom varchar(50),
  ville varchar(50),
  annee int(20)
    );",1)


## CORRECTION ERIC ALIAS El-Professor

-- Insert quizz
## INSERT INTO quizz(nom) VALUES('Requete simple');

## INSERT INTO quizz(nom) VALUES('Requete complexe');

-- Insert exercices
## INSERT INTO exercices(enonce, note, sql_reponse, id_quizz) VALUES('selectionne le nom des utiliateurs dont le prenom se termine par la lettre "o"', 11, 'SELECT users.nom FROM users WHERE users.prenom like "%o";', 1);

## INSERT INTO exercices(enonce, note, sql_reponse, id_quizz) VALUES('Selectionne le nom, le prenom des utilisateurs inscrit en spécialité BD ayant une note supérieur à 15 ordonnée par note décroissante', 20, 'SELECT users.nom, users.prenom, specialites.nom, exercices.note FROM users, specialites, quizz, exercices WHERE users.id = specialites.id AND quizz.id = exercices.id AND specialites.nom = "BD" AND exercices.note > 15 ORDER BY note DESC; create table quizz(id int auto_increment, nom varchar(50), primary key(id); create table exercices(id int auto_increment, enonce text, note int, sql_reponse text, id_quizz int, primary key(id), foreign key(id_quizz) references quizz(id);', 2);

-- Insert tests
## INSERT INTO tests(table_sql, id_exercice) VALUES('create table users(id int auto_increment, nom varchar(10), prenom varchar(30), id_spec int, primary key(id));', 1);

## INSERT INTO tests(table_sql, id_exercice) VALUES('create table specialites(id int auto_increment, nom varchar(100), primary key(id)); create table users(id int auto_increment, nom varchar(10), prenom varchar(30), id_spec int, primary key(id), foreign key(id_spec) references specialites(id));', 2);

-- Insert specialites
## INSERT INTO specialites(nom) VALUES('JavaScript');

## INSERT INTO specialites(nom) VALUES('BD');

## INSERT INTO specialites(nom) VALUES('Xamarin');

## INSERT INTO specialites(nom) VALUES('Flutter');

## INSERT INTO specialites(nom) VALUES('Réseau');

-- Insert users
## INSERT INTO users(nom, prenom, id_spec) VALUES('Bill', 'Gates', 1);

## INSERT INTO users(nom, prenom, id_spec) VALUES('Steve', 'Jobs', 2);

## INSERT INTO users(nom, prenom, id_spec) VALUES('Didier', 'Drogba', 3);

## INSERT INTO users(nom, prenom, id_spec) VALUES('Samuel', 'Etoo', 4);

## INSERT INTO users(nom, prenom, id_spec) VALUES('Cristiano', 'Ronaldo', 5);
