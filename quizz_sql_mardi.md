

Bienvenue NaNien 3.20

Ceci est le dernier test. Restez concentrés et bonne chance.

create table Adresses(
    id int primary key auto_increment,
    lieu varchar(250)
);

-- 
insert into Adresses(
    lieu
) values
("Abidjan Cocody"),
("Rasembool"),
("Konoha"),
("Abidjan Yopougon"),
("Abidjan Marcory"),
("Abidjan 2 Plateaux"),
("Abidjan Koumassi"),
("Abidjan Treichville"),
("UA"),
("Texas Smash");

-- 

create table Matieres(
    id int primary key auto_increment,
    nom varchar(50)
);

insert into Matieres(
    nom
) values
("Math"),
("Physiques"),
("Francais"),
("Anglais"),
("Algorithmique"),
("Droit Informatique"),
("SQL"),
("Langage R"),
("C#"),
("Python"),
("Html CSS JS");

create table Specialites(
    id int primary key auto_increment,
    nom varchar(100)
);

insert into Specialites(
    nom
) values
("Data Analyst"),
("Front End"),
("Redacteur Web"),
("Flutter"),
("Xamarin"),
("Django");

create table MatiereSpecialite(
    matiere_id int,
    specialite_id int,
    coefficient int
);

insert into MatiereSpecialite(
    specialite_id,
    matiere_id,
    coefficient
) values
(1, 1, 5),
(1, 3, 3),
(1, 7, 1),
(1, 8, 10),
(1, 9, 7);

insert into MatiereSpecialite(
    specialite_id,
    matiere_id,
    coefficient
) values
(2, 4, 8),
(2, 6, 2),
(2, 7, 4),
(2, 13, 10);

insert into MatiereSpecialite(
    specialite_id,
    matiere_id,
    coefficient
) values
(3, 3, 10),
(3, 4, 10),
(3, 13, 5);

insert into MatiereSpecialite(
    specialite_id,
    matiere_id,
    coefficient
) values
(4, 1, 5),
(4, 4, 7),
(4, 6, 10),
(4, 7, 4),
(4, 8, 7),
(4, 13, 1);

insert into MatiereSpecialite(
    specialite_id,
    matiere_id,
    coefficient
) values
(5, 1, 5),
(5, 4, 7),
(5, 6, 10),
(5, 7, 4),
(5, 8, 7),
(5, 10, 10);

insert into MatiereSpecialite(
    specialite_id,
    matiere_id,
    coefficient
) values
(6, 1, 2),
(6, 2, 2),
(6, 6, 8),
(6, 7, 4),
(6, 8, 7),
(6, 12, 10),
(6, 13, 7);
-- 


create table Parents(
    id int primary key auto_increment,
    nom varchar(50),
    contact varchar(12),
    profession varchar(100),
    adresse_id int
);

insert into Parents(
    nom,
    contact,
    profession,
    adresse_id
) values
("Alfred Aldebarand", "+22501010101", "Alchemiste", 1),
("Edward Elric", "+8101010101", "Alchemiste d'Etat", 2),
("Peter Parker", "+0101010101", "Photographe", 6),
("Jack Bauer", "+23301030101", "Cellule AntiTerroriste", 2),
("James Bond", "+22501017631", "MI V", 4),
("Jason Bourne", "+22501010102", "Project GladStone", 5),
("Jack Reacher", "+22500710103", "Rogue Agent", 6),
("Ethan Hunt", "+22501710104", "MIF", 6),
("Winter Soldier", "+22501310301", "Hydra", 10),
("Maria Hills", "+8101015601", "Agent du Shield", 9),
("Fury Nick Nicolas J.", "+8102415701", "Patron des Avengers lol", 8);

create table Niveaux(
    id int primary key auto_increment,
    nom varchar(20)
);

insert into Niveaux(
    nom
) values
("2nde"),
("1ere");

create table Series(
    id int primary key auto_increment,
    nom varchar(30),
    description varchar(225)
);

insert into Series(nom, description)
values
("L", "Litteraire"),
("S", "Scientifique");

create table NiveauSerie(
    id int primary key auto_increment,
    niveau_id int,
    serie_id int
);
insert into NiveauSerie(
    niveau_id,
    serie_id
) values
(1,1),
(1,2),
--
(2,1),
(2,2);

create table Grades(
    id int primary key auto_increment,
    nom varchar(20),
    salaire int
);

insert into Grades(nom, salaire)
values
("Debutant", 200000),
("Intermediaire", 300000),
("Avance", 400000);

create table Professeurs(
    matricule int primary key auto_increment,
    nom varchar(50),
    contact varchar(12),
    adresse_id int
);

