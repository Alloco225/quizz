## CORRECTION AKANJI

Insert into quizz(nom) 
  VALUES ('Requètes simples');


Insert into exercices(enonce, note, sql_reponse, id_quizz) 
  VALUES ('Ecrire une requete pour selectionner toutes les specialités', 5, 'SELECT * FROM specialite;', 1 );

Insert into exercices(enonce, note, sql_reponse, id_quizz) 
  VALUES ('Ecrire une requete pour selectionner les spécialités dont le dégré (Colone "degree") est supérieur à 10', 5, 'SELECT * FROM specialite WHERE degree > 10;', 1 );


Insert into tests(table_sql, id_exercice) 
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
    
## WONDJA

Insert into tests (table_sql, id_exercice) 
  VALUES ('CREATE TABLE specialite (id integer primary key auto_increment, nom_specialite varchar(100), degree integer);',1);




##Dembele  Boukaro Adama
-- Quizz
create table quizz(
  id int auto_increment,
  nom varchar(50),
  primary key(id)
);

-- Exercices
create table exercices(
  id int auto_increment,
  enonce text,
  note int,
  sql_reponse text,
  id_quizz int,
  primary key(id),
  foreign key(id_quizz) references quizz(id)
);

-- Tests
create table tests(
  id int auto_increment,
  table_sql text,
  id_exercice int,
  primary key(id),
  foreign key(id_exercice) references exercices(id)
);
-- etudiants
create table etudiants(
  id int auto_increment,
  nom varchar(55),
  prenom varchar(55),
  sexe varchar(1),
  age int,
);

-- quizz
insert into quizz(nom) values('quiz sur les etudiants');

-- exercices 
insert into exercices(enonce, note, sql_reponse,id_quizz) 
values('selection les noms de toutes les filles',
       5,'SELECT nom FROM etudiants WHERE sexe=F',
       1);
       
insert into exercices(enonce, note, sql_reponse,id_quizz)
values('selection les noms de toutes les filles dont leurs age est superieur a 20',
       5,'SELECT nom FROM etudiants WHERE sexe=F AND age>20',
       1);
       
-- tests

insert into tests(table_sql, id_exercice)
values('etudiants',1);
insert into tests(table_sql, id_exercice)
values('vols',2);

-- etudiant insert
insert into etudiants(nom, prenom, sexe, age) values('konan','kouakou','M',22);
insert into etudiants(nom, prenom, sexe, age) values('kone','Ami','F',21);
insert into etudiants(nom, prenom, sexe, age) values('kouame','Amena','F',19);
=======
-- Insert quizz

INSERT INTO quizz(nom) VALUES('Requete simple');

INSERT INTO quizz(nom) VALUES('Requete complexe');

-- Exercices
INSERT INTO exercices(enonce, note, sql_reponse, id_quizz) VALUES('selectionner le nombre total des utilisateurs', 12, 'SELECT count(*) FROM users;', 1);

INSERT INTO exercices(enonce, note, sql_reponse, id_quizz) VALUES('Selectionner le nom et le prenom des utilisateurs dont la note est superieurs ou egale à 14 et ordonnée par note décroissante', 15, 'SELECT users.nom, users.prenom FROM users, exercices WHERE users.id = exercices.id AND exercices.note >= 14 ORDER BY note DESC;', 2);

-- Insert tests
INSERT INTO tests(table_sql, id_exercice) VALUES('create table users(id int auto_increment, nom varchar(10), prenom varchar(30), id_spec int, primary key(id));', 1);

INSERT INTO tests(table_sql, id_exercice) VALUES('create table quizz(id int auto_increment, nom varchar(50) primary key(id); create table exercices(id int auto_increment, enonce text, note int, sql_reponse text, id_quizz int, primary key(id), foreign key(id_quizz) references quizz(id)); create table users(id int auto_increment, nom varchar(10), prenom varchar(30), id_spec int, primary key(id), foreign key(id_spec) references specialites(id));', 2);

=======

## CORRECTION ERIC ALIAS El-Professor


-- Insert specialites
INSERT INTO specialites(nom) VALUES('JavaScript');

INSERT INTO specialites(nom) VALUES('BD');

INSERT INTO specialites(nom) VALUES('Xamarin');

INSERT INTO specialites(nom) VALUES('Flutter');

INSERT INTO specialites(nom) VALUES('Réseau');
INSERT INTO specialites(nom) VALUES('JS');

INSERT INTO specialites(nom) VALUES('FRONT');

INSERT INTO specialites(nom) VALUES('PHOTOSHOP');

-- Insert users
INSERT INTO users(nom, prenom, id_spec) VALUES('Bill', 'Gates', 1);

INSERT INTO users(nom, prenom, id_spec) VALUES('Steve', 'Jobs', 2);

INSERT INTO users(nom, prenom, id_spec) VALUES('Didier', 'Drogba', 3);

INSERT INTO users(nom, prenom, id_spec) VALUES('Samuel', 'Etoo', 4);

INSERT INTO users(nom, prenom, id_spec) VALUES('Cristiano', 'Ronaldo', 5);
INSERT INTO users(nom, prenom, id_spec) VALUES('Sidibe', 'Ibrahim', 1);

INSERT INTO users(nom, prenom, id_spec) VALUES('Kone', 'Awa', 2);

INSERT INTO users(nom, prenom, id_spec) VALUES('Kouakou', 'Armel', 3);
