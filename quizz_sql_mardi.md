

Bienvenue NaNien 3.20

Ceci est le dernier test. Restez concentrés et bonne chance.

- Adresses
    id
    lieu

- Matieres
    code
    nom
    coefficient

- Parents
    id
    nom
    contact
    profession
    adresse

- Etudiants
    matricule
    nom
    prenom
    date_naissance
    sexe
    specialite
    parent


- Notes
    matricule
    code
    note

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
    nom varchar(50),
    coefficient int
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
("Go"),
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
-- (1, 2, ),
(1, 3, 3),
(1, 4, 5),
(1, 6, 7),
(1, 7, 1),
(1, 8, 10),
(1, 9, 7),
-- (1, 10, ),
-- (1, 11, ),
-- (1, 12, ),
-- (1, 13, ),
-- 
(2, 1, 1),
-- (2, 2, ),
(2, 3, 7),
(2, 4, 8),
(2, 6, 2),
(2, 7, 4),
-- (2, 8, ),
-- (2, 9, ),
-- (2, 10, ),
-- (2, 11, ),
-- (2, 12, ),
(2, 13, 10),
-- 
-- (3, 1, ),
-- (3, 2, ),
(3, 3, 10),
(3, 4, 10),
-- (3, 6, ),
(3, 7, 8),
-- (3, 8, ),
-- (3, 9, ),
-- (3, 10, ),
-- (3, 11, ),
-- (3, 12, ),
(3, 13, 5),
-- 
(4, 1, 5),
(4, 2, 3),
(4, 3, 3),
(4, 4, 7),
(4, 6, 10),
(4, 7, 4),
(4, 8, 7),
-- (4, 9, ),
-- (4, 10, ),
-- (4, 11, ),
-- (4, 12, ),
(4, 13, 1),
-- 
-- 
(5, 1, 5),
(5, 2, 3),
(5, 3, 3),
(5, 4, 7),
(5, 6, 10),
(5, 7, 4),
(5, 8, 7),
-- (5, 9, ),
(5, 10, 10),
-- (5, 11, ),
-- (5, 12, ),
-- (5, 13, 1),
-- 
(6, 1, 2),
(6, 2, 2),
(6, 3, 3),
(6, 4, 7),
(6, 6, 8),
(6, 7, 4),
(6, 8, 7),
-- (6, 9, ),
-- (6, 10, ),
-- (6, 11, ),
(6, 12, 10),
(6, 13, 7);
-- 


create table Parents(
    id int primary key auto_increment,
    nom varchar(50),
    contact varchar(12),
    profession varchar(100),
    addresse_id int
);

insert into Parents(
    nom,
    contact,
    profession,
    addresse_id
) values
("Alfred Aldebarand", "+22501010101", "Alchemiste", 1),
("Edward Elric", "", "Alchemiste d'Etat", 2),
("", "", "", ),
("", "", "", ),
("", "", "", ),
("", "", "", ),
("", "", "", ),
("", "", "", ),
("", "", "", ),
("", "", "", ),
("", "", "", );

create table Niveaux(
    id int primary key auto_increment,
    nom varchar(20)
);

create table Grades(
    id int primary key auto_increment,
    nom varchar(20),
    salaire int
);

create table Professeurs(
    matricule int primary key auto_increment,
    nom varchar(50),
    prenom varchar(50),
    contact varchar(12),
    addresse_id int
);

create table Enseigner(
    matricule int,
    id_matière int
)

create table Educateurs(
    matricule int primary key auto_increment,
    nom varchar(50),
    prenom varchar(50),
    contact varchar(12),
    addresse int
);


create table Classes(
    id int primary key auto_increment,
    nom varchar(50),
    chef int,
    souschef int,
    prof_principal int,
    educateur int

);

create table Etudiants(
    matricule int primary key auto_increment,
    nom varchar(50),
    prenom varchar(50),
    date_naissance date,
    specialite varchar(100),
    parent int,
    classe int
);

create table Notes(
    matricule int,
    id_matiere int,
    note int
);


-- INSERTION


1. La liste de tous les étudiants.
select * from Etudiant

