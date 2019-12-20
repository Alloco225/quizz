
hkrm2747

méfaits
countries

gestion projets
bourse

Partie 1:
méfaits:
mischievousNephews

Vos neveux Huey Dewey et Louie restent avec vous pendant les vacances d 'hiver. Depuis leur arrivée,
vous avez à peine eu une journée sans incident - les petits coquins font tout ce qu ' ils veulent !
Vous avez décidé de suivre et d 'analyser leur comportement, vous avez donc créé la table des méfaits dans votre base de données locale. La table comporte les colonnes suivantes:

date_mefait: la date du méfait (du type date);

auteur: le neveu qui a causé le méfait ("Huey", "Dewey" ou "Louie");

titre: le titre du méfait.

Il semble que chacun de vos neveux soit actif un jour spécifique de la semaine.--
Vous décidez de vérifier votre théorie en créant un autre tableau comme suit: 

Le tableau résultant doit contenir quatre colonnes,
jour_semaine,
date_mefait,
auteur et titre,
où jour_semaine est le jour de la semaine de date_mefait (
    0 pour lundi,
    1 pour mardi,
    etc.avec 6 pour dimanche
).

mefait date_mefait auteur titre 2016 -12 -01 Dewey Faire cuire le poisson doré dans un seau 2016 -12 -01 Dewey Peindre les murs en rose 2016 -12 -01 Huey Manger tous les bonbons 2016 -12 -01 Louie Envelopper le chat dans du papier toilette 2016 -12 -08 Louie Jouer au hockey sur linoléum 2017 -01 -01 Huey Briser une fenetre 2017 -02 -06 Dewey Créer une patinoire sur le porche -- enonce
-- sql creation
create table mefait(
    date_mefait date,
    auteur varchar(50),
    titre varchar(255)
);

insert into
    mefait(date_mefait, auteur, titre)
values
    (
        '2016-12-01',
        'Dewey',
        'Faire cuire le poisson doré dans un seau'
    ),
    (
        '2016-12-01',
        'Dewey',
        'Peindre les murs en rose'
    ),
    ('2016-12-01', 'Huey', 'Mange tous les bonbons'),
    (
        '2016-12-01',
        'Louie',
        'Envelopper le chat dans du papier toilette'
    ),
    (
        '2016-12-08',
        'Louie',
        'Jouer au hockey sur linoléum'
    ),
    ('2017-01-01', 'Huey', 'Briser une vitre'),
    (
        '2017-02-06',
        'Dewey',
        'Créer une patinoire sur le porche'
    );

questions
1
2
3
4
5





partie 2:
countries

      
### Exercice 2: 
Titre: Selection des pays

Enoncé :
Votre ami veut devenir guide professionnel et voyager dans le monde entier. Dans la poursuite de ce rêve, elle s' est inscrite à l 'école des guides touristiques. Les professeurs de cette école se sont avérés très exigeants, et l' un d 'eux a confié à votre ami une tâche difficile qu' elle doit terminer au cours du week -
end.Voici la tâche: étant donné une liste de pays,
votre ami devrait identifier tous les pays qui sont en Afrique.Pour l 'aider, vous avez décidé d' écrire une fonction qui trouvera tous ces pays de n 'importe quel ensemble de pays. La table des pays dans laquelle les pays sont stockés a la structure suivante:
nom: le nom du pays;
continent: le continent sur lequel le pays est situé;
population: la population du pays.

Question : Votre tâche consiste à renvoyer un nouveau tableau qui a les mêmes colonnes, mais qui ne contient que les pays d'' Afrique.Les pays doivent être classés par ordre alphabétique selon leur nom.Exemple: Voici le contenu de la table pays nom continent population Austria Europe 8767919 Belize North America 375909 Botswana Africa 2230905 Cambodia Asia 15626444 Cameroon Africa 22709892 --sql creation
-- 
--

CREATE TABLE pays(
    nom varchar(200),
    continent varchar(200),
    population INTEGER
);

insert into
    pays
values
    ("Austria", "Europe", 8767919),
    ("Belize", "North America", 375909),
    ("Botswana", "Africa", 2230905),
    ("Cambodia", "Asia", 15626444),
    ("Cameroon", "Africa", 22709892);

Sqldepart:
SELECT
WHERE
ORDER BY
;

Sqlreponse:
SELECT
    *
FROM
    pays
WHERE
    continent = 'Africa'
ORDER BY
    nom;

questions:
1
2
3
4
5

partie 3 : 


questions :
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


questions :
1
2
3
4
5

partie 5 : bourse


questions :
1
2
3
4
5
