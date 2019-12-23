
Bienvenue NaNien 3.20

Ce quizz est composé de 5 parties indépendantes avec 6 Questions chacunes.
Il durera 30 min. Ne perdez pas de temps à lire les énnoncés.



PARTIE 1: 


Vos neveux Natacha, Tony et Bruce restent avec vous pendant les congés de décembre. Depuis leur arrivée,
vous avez à peine eu une journée sans incident - les petits coquins font tout ce qu ' ils veulent !
Vous avez décidé de suivre et d 'analyser leur comportement, vous avez donc créé la table des méfaits dans votre base de données locale. 

La table mefait comporte les colonnes suivantes:

date_mefait: la date du méfait (du type date);

auteur: le neveu qui a causé le méfait ("Natacha", "Tony" ou "Bruce");

titre: le titre du méfait.


Voici un exemple du contenu de la table

mefait      
date_mefait auteur titre 
2012-10-06  Tony   Faire tomber la statue de marbre


create table mefait(
    date_mefait date,
    auteur varchar(50),
    titre varchar(255)
);

insert into
    mefait(date_mefait, auteur, titre)
values
    (
        '2018-12-01',
        'Tony',
        'Faire cuire le poisson doré dans un seau'
    ),
    (
        '2018-12-01',
        'Tony',
        'Peindre les murs en rose'
    ),
    (
        '2018-11-25', 
        'Natacha', 
        'Manger tous les bonbons'
    ),
    (
        '2018-12-01',
        'Bruce',
        'Envelopper le chat dans du papier toilette'
    ),
    (
        '2018-12-08',
        'Bruce',
        'Jouer au hockey sur linoléum'
    ),
    (
        '2019-01-01', 
        'Natacha', 
        'Briser ma vitre préférée'
    ),
    (
        '2019-02-06',
        'Tony',
        'Créer une patinoire sur le porche'
    );

Questions :

1
Combien de méfaits on été commis le 1e décembre 2018 ?

select
from
where ;

select
    count(*)
from
  mefait
where date_mefait = '2018-12-01';


2
Afficher la liste des méfaits de Natacha triés par les plus récents.

select
    titre
from
  mefait
where auteur = 'Natacha'
order by date_mefait desc;

select
    titre
from
  mefait
where auteur = 'Natacha'
order by date_mefait desc;

3

Qui a brisé la vitre de votre fenêtre préférée ?

select
from
where
like ;

select
    auteur
from
  mefait
where titre like '%vitre%';

4
Quel est le méfait le plus ancien ?

select
from
order by
limit ;

select
    titre
from
  mefait
order by date_mefait
limit 1;

5
Qui a commis le dernier méfait ?

select
from
order by
limit ;

select
    auteur
from
  mefait
order by date_mefait desc
limit 1;

6
Un des neveux a peint les murs en rose, trouvez qui et à quelle date.

select
from
where
like
;

select
    auteur, date_mefait
from
  mefait
where titre like '%rose'
;






PARTIE 2:


Votre ami veut devenir guide professionnel et voyager dans le monde entier. Dans la poursuite de ce rêve, elle s' est inscrite à l 'école des guides touristiques. Les professeurs de cette école se sont avérés très exigeants, et l' un d 'eux a confié à votre ami une tâche difficile qu' elle doit terminer au cours du week -
end.

La table des pays dans laquelle les pays sont stockés a la structure suivante:

nom: le nom du pays;
continent: le continent sur lequel le pays est situé;
population: la population du pays;

Voici un exemple du contenu de la table: 

pays 
nom                 continent       population 
Autriche            Europe          8767919 
Cote d'Ivoire       Afrique         24290582


CREATE TABLE pays(
    nom varchar(200),
    continent varchar(200),
    population INTEGER
);

insert into
    pays
values
    ("Autriche", "Europe", 8767919),
    ("Cote d'Ivoire", "Afrique", 24290582),
    ("Botswana", "Afrique", 2230905),
    ("Cambodge", "Asie", 15626444),
    ("Cameroon", "Afrique", 22709892);


Questions:
1
Afficher les noms des pays d'afrique.

select
from
where ;

select nom
from pays
where continent = "Afrique";

2
Afficher les noms de deux pays où la population dépasse 10 millions.
select
from
where
limit;

select nom
from pays
where population > 10000000
limit 2;

3
Triez la table par ordre de population croissante.

select
from
order by;

select *
from pays
order by population;

4
Afficher les noms des pays dont la population est comprise entre 10 et 25 millions trié par noms croissants.

select
from
where 
and
order by ;

select nom
from pays
where population > 10000000 and population < 25000000
order by nom asc;

5
Quel est le continent qui abrite le pays à la plus grande population ?

select
from
order by
limit ;

select continent
from pays
order by population desc
limit 1;

6
Quel est le nom, la population et le continent du pays le moins peuplé ?

select
from
order by
limit ;

select nom, population, continent
from pays
order by population asc
limit 1;




PARTIE 3 : 

