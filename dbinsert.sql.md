

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
