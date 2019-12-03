  -- Modèle de données du Quizz

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

-- Spécialités
create table specialites(
  id int auto_increment,
  nom varchar(100),
  primary key(id)
);

-- Utilisateurs
create table users(
  id int auto_increment,
  nom varchar(10),
  prenom varchar(30),
  id_spec int,
  primary key(id),
  -- L'utilisateur porte la clé de sa spécialité
  foreign key(id_spec) references specialites(id)
);


-- Composition
create table composition(
  id_user int,
  id_exercice int,
  sql_user text,
  temps time,
  success bool,
  note int,
  primary key(id_user, id_exercice),
  foreign key(id_user) references users(id),
  foreign key(id_exercice) references exercices(id)
);

create table quizz(
    id int auto_increment primary key,
    nom VARCHAR(255)
);
    
create table exercices(
    id int auto_increment primary key,
    enonce text,
    note int,
    sql_reponse text,
    id_quizz int,
    foreign key(id_quizz) references quizz(id)
);
    
create table specialites(
    id int auto_increment primary key,
    nom varchar(255)
);

create table users(
    id int auto_increment primary key,
    nom varchar(255),
    prenom varchar(255),
    id_spec int,
    foreign key(id_spec) references specialites(id)
);
  
create table composition(
    id_user int,
    id_exercice int,
    sql_user text,
    temps time,
    success bool,
    note int,
    foreign key(id_user) references users(id),
    foreign key(id_exercice) references exercices(id)
);
    
  create table tests(
    id int auto_increment primary key,
    table_sql  TEXT,
    id_exercice int,
    foreign key(id_exercice) references exercices (id)
);

INSERT INTO quizz (nom) VALUES ("Quiz 1");
INSERT INTO specialites (nom) VALUES ("BD");
  
INSERT INTO exercices (enonce, sql_reponse, note, id_quizz)
VALUES ("Voici une table des departements avec les champs departement_id, departement_nom, departement_slug de France. Ecrire une requête qui permet d'btenir la liste des départements d’outres-mer, c’est-à-dire ceux dont le numéro de département commencent par '97'", "SELECT departement_nom FROM departement;", 4, 1);

INSERT INTO tests (table_sql, id_exercice)
VALUES ("CREATE TABLE IF NOT EXISTS departement ( departement_id int(11) NOT NULL AUTO_INCREMENT, departement_nom varchar(255), departement_slug varchar(255); INSERT INTO departement (departement_id, departement_nom , departement_slu ) VALUES (1,'Ain', 'ain'), (2, 'Aisne', 'aisne'), (3, 'Allier','allier'), (5,'Hautes-Alpes','hautes-alpes'), (4,'Alpes-de-Haute-Provence','alpes-de-haute-provence'), (6, 'Alpes-Maritimes', 'alpes-maritimes');", 1)
