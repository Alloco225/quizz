-- Section 2 
-- Exercices
Exercice 1 -- titre
volleyBallResults -- enonce
Vous parcourez régulièrement le Web à la recherche de nouveaux jeux et ajoutez les résultats de ces jeux au tableau des résultats stocké dans Après chaque mise à jour,
le tableau doit être trié par ordre croissant par le nombre total de matchs gagnés.Les résultats de cette année sont assez merveilleux - à tout moment,
il n 'y a pas deux équipes qui ont remporté le même nombre de matchs!

Le tableau des résultats contient les colonnes suivantes:

nom - le nom unique de l' équipe;

pays - le pays de l 'équipe;
marqué-le nombre de buts marqués;
manqué - le nombre de buts manqués;
victoires - le nombre total de matchs gagnés par l' équipe.Votre tâche consiste à trier le tableau de résultats donné par ordre croissant selon le nombre de victoires;

--sql creation

create table results(
    id int auto_increment primary key,
    nom varchar(50),
    country varchar(50),
    scored int,
    missed int,
    wins int
);

insert into
    results(nom, country, scored, missed, wins)
values
    ('FC Tokyo', 'Japan', 26, 28, 1),
    ('Fujian', 'China', 24, 26, 0),
    ('Jesus Maria', 'Argentina', 25, 23, 3),
    ('University Blues', 'Australia', 16, 25, 2);

-- sql depart
select
from
order by
    -- sql reponse
select
    *
from
    results
order by
    wins;

-- Exercice 2
mostExpensive M.Cash veut garder une trace de ses dépenses,
il a donc préparé une liste de tous les produits qu 'il a achetés ce mois-ci. Maintenant, il est intéressé à trouver le produit sur lequel il a dépensé le plus d' argent.S 'il y a des produits qui coûtent la même somme d' argent,
il aimerait trouver celui avec le plus petit nom lexicographiquement.La liste des dépenses est stockée dans un tableau Produits qui comporte les colonnes suivantes: id: identifiant unique du produit;

nom: le nom unique du produit;

prix: le prix d 'un article;
quantité: le nombre d' articles achetés.Le tableau résultant doit contenir une ligne avec une seule colonne: le produit avec le nom lexicographiquement le plus petit sur lequel M.Cash a dépensé le plus d 'argent.

Le montant total d' argent dépensé pour un produit est calculé en tant que prix * quantité.

--

create table Produits(
    id int primary key auto_increment,
    nom varchar(50),
    quantite int
);

insert into
    Produits(nom, prix, quantite)
values
    ('MacBook Air', 1500, 1),
    ('Magic Mouse', 79, 1),
    ('Spray cleaner', 10, 3);

-- sql depart

-- sql reponse

select
    name
from
    Produits
order by
    prix * quantite desc,
    name asc
limit
    1;

-- select name from Products order by prix * quantite desc, name asc limit 1;



## Tim Add Exercice


Exercice1 :

 Titre: Liste des projets

 Enoncé : Votre patron veut identifier les projets réussis en cours dans votre entreprise, il vous a donc demandé de préparer une liste de tous les projets actuellement actifs et de leur revenu mensuel moyen.

Vous avez stocké les informations sur ces projets dans une base de données simple avec une seule table Projets qui comporte cinq colonnes:

internal_id: l'identifiant interne de l'entreprise pour le projet;
nom_projet: le nom officiel du projet;
team_size: le nombre d'employés travaillant sur le projet;
team_lead: le nom du chef de projet;
revenu: le revenu mensuel moyen du projet.

Question : Votre patron dit que les identifiants de projet internes ne sont pas pertinents pour lui et qu'il n'est pas intéressé par la taille des équipes. Comme c'est le cas, il souhaite que vous créiez une autre table en supprimant les colonnes internal_id et team_size de la table Projects existante. Renvoyez-le trié par internal_id dans l'ordre croissant.

id				nom_projet		taille_equipe	team_lead		income
1384			MapReduce		100				Jeffrey Dean	0
2855			Windows			1000			Bill Gates		100500
5961			Snapchat		3				Evan Spiegel	2000


Exemple: 

--sql creation
	CREATE TABLE Projects (
	internal_id INTEGER PRIMARY KEY NOT NULL,
	project_name VARCHAR(200),
	team_size INTEGER,
	team_lead VARCHAR(200),
	revenue INTEGER
	);

	INSERT INTO Projects VALUES (1384, "MapReduce",100,"Jeffrey Dean",0),
								(2855, "Windows",1000,"Bill Gates",100500),
								(5961, "Snapchat",3,"Evan Spiegel",2000);


Sqldepart: 
	SELECT 
        
    FROM 
        
    ORDER BY ;


Sqlreponse: 
	SELECT 
        project_name, 
        team_lead, 
        income 
    FROM 
        Projects
    ORDER BY internal_id;
