

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