2. Nom et coefficient des matières.
select nom_matiere , coefficient from Matiere

3. Les numéros des cartes d’identité des étudiants dont la moyenne entre 4 et 8.

select matricule from Note , Matiere mat where Note . id_matiere_matiere = Mat . code_matiere
group by matricule
having (sum ( note_examen * coefficient )/ sum ( coefficient )) between 4 and 8

4. La liste des étudiants dont le nom commence par ‘ben’.
select * from Etudiant where Nom like "Ben %"

5. Le nombre des étudiants qui ont comme matière ‘12518’
select * from Note where code_matiere =12518

6. La somme des coefficients des matières.
select sum ( coefficient ) from Matiere

7. Les noms des étudiants qui une note_examen >10.
select distinct Nom from Note , Etudiant
where Note . numero_carte_etudiant = Etudiant . numero_carte_etudiant and note_examen >10

8. Afficher les noms et les coefficients des matières étudier par l’étudiant "01234568".
select nom_matiere , coefficient from Note , Matiere
where Note . numero_carte_etudiant =" 01234568 "


-- 
2. Quelles sont, parmi l’ensemble des notes, la note la plus haute et la note la plus basse ? SELECT MIN(Note) as ’plus
basse note’, MAX(Note) as ’plus haute note’ FROM EVALUER

3. Quelles sont les moyennes de chaque étudiant dans chacune des matières ? SELECT E.NEtudiant, E.Nom, E.Prénom,
M.LibelléMat, M.CoeffMat, AVG(EV.Note) AS MoyEtuMat FROM EVALUER EV, MATIERE M, ETUDIANT E
WHERE EV.CodeMat = M.CodeMat AND EV.NEtudiant = E.NEtudiant GROUP BY E.NEtudiant, M.LibelléMat

4. Quelles sont les moyennes par matière ? Avec la vue MGETU de la question 3 ( MOYETUMAT)
SELECT LibelleMat , AVG ( MoyEtuMat ) FROM MOYETUMAT GROUP BY LibelleMat

5. Quelle est la moyenne générale de chaque étudiant ? Avec la vue MGETU de la question 3 ( MOYETUMAT)
SELECT NEtudiant , Nom , SUM ( MoyEtuMat * CoeffMat )/ SUM ( CoeffMat ) AS MgEtu
FROM MOYETUMAT GROUP BY NEtudiant

6. Quelle est la moyenne générale de la promotion ? Avec la vue MGETU de la question 5 :
SELECT AVG ( MgEtu ) FROM MGETU

7. Quels sont les étudiants qui ont une moyenne générale supérieure ou égale à la moyenne générale de la promotion ?
Avec la vue MGETU de la question 5
SELECT NEtudiant , Nom , Prenom , MgEtu FROM MGETU
WHERE MgEtu >= ( SELECT AVG ( MgEtu ) FROM MGETU )


--
1. Les informations relatives aux étudiants (Code, Nom et Date de naissance) selon l’ordre alphabétique croisant du nom
SELECT * FROM ETUDIANT ORDER BY NomEt ASC

2. Les noms et les grades des enseignants de la matière dont le nom est ‘BD’.
SELECT E . NomEns , E . GradeEns FROM ENSEIGNANT E INNER JOIN MATIERE M
ON M . CodeMat = E . CodeMat WHERE M . NomMat ="BD"

3. La liste distincte formée des noms et les coefficients des différentes matières qui sont enseignées par des enseignants
de grade ‘Grd3’.

SELECT DISTINCT ( M . NomMat ) , M . CoefMat FROM ENSEIGNANT E
INNER JOIN MATIERE M ON M . CodeMat = E . CodeMat WHERE E . GradeEns =" Grd3 "

4. La liste des matières (Nom et Coefficient) qui sont suivies par l’étudiant de code ‘Et321’.
SELECT M . NomMat , M . CoefMat FROM MATIERE M INNER JOIN NOTE N
ON M . CodeMat = N . CodeMat INNER JOIN ETUDIANT E ON E . CodeEt = N . CodeEt
WHERE E . CodeEt =" Et321 "

