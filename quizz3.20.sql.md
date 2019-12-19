


-- Exercices
Exercice 1

-- titre
volleyBallResults

-- enonce
Vous parcourez régulièrement le Web à la recherche de nouveaux jeux et ajoutez les résultats de ces jeux au tableau des résultats stocké dans Après chaque mise à jour, le tableau doit être trié par ordre croissant par le nombre total de matchs gagnés.Les résultats de cette année sont assez merveilleux - à tout moment, il n'y a pas deux équipes qui ont remporté le même nombre de matchs!

Le tableau des résultats contient les colonnes suivantes:

nom - le nom unique de l'équipe;
pays-le pays de l'équipe;
marqué-le nombre de buts marqués;
manqué - le nombre de buts manqués;
victoires - le nombre total de matchs gagnés par l'équipe.
Votre tâche consiste à trier le tableau de résultats donné par ordre croissant selon le nombre de victoires.

--sql creation
name	country	scored	missed	wins
FC Tokyo	Japan	26	28	1
Fujian	China	24	26	0
Jesus Maria	Argentina	25	23	3
University Blues	Australia	16	25	2

create table results(
    id int auto_increment primary key,
    name varchar(50),
    country varchar(50),
    scored int,
    missed int, 
    wins int
);

insert into results(name, country, scored, missed, wins)
values
( 'FC Tokyo',	'Japan', 26, 28, 1),
( 'Fujian', 'China', 24, 26, 0),
( 'Jesus Maria', 'Argentina', 25, 23, 3),
( 'University Blues', 'Australia', 16, 25, 2);

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