insert into Professeurs(
    nom,
    contact, 
    adresse_id
) values
(
    "Amombra",
     "+8107095704",
     8
),
(
    "Katche",
     "+2250248192",
     8
),
(
    "Opportune",
     "+3302325713",
     8
),
(
    "MayChan",
     "+8103485670",
     8
);

create table Enseigner(
    matricule int,
    matiere_id int
);

insert into Enseigner(matricule, matiere_id)
values
(1,1),
(1,3),
-- 
(2,4),
(2,11),
-- 
(2,7),
(2,8),
-- 
(4,12),
(4,13);
-- 

create table Educateurs(
    matricule int primary key auto_increment,
    nom varchar(50),
    contact varchar(12),
    adresse_id int
);

insert into Educateurs(
    nom,
    contact,
    adresse_id
) values
(
    "Hans Vernier",
    "+22503284657",
    2
),
(
    "Geoffroy Sempai",
    "+8107090357",
    3
),
(
    "Soro N'be",
    "+158254534",
    7
);


create table Classes(
    id int primary key auto_increment,
    nom varchar(50),
    chef_id int,
    souschef_id int,
    prof_principal_id int,
    educateur_id int
);

-- insert into Classes(nom)
-- values 
-- (""),
-- ("");


create table Etudiants(
    matricule int primary key auto_increment,
    nom varchar(50),
    date_naissance date,
    genre varchar(1),
    specialite_id int,
    parent_id int,
    classe_id int
);

insert into Etudiants(
    nom,
    date_naissance,
    genre,
    specialite_id,
    parent_id,
    classe_id
) values
	(
		"Nolan Solis",
		"1999/07/16",
		"M",
		3,
		6,
		7
	),
	(
		"Rahim Barrera",
		"1999/08/17",
		"M",
		2,
		10,
		4
	);

insert into Etudiants(
    nom,
    date_naissance,
    genre,
    specialite_id,
    parent_id,
    classe_id
) values
	(
		"Rigel Garrett",
		"1999/10/12",
		"M",
		2,
		6,
		2
	),
	(
		"Hamilton Gamble",
		"1999/04/16",
		"M",
		1,
		2,
		1
	),
	(
		"Gavin Faulkner",
		"2000/02/21",
		"M",
		6,
		1,
		9
	),
	(
		"Mufutau Wilkinson",
		"1999/02/25",
		"M",
		2,
		9,
		6
	);
insert into Etudiants(
    nom,
    date_naissance,
    genre,
    specialite_id,
    parent_id,
    classe_id
) values
	(
		"Sara Villarreal",
		"2000/01/20",
		"F",
		3,
		1,
		5
	),
	(
		"Ivana Robles",
		"1998/12/05",
		"F",
		4,
		4,
		4
	);

create table Notes(
    matricule int,
    matiere_id int,
    note int
);


insert into Notes(
    matricule,
    matiere_id,
    note
)
values
	(
		4,
		8,
		7
	),
	(
		7,
		11,
		5
	);
insert into Notes(
    matricule,
    matiere_id,
    note
)
values
	(
		12,
		12,
		3
	);
insert into Notes(
    matricule,
    matiere_id,
    note
)
values
	(
		2,
		11,
		4
	),
	(
		12,
		3,
		9
	);
insert into Notes(
    matricule,
    matiere_id,
    note
)
values
	
	(
		6,
		11,
		15
	),
	(
		4,
		5,
		18
	);
insert into Notes(
    matricule,
    matiere_id,
    note
)
values
	(
		10,
		11,
		5
	),
	(
		6,
		10,
		17
	),
	(
		4,
		10,
		8
	);
insert into Notes(
    matricule,
    matiere_id,
    note
)
values
	(
		12,
		9,
		20
	),
	(
		4,
		4,
		9
	);
insert into Notes(
    matricule,
    matiere_id,
    note
)
values
	(
		10,
		10,
		16
	),
	(
		8,
		12,
		17
	);
    insert into Notes(
    matricule,
    matiere_id,
    note
)
values
	(
		4,
		3,
		7
	),
	(
		2,
		3,
		10
	);




 1. Nom matière, nom spécialité et coefficient des matières groupées par spécialité puis par matières.

select M.nom, S.nom, MS.coefficient from MatiereSpecialite MS
join Matieres M
on MS.matiere_id = M.id
join Specialites S
on MS.specialite_id = S.id
group by S.nom, M.nom;


 2. Le nom, le lieu d'habitation et le contact des parents dont les étudiants ont une moyenne entre 4 et 8.

 select nom, lieu, contact