Votre patron veut identifier les projets réussis en cours dans votre entreprise,
il vous a donc demandé de préparer une liste de tous les projets actuellement actifs et de leur revenu mensuel moyen.
Vous avez stocké les informations sur ces projets dans une base de données simple avec une seule table Projets qui comporte cinq colonnes: 

id_interne: l 'identifiant interne de l' entreprise pour le projet;
nom_projet: le nom officiel du projet;
taille_equipe: le nombre d 'employés travaillant sur le projet;
chef_equipe: le nom du chef de projet;
revenu: le revenu mensuel moyen du projet.


Voici le contenu de la table 
Projets
id_interne		nom_projet		taille_equipe		chef_equipe	    revenu
1384			MapReduce		100			        Jeffrey Dean	0
2855			Windows			1000			    Bill Gates	    100500
5961			Snapchat		3			        Evan Spiegel	2000


CREATE TABLE Projets (
	id_interne INTEGER PRIMARY KEY NOT NULL,
	nom_projet VARCHAR(200),
	taille_equipe INTEGER,
	chef_equipe VARCHAR(200),
	revenu INTEGER
);

INSERT INTO Projets 
VALUES 
(
    1384, 
    "MapReduce",
    100,
    "Jeffrey Dean"
    ,0
),
(
    2855, 
    "Windows",
    1000,
    "Bill Gates",
    100500
),
(
    5961, 
    "Snapchat",
    3,
    "Evan Spiegel",
    2000
);

Questions :

1
Quel est le dernier projet en cours ?

select
from
order by
limit ;

select nom_projet
from Projets
order by id_interne desc
limit 1;

2
Qui est le chef de projet qui rapporte le plus d'argent à l'entreprise ?

select
from
order by
limit ;

select chef_equipe
from Projets
order by revenu desc
limit 1;


3
Combien de membres comporte l'équipe la plus petite ?

select
from
order by
limit 1;

select taille_equipe
from Projets
order by taille_equipe asc
limit 1;

4
Quel est le nom du chef, la taille d'equipe et le revenu du projet Snapchat ?

select
from
where ;

select chef_equipe, taille_equipe, revenu
from Projets
where nom_projet = 'Snapchat';

5
Un des projets n'a rien rapporté, quel est le nom de ce projet et qui le dirige ?

select
from
where ;

select nom_projet, chef_equipe
from Projets
where revenu = 0;

6
Quel est le projet que dirige un certain Bill ?

select
from
where
like ;

select nom_projet
from Projets
where chef_equipe like "%Bill%";


partie 4 : bourse


Questions :
1
2
3
4
5


partie 5 : 


Questions :
1
2
3
4
5

Exo 17:

/*Votre ami veut devenir guide professionnel et voyager dans le monde entier. Dans la poursuite de ce rêve, elle s'est inscrite à l'école des guides touristiques. Les professeurs de cette école se sont avérés très exigeants et l'un d'eux a confié à votre amie une tâche difficile qu'elle doit terminer au cours du week-end.

Voici la tâche: étant donné une liste de pays, votre ami doit calculer la population moyenne et la population totale de tous les pays de la liste. Pour l'aider, vous avez décidé d'écrire une fonction qui calculera les valeurs requises pour un certain nombre de pays. La table des pays dans laquelle les pays sont stockés a la structure suivante:

nom: le nom du pays;
continent: le continent sur lequel le pays est situé;
population: la population du pays.
Votre tâche consiste à renvoyer un nouveau tableau qui contient le nombre de pays dans la liste donnée, ainsi que leur population moyenne et totale, dans les colonnes intitulées nombre, moyenne et total.
*/
Create table pays (
	id integer primary key auto_increment,
	nom varchar(100),
	continent varchar(100),
	population integer
);

insert into pays values(1,"Grenada","North America",103328),
	(2,"Monaco","Europe",38400),
	(3,"San Marino","Europe",33005),
	(4,"Vanuatu","Australia",277500);

Questions :

1) Ecrivez une requète qui compte le nombre de pays et l affiche dans une colone nombre.

-- sqldepart
SELECT 
FROM ;
--sqlreponse
SELECT COUNT(*) nombre 
    FROM pays;

2) Ecrivez une requète qui calcule la moyenne des population et l affiche dans une colone moyenne.

-- sqldepart
SELECT 
FROM ;
--sqlreponse
SELECT AVG(population) as moyenne 
    FROM pays;

3) Ecrivez une requète qui calcule la somme des population et l affiche dans une colone total.

-- sqldepart
SELECT 
FROM ;
--sqlreponse
SELECT SUM(population) as total 
    FROM pays;

4) Ecrivez une requète qui retourne la somme et la moyenne des populations supérieurs à 50000 dans les colonnes total2 et moyenne2.


-- sqldepart
SELECT 
FROM 
WHERE ;
--sqlreponse
SELECT SUM(population) as total2,AVG(population) as moyenne2
    FROM pays
    WHERE population > 50000;

5) Ecrivez une requète qui retourne le nom du pays dont la population est inférieur à 200000.

-- sqldepart
SELECT 
FROM 
WHERE ;
--sqlreponse
SELECT nom
    FROM pays
    WHERE population < 200000;
