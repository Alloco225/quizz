

Bienvenue NaNien 3.20

Ce quizz est composé de 5 parties indépendantes avec 6 Questions chacunes.
Il durera 30 min. Ne perdez pas de temps à lire les énnoncés.

PARTIE 1:

Soit la base de données d’un festival de musique : Dans une représentation peut participer un ou plusieurs musiciens. Un
musicien ne peut participer qu’à une seule représentation.
— Representation (Num_Rep , titre_Rep , lieu)
— Musicien (Num_mus , nom , #Num_Rep)
— Programmer (Date , #Num_Rep , tarif)
Ecrire la commande SQL permettant de rechercher :

Questions :

1. La liste des titres des représentations.
SELECT * FROM Representation

2. La liste des titres des représentations ayant lieu au « théâtre allissa ».
SELECT * FROM Representation WHERE lieu =" theatre ␣ allissa "

3. La liste des noms des musiciens et des titres et les titres des représentations auxquelles ils participent.
SELECT M . nom , R . titre FROM Musicien M INNER JOIN Representation R
2 ON R . Num_rep = M . Num_rep

4. La liste des titres des représentations, les lieux et les tarifs du 25/07/2008.
SELECT R . titre , R . lieu , P . tarif FROM Programmer P INNER JOIN Representation R ON P . Num_rep = R . Num_rep WHERE P . date =" 25 -07 -2008 "

5. Le nombre des musiciens qui participent à la représentations n°20
SELECT COUNT (*) FROM Musicien WHERE Num_rep =20

Les représentations et leurs dates dont le tarif ne dépasse pas 5000 Francs.
SELECT R . Num_Rep , R . titre , P . Date FROM Representation R
2 INNER JOIN Programmer P ON R . Num_Rep = P . Num_Rep WHERE P . tarif <=5000



Partie 2:

Soit la base de données suivante :
— Départements :( DNO, DNOM, DIR, VILLE)
— Employés : ( ENO, ENOM, PROF, DATEEMB, SAL, COMM, #DNO)
Exprimez en SQL les requêtes suivantes :

1. Donnez la liste des employés ayant une commission
SELECT * FROM Employes WHERE COMM NOT NULL

2. Donnez les noms, emplois et salaires des employés par emploi croissant, et pour chaque emploi, par salaire décroissant
SELECT ENOM , PROF , SAL FROM Employes ORDER BY PROF ASC , SAL DESC

3. Donnez le salaire moyen des employés
SELECT AVG ( SAL ) FROM Employes

4. Donnez le salaire moyen du département Production
SELECT AVG ( E . SAL ) FROM Employes E INNER JOIN Departement D ON E . DNO = D . DNO WHERE D . DNOM =" production "


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
Ecrire les requêtes SQL permettant :

1. D’afficher les noms et les prix des logiciels appartenant au projet ayant comme titre « gestion de stock », triés dans
l’ordre décroissant des prix . 

SELECT L . NomLog , L . PrixLog FROM Logiciel L INNER JOIN Projet P ON L . NumProj = P . NumProj WHERE P . TitreProj =" gestion ␣de␣ stock " ORDER BY L . PrixLog DESC


2. D’afficher le total des prix des logiciels du projet numéro 10. Lors de l’affichage, le titre de la colonne sera « cours
total du projet ».
SELECT SUM ( PrixLog ) as " cout ␣ total ␣du␣ projet " FROM Logiciel WHERE NumPRoj =10

Afficher le nombre de développeurs qui ont participé au projet intitulé « gestion de stock »
SELECT count (*) FROM Developpeur D INNER JOIN Realisation R ON D . NumDev = R . NumDev INNER JOIN Projet P ON P . NumProj = R . NumProj

4. Afficher les projets qui ont plus que 5 logiciels
SELECT NumProj, TitreProj FROM PRojet P INNER JOIN Logiciel
L ON P.NumProj=L.NumProj GROUP BY NumProj HAVING count(*)>5

5. Les numéros et noms des développeurs qui ont participés dans tout les projets.
SELECT NumDev , NomDev FROM Developpeur D INNER JOIN Realisation R ON D . NumDev = R . NumDev GROUP BY NumDev HAVING count (*)=( SELECT COUNT (*) FROM Projet )

6. Les numéros de projets dans lesquelles tous les développeurs y participent dans sa réalisation.
SELECT NumProj , TitreProj FROM Projet P INNER JOIN Realisation R ON P . NumProj = R . NumProj GROUP BY NumProj HAVING count (*)=( SELECT COUNT (*) FROM Developpeur )