from Parents P
join Adresses A
on P.adresse_id = A.id
where P.id in (
select E.parent_id
from Notes N
join Etudiants E
on N.matricule = E.matricule
where note > 4 and note < 8);


 3. Supprimer de la base de donnée les étudiants dont la moyenne est entre 8 et 10.


delete from 
Etudiants 
where matricule in(
  select matricule from
  Notes
where note>8 and note < 10);


 4. Afficher les noms des Etudiants qui n'ont pas de notes
 select * from Etudiants
where matricule not in (
select matricule 
from Notes);

 4. Donner 2 comme note en SQL au plus jeune étudiant n'ayant pas de note
 

 5. Le nombre des étudiants qui ont comme matière Algorithmique avec un coefficient de 10

 6. La somme des coefficients des matières dans la spécialité Flutter.

7. Les noms des étudiants qui une note supérieure à 10 dans la matière Anglais et qui sont de la spécialité "Redacteur Web"

8. Ajouter des eleves comme chef et sous chef dans les classes qui n'en ont pas


ajouter les l'elève le meilleur de chaque classe comme chef
et l'élève le moins bon comme souschef

Trouver l'age des eleves
Renommer les nom des classes en combinant le niveau, la serie et l'id de la classe

Insérer des données vides dans la table Classe


-- 
 Quelles sont, parmi l’ensemble des notes, la note la plus haute et la note la plus basse ? SELECT MIN(Note) as ’plus
basse note’, MAX(Note) as ’plus haute note’ FROM EVALUER

 Quelles sont les moyennes de chaque étudiant dans chacune des matières ? SELECT E.NEtudiant, E.Nom, E.Prénom,
M.LibelléMat, M.CoeffMat, AVG(EV.Note) AS MoyEtuMat FROM EVALUER EV, MATIERE M, ETUDIANT E
WHERE EV.CodeMat = M.CodeMat AND EV.NEtudiant = E.NEtudiant GROUP BY E.NEtudiant, M.LibelléMat

 Quelles sont les moyennes par matière ? Avec la vue MGETU de la question 3 ( MOYETUMAT)
SELECT LibelleMat , AVG ( MoyEtuMat ) FROM MOYETUMAT GROUP BY LibelleMat

 Quelle est la moyenne générale de chaque étudiant ? Avec la vue MGETU de la question 3 ( MOYETUMAT)
SELECT NEtudiant , Nom , SUM ( MoyEtuMat * CoeffMat )/ SUM ( CoeffMat ) AS MgEtu
FROM MOYETUMAT GROUP BY NEtudiant

 Quelle est la moyenne générale de la promotion ? Avec la vue MGETU de la question 5 :
SELECT AVG ( MgEtu ) FROM MGETU

 Quels sont les étudiants qui ont une moyenne générale supérieure ou égale à la moyenne générale de la promotion ?
Avec la vue MGETU de la question 5
SELECT NEtudiant , Nom , Prenom , MgEtu FROM MGETU
WHERE MgEtu >= ( SELECT AVG ( MgEtu ) FROM MGETU )


--
 Les informations relatives aux étudiants (Code, Nom et Date de naissance) selon l’ordre alphabétique croisant du nom
SELECT * FROM ETUDIANT ORDER BY NomEt ASC

 Les noms et les grades des enseignants de la matière dont le nom est ‘BD’.
SELECT E . NomEns , E . GradeEns FROM ENSEIGNANT E INNER JOIN MATIERE M
ON M . CodeMat = E . CodeMat WHERE M . NomMat ="BD"

 La liste distincte formée des noms et les coefficients des différentes matières qui sont enseignées par des enseignants
de grade ‘Grd3’.

SELECT DISTINCT ( M . NomMat ) , M . CoefMat FROM ENSEIGNANT E
INNER JOIN MATIERE M ON M . CodeMat = E . CodeMat WHERE E . GradeEns =" Grd3 "

 La liste des matières (Nom et Coefficient) qui sont suivies par l’étudiant de code ‘Et321’.
SELECT M . NomMat , M . CoefMat FROM MATIERE M INNER JOIN NOTE N
ON M . CodeMat = N . CodeMat INNER JOIN ETUDIANT E ON E . CodeEt = N . CodeEt
WHERE E . CodeEt =" Et321 "

-- 
Ajouter des eleves comme chef et sous chef
ajouter les l'elève le meilleur de chaque classe comme chef
et l'élève le moins bon comme souschef

Trouver l'age des eleves
Renommer les nom des classes en combinant le niveau, la serie et l'id de la classe

Insérer des données vides dans la table Classe