

Bienvenue NaNien 3.20

Ce quizz est composé de 5 parties indépendantes avec 6 Questions chacunes.
Il durera 30 min. Ne perdez pas de temps à lire les énnoncés.

PARTIE 1:

Soit la base de données d’un festival de musique : Dans une représentation peut participer un ou plusieurs musiciens. Un
musicien ne peut participer qu’à une seule représentation.
— Representation (Num_Rep , titre_Rep , lieu)
— Musicien (Num_mus , nom , #Num_Rep)
— Programmer (Date , #Num_Rep , tarif)

create table Representation (
  Num_Rep int primary key auto_increment,
  titre_Rep varchar(100),
  lieu varchar(100)
);
create table Musicien (
  Num_mus int primary key auto_increment, 
  nom varchar(100),
  Num_Rep int,
  foreign key(Num_Rep) references Representation(Num_Rep)
);
create table Programmer (
  Date date primary key, 
  Num_Rep int,
  foreign key(Num_Rep) references Representation(Num_Rep),
  tarif int
);


insert into Representation(titre_Rep, lieu)
values
("Marechi", "Cocody"),
("Alita Battle Music", "2 Plateaux"),
("The living dead", "Yopougon Cosmos"),
("Hommage à Dj Arafat", "theatre allissa");

insert into Musicien(
    nom, Num_Rep)
values
("Minami", 1),
("Aqua Timez", 1),
("Full Covered by", 1),
("Jinx", 2),
("Johny Haliday", 3),
("Beyoncé", 3),
("Eve", 4);

insert into Programmer(
    Date, Num_Rep, tarif
)
values
("2016-02-06", 1, 5000),
("2016-06-06", 2, 2500),
("2008-07-25", 2, 1000),
("2009-02-12", 3, 65000),
("2011-03-01", 4, 1000),
("2019-12-22", 4, 50000);

Questions :

1. La liste des titres des représentations.
SELECT * FROM Representation

2. La liste des titres des représentations ayant lieu au « théâtre allissa ».
SELECT * FROM Representation WHERE lieu =" theatre ␣ allissa "

3. La liste des noms des musiciens et des titres et les titres des représentations auxquelles ils participent.
SELECT M . nom , R . titre_Rep FROM Musicien M INNER JOIN Representation R ON R . Num_rep = M . Num_rep

4. La liste des titres des représentations, les lieux et les tarifs du 25/07/2008.
SELECT R . titre_Rep , R . lieu , P . tarif FROM Programmer P INNER JOIN Representation R ON P . Num_rep = R . Num_rep WHERE P . date =" 25 -07 -2008 "

5. Les titres des représentations et leurs dates dont le tarif ne dépasse pas 5000 Francs.
SELECT R . titre_Rep , P . Date FROM Representation R INNER JOIN Programmer P ON R . Num_Rep = P . Num_Rep WHERE P . tarif <=5000

6. Renommer le musicien ayant l'id 3 par "Alain"

update Musicien
		set nom = "Alain"
		where id=3;


Partie 2:

Soit la base de données suivante :
— Départements :( DNO, DNOM, DIR, VILLE)
— Employés : ( ENO, ENOM, PROF, DATEEMB, SAL, COMM, #DNO)

create table Departements 
(DNO int primary key auto_increment, 
 DNOM varchar(100), 
 DIR varchar(100), 
 VILLE varchar(100)
);

create table Employes (
  ENO  int primary key auto_increment, 
  ENOM varchar(100), 
  PROF varchar(100), 
  DATEEMB date, 
  SAL int, 
  COMM int, 
  DNO int,
  foreign key(DNO) references Departements(DNO)
);

insert into Departements(
    DNOM, DIR, VILLE
)
values
("production", "Paul Rudd", "Abidjan"),
("developpement web", "Robert Downey", "New York"),
("marketing", "Hope Pyms", "Los Angeles"),
("software", "Mr Soro", "Daloa"),
("", "", ""),

insert into Employes(
    ENOM, PROF, DATEEMB, SAL, COMM, DNO
)
values
("Diby Koffi", "", "", , NULL, ),
("Paul Rudd", "", "", , NULL, ),
("Hope Pyms", "", "", , NULL, ),
("Vision Jarvis", "", "", , NULL, ),
("Robert Downey", "", "", , NULL, ),
("Patrick l'Etoile", "", "", , NULL, ),
("DK codeur", "", "", , NULL, ),
("reverse", "", "", , NULL, ),
("Mr Soro", "", "", , NULL, ),
("Alloco225", "Admin BD", "2019-12-19", 210000, 90000, ),
("FirstTim", "", "", , NULL, ),
("Super Sidick", "", "", , NULL, );

Exprimez en SQL les requêtes suivantes :

1. Donnez la liste des employés ayant une commission.
SELECT * FROM Employes WHERE COMM <> NULL

2. Donnez les noms, emplois et salaires des employés par emploi croissant, et pour chaque emploi, par salaire décroissant
SELECT ENOM , PROF , SAL FROM Employes ORDER BY PROF ASC , SAL DESC;

3. Donnez le salaire moyen des employés
SELECT AVG ( SAL ) FROM Employes

4. Donnez le salaire moyen du département Production
SELECT AVG ( E . SAL ) FROM Employes E INNER JOIN Departements D ON E . DNO = D . DNO WHERE D . DNOM =" production"


5. Donnes les numéros de département et leur salaire maximum
SELECT DNO , MAX ( SAL ) FROM Employes GROUP BY DNO


6. Donnez les différentes professions et leur salaire moyen
SELECT PROF , MAX ( SAL ) FROM Employes GROUP BY PROF



PARTIE  3:
Soit la base de données intitulée "gestion_projet" permettant de gérer les projets relatifs au développement de logiciels.
Elle est décrite par la représentation textuelle simplifiée suivante :
— Developpeur (NumDev, NomDev, AdrDev, EmailDev, TelDev)
— Projet (NumProj, TitreProj, DateDeb, DateFin)
— Logiciel (CodLog, NomLog, PrixLog, #NumProj)
— Realisation (#NumProj, #NumDev)

create table Developpeur (
  NumDev  int primary key auto_increment, 
  NomDev varchar(100), 
  AdrDev varchar(100), 
  EmailDev varchar(100), 
  TelDev varchar(8)
);

create table Projet (
  NumProj int primary key auto_increment, 
  TitreProj varchar(100), 
  DateDeb date, 
  DateFin date
);

create table Logiciel (
  CodLog int primary key auto_increment, 
  NomLog varchar(100), 
  PrixLog int, 
  NumProj int,
  foreign key(NumProj) references Projet(NumProj)
);

create table Realisation (
  NumProj int,
  NumDev int,
  primary key(NumProj, NumDev),
  foreign key(NumProj) references Projet(NumProj),
  foreign key(NumDev) references Developpeur(NumDev)
);



Ecrire les requêtes SQL permettant :

1. D’afficher les noms et les prix des logiciels appartenant au projet ayant comme titre « gestion de stock », triés dans
l’ordre décroissant des prix . 

SELECT L . NomLog , L . PrixLog FROM Logiciel L INNER JOIN Projet P ON L . NumProj = P . NumProj WHERE P . TitreProj =" gestion ␣de␣ stock " ORDER BY L . PrixLog DESC


2. D’afficher le total des prix des logiciels du projet numéro 10. Lors de l’affichage, le titre de la colonne sera «cout total du projet».
SELECT SUM ( PrixLog ) as " cout total du projet " FROM Logiciel WHERE NumPRoj =10

3. Afficher le nombre de développeurs qui ont participé au projet intitulé « gestion de stock »
SELECT count (*) FROM Developpeur D INNER JOIN Realisation R ON D . NumDev = R . NumDev INNER JOIN Projet P ON P . NumProj = R . NumProj

4. Afficher les projets qui ont plus que 5 logiciels
SELECT NumProj, TitreProj FROM PRojet P INNER JOIN Logiciel
L ON P.NumProj=L.NumProj GROUP BY NumProj HAVING count(*)>5

5. Les numéros et noms des développeurs qui ont participés dans tout les projets.
SELECT D.NumDev , D.NomDev FROM Developpeur D INNER JOIN Realisation R ON D.NumDev = R.NumDev GROUP BY NumDev HAVING count(*)=( SELECT COUNT(*) FROM Projet )

6. Les numéros de projets dans lesquelles tous les développeurs y participent dans sa réalisation.
SELECT NumProj , TitreProj FROM Projet P INNER JOIN Realisation R ON P . NumProj = R . NumProj GROUP BY NumProj HAVING count (*)=( SELECT COUNT (*) FROM Developpeur )




Bienvenue NaNien 3.20

Ce quizz est composé de 5 parties indépendantes avec 6 Questions chacunes.
Il durera 30 min. Ne perdez pas de temps à lire les énnoncés.

PARTIE 1:

Soit la base de données d’un festival de musique : Dans une représentation peut participer un ou plusieurs musiciens. Un
musicien ne peut participer qu’à une seule représentation.
— Representation (Num_Rep , titre_Rep , lieu)
— Musicien (Num_mus , nom , #Num_Rep)
— Programmer (Date , #Num_Rep , tarif)

create table Representation (
  Num_Rep int primary key auto_increment,
  titre_Rep varchar(100),
  lieu varchar(100)
);
create table Musicien (
  Num_mus int primary key auto_increment, 
  nom varchar(100),
  Num_Rep int,
  foreign key(Num_Rep) references Representation(Num_Rep)
);
create table Programmer (
  Date date primary key, 
  Num_Rep int,
  foreign key(Num_Rep) references Representation(Num_Rep),
  tarif int
);


insert into Representation(titre_Rep, lieu)
values
("Marechi", "Cocody"),
("Alita Battle Music", "2 Plateaux"),
("The living dead", "Yopougon Cosmos"),
("Hommage à Dj Arafat", "theatre allissa");

insert into Musicien(
    nom, Num_Rep)
values
("Minami", 1),
("Aqua Timez", 1),
("Full Covered by", 1),
("Jinx", 2),
("Johny Haliday", 3),
("Beyoncé", 3),
("Eve", 4);

insert into Programmer(
    Date, Num_Rep, tarif
)
values
("2016-02-06", 1, 5000),
("2016-06-06", 2, 2500),
("2008-07-25", 2, 1000),
("2009-02-12", 3, 65000),
("2011-03-01", 4, 1000),
("2019-12-22", 4, 50000);

Questions :

1. La liste des titres des représentations.
SELECT * FROM Representation

2. La liste des titres des représentations ayant lieu au « théâtre allissa ».
SELECT * FROM Representation WHERE lieu =" theatre ␣ allissa "

3. La liste des noms des musiciens et des titres et les titres des représentations auxquelles ils participent.
SELECT M . nom , R . titre_Rep FROM Musicien M INNER JOIN Representation R ON R . Num_rep = M . Num_rep

4. La liste des titres des représentations, les lieux et les tarifs du 25/07/2008.
SELECT R . titre_Rep , R . lieu , P . tarif FROM Programmer P INNER JOIN Representation R ON P . Num_rep = R . Num_rep WHERE P . date =" 25 -07 -2008 "

5. Les titres des représentations et leurs dates dont le tarif ne dépasse pas 5000 Francs.
SELECT R . titre_Rep , P . Date FROM Representation R INNER JOIN Programmer P ON R . Num_Rep = P . Num_Rep WHERE P . tarif <=5000

6. Renommer le musicien ayant l'id 3 par "Alain"

update Musicien
		set nom = "Alain"
		where id=3;


Partie 2:

Soit la base de données suivante :
— Départements :( DNO, DNOM, DIR, VILLE)
— Employés : ( ENO, ENOM, PROF, DATEEMB, SAL, COMM, #DNO)

create table Departements 
(DNO int primary key auto_increment, 
 DNOM varchar(100), 
 DIR varchar(100), 
 VILLE varchar(100)
);

create table Employes (
  ENO  int primary key auto_increment, 
  ENOM varchar(100), 
  PROF varchar(100), 
  DATEEMB date, 
  SAL int, 
  COMM int, 
  DNO int,
  foreign key(DNO) references Departements(DNO)
);

insert into Departements(
    DNOM, DIR, VILLE
)
values
("production", "Paul Rudd", "Abidjan"),
("developpement web", "Robert Downey", "New York"),
("marketing", "Hope Pyms", "Los Angeles"),
("software", "Mr Soro", "Daloa"),
("", "", ""),

insert into Employes(
    ENOM, PROF, DATEEMB, SAL, COMM, DNO
)
values
("Diby Koffi", "", "", , NULL, ),
("Paul Rudd", "", "", , NULL, ),
("Hope Pyms", "", "", , NULL, ),
("Vision Jarvis", "", "", , NULL, ),
("Robert Downey", "", "", , NULL, ),
("Patrick l'Etoile", "", "", , NULL, ),
("DK codeur", "", "", , NULL, ),
("reverse", "", "", , NULL, ),
("Mr Soro", "", "", , NULL, ),
("Alloco225", "Admin BD", "2019-12-19", 210000, 90000, ),
("FirstTim", "", "", , NULL, ),
("Super Sidick", "", "", , NULL, );

Exprimez en SQL les requêtes suivantes :

1. Donnez la liste des employés ayant une commission.
SELECT * FROM Employes WHERE COMM <> NULL

2. Donnez les noms, emplois et salaires des employés par emploi croissant, et pour chaque emploi, par salaire décroissant
SELECT ENOM , PROF , SAL FROM Employes ORDER BY PROF ASC , SAL DESC;

3. Donnez le salaire moyen des employés
SELECT AVG ( SAL ) FROM Employes

4. Donnez le salaire moyen du département Production
SELECT AVG ( E . SAL ) FROM Employes E INNER JOIN Departements D ON E . DNO = D . DNO WHERE D . DNOM =" production"


5. Donnes les numéros de département et leur salaire maximum
SELECT DNO , MAX ( SAL ) FROM Employes GROUP BY DNO


6. Donnez les différentes professions et leur salaire moyen
SELECT PROF , MAX ( SAL ) FROM Employes GROUP BY PROF



PARTIE  3:
Soit la base de données intitulée "gestion_projet" permettant de gérer les projets relatifs au développement de logiciels.
Elle est décrite par la représentation textuelle simplifiée suivante :
— Developpeur (NumDev, NomDev, AdrDev, EmailDev, TelDev)
— Projet (NumProj, TitreProj, DateDeb, DateFin)
— Logiciel (CodLog, NomLog, PrixLog, #NumProj)
— Realisation (#NumProj, #NumDev)

create table Developpeur (
  NumDev  int primary key auto_increment, 
  NomDev varchar(100), 
  AdrDev varchar(100), 
  EmailDev varchar(100), 
  TelDev varchar(8)
);

create table Projet (
  NumProj int primary key auto_increment, 
  TitreProj varchar(100), 
  DateDeb date, 
  DateFin date
);

create table Logiciel (
  CodLog int primary key auto_increment, 
  NomLog varchar(100), 
  PrixLog int, 
  NumProj int,
  foreign key(NumProj) references Projet(NumProj)
);

create table Realisation (
  NumProj int,
  NumDev int,
  primary key(NumProj, NumDev),
  foreign key(NumProj) references Projet(NumProj),
  foreign key(NumDev) references Developpeur(NumDev)
);



Ecrire les requêtes SQL permettant :

1. D’afficher les noms et les prix des logiciels appartenant au projet ayant comme titre « gestion de stock », triés dans
l’ordre décroissant des prix . 

SELECT L . NomLog , L . PrixLog FROM Logiciel L INNER JOIN Projet P ON L . NumProj = P . NumProj WHERE P . TitreProj =" gestion ␣de␣ stock " ORDER BY L . PrixLog DESC


2. D’afficher le total des prix des logiciels du projet numéro 10. Lors de l’affichage, le titre de la colonne sera «cout total du projet».
SELECT SUM ( PrixLog ) as " cout total du projet " FROM Logiciel WHERE NumPRoj =10

3. Afficher le nombre de développeurs qui ont participé au projet intitulé « gestion de stock »
SELECT count (*) FROM Developpeur D INNER JOIN Realisation R ON D . NumDev = R . NumDev INNER JOIN Projet P ON P . NumProj = R . NumProj

4. Afficher les projets qui ont plus que 5 logiciels
SELECT NumProj, TitreProj FROM PRojet P INNER JOIN Logiciel
L ON P.NumProj=L.NumProj GROUP BY NumProj HAVING count(*)>5

5. Les numéros et noms des développeurs qui ont participés dans tout les projets.
SELECT D.NumDev , D.NomDev FROM Developpeur D INNER JOIN Realisation R ON D.NumDev = R.NumDev GROUP BY NumDev HAVING count(*)=( SELECT COUNT(*) FROM Projet )

6. Les numéros de projets dans lesquelles tous les développeurs y participent dans sa réalisation.
SELECT NumProj , TitreProj FROM Projet P INNER JOIN Realisation R ON P . NumProj = R . NumProj GROUP BY NumProj HAVING count (*)=( SELECT COUNT (*) FROM Developpeur )




Bienvenue NaNien 3.20

Ce quizz est composé de 5 parties indépendantes avec 6 Questions chacunes.
Il durera 30 min. Ne perdez pas de temps à lire les énnoncés.

PARTIE 1:

Soit la base de données d’un festival de musique : Dans une représentation peut participer un ou plusieurs musiciens. Un
musicien ne peut participer qu’à une seule représentation.
— Representation (Num_Rep , titre_Rep , lieu)
— Musicien (Num_mus , nom , #Num_Rep)
— Programmer (Date , #Num_Rep , tarif)

create table Representation (
  Num_Rep int primary key auto_increment,
  titre_Rep varchar(100),
  lieu varchar(100)
);
create table Musicien (
  Num_mus int primary key auto_increment, 
  nom varchar(100),
  Num_Rep int,
  foreign key(Num_Rep) references Representation(Num_Rep)
);
create table Programmer (
  Date date primary key, 
  Num_Rep int,
  foreign key(Num_Rep) references Representation(Num_Rep),
  tarif int
);


insert into Representation(titre_Rep, lieu)
values
("Marechi", "Cocody"),
("Alita Battle Music", "2 Plateaux"),
("The living dead", "Yopougon Cosmos"),
("Hommage à Dj Arafat", "theatre allissa");

insert into Musicien(
    nom, Num_Rep)
values
("Minami", 1),
("Aqua Timez", 1),
("Full Covered by", 1),
("Jinx", 2),
("Johny Haliday", 3),
("Beyoncé", 3),
("Eve", 4);

insert into Programmer(
    Date, Num_Rep, tarif
)
values
("2016-02-06", 1, 5000),
("2016-06-06", 2, 2500),
("2008-07-25", 2, 1000),
("2009-02-12", 3, 65000),
("2011-03-01", 4, 1000),
("2019-12-22", 4, 50000);

Questions :

1. La liste des titres des représentations.
SELECT * FROM Representation

2. La liste des titres des représentations ayant lieu au « théâtre allissa ».
SELECT * FROM Representation WHERE lieu =" theatre ␣ allissa "

3. La liste des noms des musiciens et des titres et les titres des représentations auxquelles ils participent.
SELECT M . nom , R . titre_Rep FROM Musicien M INNER JOIN Representation R ON R . Num_rep = M . Num_rep

4. La liste des titres des représentations, les lieux et les tarifs du 25/07/2008.
SELECT R . titre_Rep , R . lieu , P . tarif FROM Programmer P INNER JOIN Representation R ON P . Num_rep = R . Num_rep WHERE P . date =" 25 -07 -2008 "

5. Les titres des représentations et leurs dates dont le tarif ne dépasse pas 5000 Francs.
SELECT R . titre_Rep , P . Date FROM Representation R INNER JOIN Programmer P ON R . Num_Rep = P . Num_Rep WHERE P . tarif <=5000

6. Renommer le musicien ayant l'id 3 par "Alain"

update Musicien
		set nom = "Alain"
		where id=3;


Partie 2:

Soit la base de données suivante :
— Départements :( DNO, DNOM, DIR, VILLE)
— Employés : ( ENO, ENOM, PROF, DATEEMB, SAL, COMM, #DNO)

create table Departements 
(DNO int primary key auto_increment, 
 DNOM varchar(100), 
 DIR varchar(100), 
 VILLE varchar(100)
);

create table Employes (
  ENO  int primary key auto_increment, 
  ENOM varchar(100), 
  PROF varchar(100), 
  DATEEMB date, 
  SAL int, 
  COMM int, 
  DNO int,
  foreign key(DNO) references Departements(DNO)
);

insert into Departements(
    DNOM, DIR, VILLE
)
values
("production", "Paul Rudd", "Abidjan"),
("developpement web", "Robert Downey", "New York"),
("marketing", "Hope Pyms", "Los Angeles"),
("software", "Mr Soro", "Daloa"),
("front-end", "Anvi", "Macs 12"),
("django", "Mr Soro", "Macs 01");

insert into Employes(
    ENOM, PROF, DATEEMB, SAL, COMM, DNO
)
values
("Diby Koffi", "Dev Front", "2008-10-01", 70000, NULL, 1),
("Paul Rudd", "Acteur", "2002-03-05", 220220, NULL, 1),
("Hope Pyms", "Scientifique", "2015-02-01", 25486, NULL, 2),
("Vision Jarvis", "Testeur", "2003-05-03", 78320, NULL, 3),
("Robert Downey", "Comic Relief", "1998-10-31", 62000, NULL, 4),
("Patrick l'Etoile", "Etoile", "2002-07-05", 15200, NULL, 5),
("DK codeur", "Codeur", "2019-11-25", 20000, NULL, 5),
("reverse", "Codeur", "2018-02-12", 175000, NULL, 6),
("Mr Soro", "Admin", "2017-12-25", 570000, 250000, 4),
("Alloco225", "Admin BD", "2019-12-19", 200000, 90000, 4),
("FirstTim", "Admin BD", "2019-12-20", 200000, NULL, 4),
("Super Sidick", "Admin BD", "2019-12-22", 200000, NULL, 4);

Exprimez en SQL les requêtes suivantes :

1. Donnez la liste des employés ayant une commission.
SELECT * FROM Employes WHERE COMM <> NULL

2. Donnez les noms, emplois et salaires des employés par emploi croissant, et pour chaque emploi, par salaire décroissant
SELECT ENOM , PROF , SAL FROM Employes ORDER BY PROF ASC , SAL DESC;

3. Donnez le salaire moyen des employés
SELECT AVG ( SAL ) FROM Employes

4. Donnez le salaire moyen du département Production
SELECT AVG ( E . SAL ) FROM Employes E INNER JOIN Departements D ON E . DNO = D . DNO WHERE D . DNOM =" production"


5. Donnes les numéros de département et leur salaire maximum
SELECT DNO , MAX ( SAL ) FROM Employes GROUP BY DNO


6. Donnez les différentes professions et leur salaire moyen
SELECT PROF , MAX ( SAL ) FROM Employes GROUP BY PROF



PARTIE  3:
Soit la base de données intitulée "gestion_projet" permettant de gérer les projets relatifs au développement de logiciels.
Elle est décrite par la représentation textuelle simplifiée suivante :
— Developpeur (NumDev, NomDev, AdrDev, EmailDev, TelDev)
— Projet (NumProj, TitreProj, DateDeb, DateFin)
— Logiciel (CodLog, NomLog, PrixLog, #NumProj)
— Realisation (#NumProj, #NumDev)

create table Developpeur (
  NumDev  int primary key auto_increment, 
  NomDev varchar(100), 
  AdrDev varchar(100), 
  EmailDev varchar(100), 
  TelDev varchar(8)
);

create table Projet (
  NumProj int primary key auto_increment, 
  TitreProj varchar(100), 
  DateDeb date, 
  DateFin date
);

create table Logiciel (
  CodLog int primary key auto_increment, 
  NomLog varchar(100), 
  PrixLog int, 
  NumProj int,
  foreign key(NumProj) references Projet(NumProj)
);

create table Realisation (
  NumProj int,
  NumDev int,
  primary key(NumProj, NumDev),
  foreign key(NumProj) references Projet(NumProj),
  foreign key(NumDev) references Developpeur(NumDev)
);

insert into Developpeur(NomDev)
values
("Geoffroy"),
("Hans"),
("Soro"),
("Kossonou"),
("Melissa");

insert into Projet(TitreProj)
values
("application d'évenements"),
("gestion de stock"),
("dress maker"),
("machine learning"),
("eshopping"),
("nan musique"),
("iq calculator"),
("converter"),
("pop"),
("quizz 3.20");

insert into Logiciel(NomLog, PrixLog, NumProj)
values
("Proj 1", 100000, 1),
("Proj 2", 2000000, 3),
("Proj 3", 3500, 5),
("Proj 4", 60000, 7),
("Proj 5", 700000, 6),
("SQL parser", 0, 10),

insert into Realisation(NumDev, NumProj)
values
(1,1),
(1,2),
(1,5),
(1,10),
(2,6),
(2,4),
(2,8),
(2,10),
(3,6),
(3,2),
(3,10),
(4,10),
(5,2),
(5,10);

Ecrire les requêtes SQL permettant :

1. D’afficher les noms et les prix des logiciels appartenant au projet ayant comme titre « gestion de stock », triés dans
l’ordre décroissant des prix . 

SELECT L . NomLog , L . PrixLog FROM Logiciel L INNER JOIN Projet P ON L . NumProj = P . NumProj WHERE P . TitreProj =" gestion ␣de␣ stock " ORDER BY L . PrixLog DESC


2. D’afficher le total des prix des logiciels du projet numéro 10. Lors de l’affichage, le titre de la colonne sera «cout total du projet».
SELECT SUM ( PrixLog ) as " cout total du projet " FROM Logiciel WHERE NumPRoj =10

3. Afficher le nombre de développeurs qui ont participé au projet intitulé « gestion de stock »
SELECT count (*) FROM Developpeur D INNER JOIN Realisation R ON D . NumDev = R . NumDev INNER JOIN Projet P ON P . NumProj = R . NumProj

4. Afficher les projets qui ont plus que 5 logiciels
SELECT NumProj, TitreProj FROM PRojet P INNER JOIN Logiciel
L ON P.NumProj=L.NumProj GROUP BY NumProj HAVING count(*)>5

5. Les numéros et noms des développeurs qui ont participés dans tout les projets.
SELECT D.NumDev , D.NomDev FROM Developpeur D INNER JOIN Realisation R ON D.NumDev = R.NumDev GROUP BY NumDev HAVING count(*)=( SELECT COUNT(*) FROM Projet )

6. Les numéros de projets dans lesquelles tous les développeurs y participent dans sa réalisation.
SELECT NumProj , TitreProj FROM Projet P INNER JOIN Realisation R ON P . NumProj = R . NumProj GROUP BY NumProj HAVING count (*)=( SELECT COUNT (*) FROM Developpeur )


