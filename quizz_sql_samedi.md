
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


Exemple

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

Exemple: 

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




partie 3 : 


Questions :
1
2
3
4
5

partie 4 : gestion projets

Liste des projets 
Enoncé: 

Votre patron veut identifier les projets réussis en cours dans votre entreprise,
il vous a donc demandé de préparer une liste de tous les projets actuellement actifs et de leur revenu mensuel moyen.
Vous avez stocké les informations sur ces projets dans une base de données simple avec une seule table Projets qui comporte cinq colonnes: 

id_interne: l ''identifiant interne de l'' entreprise pour le projet;
nom_projet: le nom officiel du projet;
taille_equipe: le nombre d ''employés travaillant sur le projet;
chef_equipe: le nom du chef de projet;
revenu: le revenu mensuel moyen du projet.

Question : 
Votre patron dit que les identifiants de projet internes ne sont pas pertinents pour lui et qu''il n ''est pas intéressé par la taille des équipes. Comme c'' est le cas,
il souhaite que vous créiez une autre table en supprimant les colonnes id_interne et taille_equipe de la table Projets existante.Renvoyez - le trié par id_interne dans l ''ordre croissant.

Voici le contenu de la table Projets
id_interne		nom_projet		taille_equipe		chef_equipe	revenu
1384			MapReduce		100			Jeffrey Dean	0
2855			Windows			1000			Bill Gates	100500
5961			Snapchat		3			Evan Spiegel	2000


Exemple: 

--sql creation
	CREATE TABLE Projets (
	id_interne INTEGER PRIMARY KEY NOT NULL,
	nom_projet VARCHAR(200),
	taille_equipe INTEGER,
	chef_equipe VARCHAR(200),
	revenu INTEGER
	);

	INSERT INTO Projets VALUES (1384, "MapReduce",100,"Jeffrey Dean",0),
				(2855, "Windows",1000,"Bill Gates",100500),
				(5961, "Snapchat",3,"Evan Spiegel",2000);


Sqldepart: 
	SELECT 
        
    FROM 
        
    ORDER BY ;


Sqlreponse: 
	SELECT 
        nom_projet, 
        chef_equipe, 
        income 
    FROM 
        Projets
    ORDER BY id_interne;


Questions :
1
2
3
4
5

partie 5 : bourse


Questions :
1
2
3
4
5
