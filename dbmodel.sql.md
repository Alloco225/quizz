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
  nom varchar(100),
  sql_creation_insertion text,
  id_quizz int,
  primary key(id),
  foreign key(id_quizz) references quizz(id)
);

-- Questions
create table questions(
  id int auto_increment,
  enonce text,
  note int,
  sql_reponse text,
  id_exercice int,
  primary key(id),
  foreign key(id_exercice) references exercices(id)
);
  

-- Tests
create table tests(
  id int auto_increment,
  sql_input text,
  sql_expected_output text,
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


-- INSERTIONS
-- quizz
insert into quizz(nom) values ("Quizz n°1");

-- exercices
    -- exercices du quizz 1
    insert into exercices(
        nom, 
        sql_creation_insertion, 
        id_quizz
        )
    values 
    (
        "Exercice 9",
        "
            -- CREATION DES TABLES -- Admin
            create table ville(
                CodePostal int primary key auto_increment,
                NomVille varchar(50) 
                );
            create table cinema(
                NumCine int primary key auto_increment,
                NomCine varchar(50),
                Adresse varchar(50),
                CodePostal int,
                foreign key(CodePostal) references ville(CodePostal)
            );
            create table salle(
                NumSalle int primary key auto_increment,
                Capacite int,
                NumCine int,
                foreign key(NumCine) references cinema(NumCine)
            );
            create table film(
                NumExploit int primary key auto_increment,
                Titre varchar(50),
                Duree int
            );
            create table projection(
                NumExploit int,
                NumSalle int,
                NumSemaine int,
                NBentrees int,
                primary key(NumExploit, NumSalle),
                foreign key(NumExploit) references film(NumExploit),
                foreign key(NumSalle) references salle(NumSalle)
            );

            -- INSERTIONS
            insert into ville(NomVille)
                values 
                ('Meknes'),
                ('Abidjan'),
                ('Santiago'),
                ('Shibuya'),
                ('Dubai');

            insert into cinema(NomCine, Adresse, CodePostal)
                values
                ('RIF', 'Meknes Mek', 1),
                ('Majestic Ivoire', 'Abj 01', 2),
                ('Majestic Sococe', 'Abj 03', 2),
                ('BlueBerry Cine', 'Santi', 3),
                ('BlueBerry Cine', 'Santi 0', 3),
                ('Eigakan', 'Shibuyaku', 4),
                ('Venom', 'Burjrharahrha', 5);

            insert into salle(Capacite, NumCine)
                values
                (25, 1),
                (125, 1),
                (200, 1),
                (150, 2),
                (50, 3),
                (150, 3),
                (200, 3),
                (25, 4),
                (150, 4),
                (25, 5),
                (50, 5),
                (150, 5),
                (25, 6),
                (50, 6),
                (75, 6),
                (150, 7);

            insert into film(Titre, Duree)
                values
                ('Hypnose', 130),
                ('Endgame', 200),
                ('The Pursuit Of Happiness', 180);

            insert into projection(NumExploit, NumSalle, NumSemaine, Nbentrees)
                values
                (1, 1, 2, 20),
                (1, 2, 18, 100),
                (2, 2, 20, 200);
        ",
        1
    );
      
-- questions
  -- questions de l'exercice 1
    insert into questions(
        enonce,
        note,
        sql_reponse,
        id_exercice
      )
    values (
        "1. Titre des films dont la durée est supérieure ou égale à deux heures",
        1,
        "SELECT NumExploit, Titre FROM FILM WHERE Duree >=2;",
        1
    ),
    (
        "2. Nom des villes abritant un cinéma nommé « RIF »",
        1,
        "SELECT NomVille FROM VILLE WHERE CodePostal IN (SELECT CodePostal FROM CINEMA WHERE NomCine='RIF');",
        1
    ),
    (
        "3. Nom des cinémas situés à Meknès ou contenant au moins une salle de plus 100 places",
        1,
        "SELECT NomCine FROM CINEMA WHERE CodePostal=(SELECT CodePostal FROM VILLE WHERE NomVille='Meknes') OR NumCine IN (SELECT NumCine FROM SALLE WHERE Capacite>=100);",
        1
    ),
    (
        "4. Nom, adresse et ville des cinémas dans lesquels on joue le film « Hypnose » la semaine 18",
        1,
        "SELECT C.NomCine , C.Adresse , V.NomVille FROM CINEMA as C, VILLE as V WHERE C.CodePostal=V.CodePostal AND C.NumCine IN (SELECT S.NumCine FROM SALLE as S, FILM as F, PROJECTION as P WHERE P.NumExploit=F.NumExploit AND P.NumSalle=S.NumSalle AND F.Titre='Hypnose' AND P.NumSemaine=18);",
        1
    ),
    (
        "5. Titre des films qui n'ont pas été projetés",
        1,
        "SELECT Titre FROM FILM WHERE NumExploit NOT IN (SELECT NumExploit FROM PROJECTION);",
        1
    );
    
