

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

## WONDJA

-- Insert quizz

INSERT INTO quizz(nom) VALUES('Requete simple');

INSERT INTO quizz(nom) VALUES('Requete complexe');

-- Exercices
INSERT INTO exercices(enonce, note, sql_reponse, id_quizz) VALUES('selectionner le nombre total des utilisateurs', 12, 'SELECT count(*) FROM users;', 1);

INSERT INTO exercices(enonce, note, sql_reponse, id_quizz) VALUES('Selectionner le nom et le prenom des utilisateurs dont la note est superieurs ou egale à 14 et ordonnée par note décroissante', 15, 'SELECT users.nom, users.prenom FROM users, exercices WHERE users.id = exercices.id AND exercices.note >= 14 ORDER BY note DESC;', 2);

-- Insert tests
INSERT INTO tests(table_sql, id_exercice) VALUES('create table users(id int auto_increment, nom varchar(10), prenom varchar(30), id_spec int, primary key(id));', 1);

INSERT INTO tests(table_sql, id_exercice) VALUES('create table quizz(id int auto_increment, nom varchar(50) primary key(id); create table exercices(id int auto_increment, enonce text, note int, sql_reponse text, id_quizz int, primary key(id), foreign key(id_quizz) references quizz(id)); create table users(id int auto_increment, nom varchar(10), prenom varchar(30), id_spec int, primary key(id), foreign key(id_spec) references specialites(id));', 2);

-- Insert specialites
INSERT INTO specialites(nom) VALUES('JS');

INSERT INTO specialites(nom) VALUES('FRONT');

INSERT INTO specialites(nom) VALUES('PHOTOSHOP');

-- Utilisateurs
INSERT INTO users(nom, prenom, id_spec) VALUES('Sidibe', 'Ibrahim', 1);

INSERT INTO users(nom, prenom, id_spec) VALUES('Kone', 'Awa', 2);

INSERT INTO users(nom, prenom, id_spec) VALUES('Kouakou', 'Armel', 3);
