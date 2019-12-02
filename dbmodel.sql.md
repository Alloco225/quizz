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

