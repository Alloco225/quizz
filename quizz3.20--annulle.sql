-- Section 2 Always leave table in order 
-- Exercices E6
Exercice 1 -- titre
volleyBallResults -- enonce
Au service Vous parcourez régulièrement le Web à la recherche de nouveaux jeux et ajoutez les résultats de ces jeux au tableau des résultats stocké dans une base de donnée.Après chaque mise à jour,
le tableau doit être trié par ordre croissant par le nombre total de matchs gagnés.Les résultats de cette année sont assez merveilleux - à tout moment,
il n 'y a pas deux équipes qui ont remporté le même nombre de matchs!

Le tableau des résultats contient les colonnes suivantes:

nom : le nom unique de l' équipe;

pays - le pays de l 'équipe;
marqué-le nombre de buts marqués;
manqué - le nombre de buts manqués;
victoires - le nombre total de matchs gagnés par l' équipe.Votre tâche consiste à trier le tableau de résultats donné par ordre croissant selon le nombre de victoires;

--sql creation
create table resultats(
    id int auto_increment primary key,
    nom varchar(50),
    pays varchar(50),
    marques int,
    manques int,
    victoires int
);

insert into
    resultats(nom, pays, marques, manques, victoires)
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
    resultats
order by
    victoires;

-- Exercice 2 E7
mostExpensive --
--
M.Cash veut garder une trace de ses dépenses,
il a donc préparé une liste de tous les produits qu 'il a achetés ce mois-ci. Maintenant, il est intéressé à trouver le produit sur lequel il a dépensé le plus d' argent.S 'il y a des produits qui coûtent la même somme d' argent,
il aimerait trouver celui avec le plus petit nom.La liste des dépenses est stockée dans un tableau Produits qui comporte les colonnes suivantes: id: identifiant unique du produit;

nom: le nom unique du produit;

prix: le prix d 'un article;
quantité: le nombre d' articles achetés.Le tableau résultant doit contenir une ligne avec une seule colonne: le produit avec le nom le plus petit sur lequel M.Cash a dépensé le plus d 'argent.

Le montant total d' argent dépensé pour un produit est calculé en tant que prix * quantité.--
create table Produits(
    id int primary key auto_increment,
    nom varchar(50),
    prix int,
    quantite int
);

insert into
    Produits(nom, prix, quantite)
values
    ('MacBook Air', 1500, 1),
    ('Magic Mouse', 79, 1),
    ('Spray cleaner', 10, 3);

-- sql depart
select
from
order by
limit
;

-- sql reponse
select
    nom
from
    Produits
order by
    prix * quantite desc,
    nom asc
limit
    1;

-- select nom from Products order by prix * quantite desc, nom asc limit 1;
-- Exercice 3 E8
contestLeaderBoard --
Vous travaillez comme recruteur dans une grande entreprise informatique et vous recherchez activement des candidats qui occupent les premières places dans les grands concours de programmation.du classement et avec succès.Vous avez déjà interviewé tous les lauréats (les 3 meilleurs participants), mais cela ne suffit pas pour le moment.Votre entreprise a besoin de plus de spécialistes, alors maintenant vous souhaitez vous connecter avec les participants qui ont pris les 5 prochaines places.Le classement du concours est stocké dans une table classement avec les colonnes suivantes: --
id: identifiant unique du participant;

nom: le nom du participant;

score: le score obtenu par le participant au concours.Le tableau résultant devrait contenir les noms des participants qui ont pris la 4e à la 8e place inclusivement,
triés par ordre décroissant de leur place.--
S 'il y a moins de 8 participants, les résultats devraient contenir ceux qui se sont classés moins bien que la 3e place. --

Il est garanti qu' il y a au moins 3 gagnants dans le classement et que tous les participants ont des scores différents.--
-- sql creation
create table classement(
    id int primary key auto_increment,
    nom varchar(50),
    score int
);

insert into
    classement(id, nom, score)
values
    (1, 'gongy', 3001),
    (2, 'urandom', 2401),
    (3, 'eduardische', 2477),
    (4, 'Gassa', 2999),
    (5, 'bcc32', 2658),
    (6, 'Alex_2oo8', 6000),
    (7, 'mirosuaf', 2479),
    (8, 'Sparik', 2399),
    (9, 'thomas_holmes', 2478),
    (10, 'cthaeghya', 2400);

-- sql depart
select
from
order by
limit
;

--sql reponse
select
    nom
from
    classement
order by
    score desc
limit
    3, 5;

-- Exercice 4 E9
gradeDistribution --
-- contenu
À la fin de chaque semestre, votre professeur d '' « Introduction aux bases de données » enregistre les résultats des examens de chaque étudiant dans un système de base de données simple.Dans le tableau de base de données Moyennes, il y a cinq colonnes: --
Nom: le nom de l '' élève;

ID: le numéro d '' identification de l '' élève (un entier positif de 5 octets);

Semestre1: résultat du premier mi - parcours sur 100 points;

Semestre2: résultat du deuxième mi - parcours sur 100 points;

Final: résultat de l ' examen final, cette fois sur 200 points possibles. ' --
Selon la politique de l 'école, 
il existe trois façons possibles d' évaluer une note: Option 1: Semestre 1: 25 % de la note Mi - parcours 2: 25 % de la note Examen final: 50 % de la note Option 2: Semestre 1: 50 % de la note Mi - parcours 2: 50 % de la note Option 3: Examen final: 100 % de la note.La note finale de chaque élève provient de l 'option qui fonctionne le mieux pour cet élève.

En tant qu' assistant d 'enseignement (TA), 
vous devez interroger le nom 
et l' id de tous les élèves dont la meilleure note provient de l 'option 3, 
triés en fonction des 3 premiers caractères de leur nom.
Si les 3 premiers caractères de deux noms sont identiques , 
l' étudiant ayant la valeur d 'identification la plus faible arrive en premier.';

--
À la fin de chaque semestre,
votre professeur de bases de données enregistre les résultats des examens de chaque étudiant dans un système de base de données simple.Dans la table Moyennes,
il y a cinq colonnes: Nom: le nom de l 'élève;

ID: le numéro d' identification de l 'élève (un entier positif de 5 octets);

Semestre1: résultat du premier semestre sur 100 points;

Semestre2: résultat du deuxième semestre sur 100 points;

Final: résultat de l' examen final,
cette fois sur 200 points;

Selon la politique de l 'école, il existe trois façons possibles de calculer les moyennes:

Option 1:

Semestre 1: 25% de la moyenne

Semestre 2: 25 % de la moyenne

Final: 50 % de la moyenne

Option 2:

Semestre 1: 50 % de la moyenne

Semestre 2: 50 % de la moyenne

Option 3:

Final: 100 % de la moyenne.

La moyenne de chaque élève provient de l ' option qui fonctionne le mieux pour cet élève.En tant qu 'assistant d' enseignement,
vous devez interroger le nom et l 'id de tous les élèves dont la meilleure note provient de l' option 3,
triés en fonction des 3 premiers caractères de leur nom.Si les 3 premiers caractères de deux noms sont identiques,
l 'étudiant ayant l' id la plus faible arrive en premier.--
Exemple Pour le tableau suivant Moyennes;

Nom ID Semestre1 Semestre2 Final David 42334 34 54 124 Anthony 54528 100 10 50 Jonathan 58754 49 58 121 Jonty 11000 25 30 180 -- sql creation
create table Moyennes(
    ID int primary key,
    Nom varchar(50),
    Semestre1 int,
    Semestre2 int,
    Final int
);

insert into
    Moyennes(Nom, ID, Semestre1, Semestre2, Final)
values
    ('David', 42334, 34, 54, 124),
    ('Anthony', 54528, 100, 10, 50),
    ('Jonathan', 58754, 49, 58, 121),
    ('Jonty', 11000, 25, 30, 180);

-- sql depart
select
from
where
order by
    -- sql reponse
select
    Nom,
    ID
from
    Moyennes
where
    (
        Final > (Semestre1 / 4 + Semestre2 / 4 + Final / 2)
        and Final > (Semestre1 / 2 + Semestre2 / 2)
    )
order by
    substr(Nom, 1, 3),
    ID;

---------------------------
-- Exercice 5 E10
-- titre
mischievousNephews -- contenu
Vos neveux Huey Dewey et Louie restent avec vous pendant les vacances d 'hiver. --' Depuis leur arrivée,
vous avez à peine eu une journée sans incident - les petits coquins font tout ce qu ' ils veulent !' En fait,
vous êtes même pas fou;

les idées qu 'ils proposent sont assez étonnantes, et il semble qu' il y ait même un système à leur méfait.Vous avez décidé de suivre et d 'analyser leur comportement, vous avez donc créé la table des méfaits dans votre base de données locale. La table comporte les colonnes suivantes: --' --
date_mefait: la date du méfait (du type date);

auteur: le neveu qui a causé le méfait ("Huey", "Dewey" ou "Louie");

titre: le titre du méfait.--
Il semble que chacun de vos neveux soit actif un jour spécifique de la semaine.--
Vous décidez de vérifier votre théorie en créant un autre tableau comme suit: Le tableau résultant doit contenir quatre colonnes,
jour_semaine,
date_mefait,
auteur et titre,
où jour_semaine est le jour de la semaine de date_mefait (
    0 pour lundi,
    1 pour mardi,
    etc.avec 6 pour dimanche
).Le tableau doit être trié par la colonne de jour_semaine,
et pour chaque méfait de Huey jour_semaine devrait aller en premier,
Dewey devrait aller ensuite,
et Louie devrait aller en dernier.En cas d ' égalité,
date_mefait devrait être un bris d ' égalité.le titre doit aller en premier.Il est garanti que toutes les entrées de méfait sont uniques.Exemple Pour le tableau suivant: mefait date_mefait auteur titre 2016 -12 -01 Dewey Faire cuire le poisson doré dans un seau 2016 -12 -01 Dewey Peindre les murs en rose 2016 -12 -01 Huey Manger tous les bonbons 2016 -12 -01 Louie Envelopper le chat dans du papier toilette 2016 -12 -08 Louie Jouer au hockey sur linoléum 2017 -01 -01 Huey Briser une fenetre 2017 -02 -06 Dewey Créer une patinoire sur le porche -- enonce
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

-- sql depart
select
from
order by
;

-- sql reponse
select
    weekday(date_mefait) jour_semaine,
    date_mefait,
    auteur,
    titre
from
    mefait
order by
    jour_semaine,
    field(auteur, 'Huey', 'Dewey', 'Louie'),
    date_mefait,
    titre;

---------------------------
-- Exercice 6 E11
-- titre
suspectInvestigation -- contenu
Une grande quantité d 'argent a été volée aujourd' hui à la banque principale de la ville,
et en tant que chef de la police,
il est de votre devoir de trouver le voleur.Vous stockez des informations sur vos suspects dans la table Suspect,
qui a la structure: id: identifiant unique du suspect;

nom: prénom du suspect;

nom_de_famille: nom de famille du suspect;

taille: taille du suspect;

poids: poids du suspect.--
Vous avez déjà rassemblé des preuves et découvert les indices suivants: selon les enregistrements de la caméra,
le voleur ne mesure pas plus de 170 cm;

le voleur a laissé sa signature près de la scène du crime: "B. Gre?n"."B" représente certainement la première lettre du nom du voleur,
et "Gre?n" est son nom de famille.La 4e lettre du nom de famille est taché de ketchup et est illisible.Pour réduire la liste des suspects,
vous souhaitez filtrer les suspects qui ne peuvent pas être coupables selon les informations obtenues à partir des indices.Veuillez noter que les informations obtenues à partir de l 'indice doivent être considérées comme insensibles à la casse. Par exemple, "GREEN", "green" et "GreEn" doivent tous être inclus dans le nouveau tableau.

Étant donné la table Suspect, créez la table résultante comme suit: la table doit avoir les colonnes id, nom et nom_de_famille et ses valeurs doivent être ordonnées par les identifiants des suspects dans l' ordre croissant.--
Exemple Pour le tableau suivant Suspect -- enonce
-- sql creation
id nom nom_de_famille taille poids 1 John Doe 165 60 2 Bill Green 170 67 3 Baelfire Grehn 172 70 4 Bill Gretan 165 55 5 Brendon Grewn 150 50 6 bill Green 169 50 --
--
create table Suspect(
    id int primary key,
    nom varchar(50),
    nom_de_famille varchar(50),
    taille int,
    poids int
);

insert into
    Suspect(id, nom, nom_de_famille, taille, poids)
values
    (1, 'John', 'Doe', 165, 60),
    (2, 'Bill', 'Green', 170, 67),
    (3, 'Baelfire', 'Grehn', 172, 70),
    (4, 'Bill', 'Gretan', 165, 55),
    (5, 'Brendon', 'Grewn', 150, 50),
    (6, 'bill', 'Green', 169, 50);

-- sql depart
select
from
where
    -- sql reponse
select
    id,
    nom,
    surname
from
    Suspect
where
    height <= 170
    and nom like 'B%'
    and surname like 'Gre_n';

---------------------------
-- Exercice 7 E12
-- titre
suspectInvestigation2 --
-- contenu
Une grande quantité d 'argent a été volée aujourd' hui à la banque principale de la ville,
et en tant que chef de la police,
il est de votre devoir de trouver le voleur.--
Vous stockez des informations sur vos suspects dans le tableau Suspect,
qui a la structure: --
id: identifiant suspect unique;

nom: prénom du suspect;

nom_de_famille: nom de famille du suspect;

taille: taille du suspect;

poids: poids du suspect;

--
Vous avez déjà rassemblé des preuves et découvert les indices suivants: selon les enregistrements de la caméra,
le voleur mesure plus de 170 cm;

le voleur a laissé sa signature près de la scène du crime: "B. Gre?n".--
"B" représente certainement la première lettre du nom du voleur,
et "Gre?n" est son nom de famille.La 4eme lettre du nom de famille est taché de ketchup et est illisible.--
Les indices que vous avez obtenus vous permettent de laisser partir certains suspects car ils ne peuvent pas être coupables,
alors maintenant vous devez créer une liste qui contient les personnes qui peuvent être libérées en fonction des informations recueillies.Pour chacune de ces personnes,
vous devez connaître son identifiant,
--
son nom et son prénom.Veuillez noter que les informations obtenues à partir de l 'indice doivent être considérées comme insensibles à la casse, par exemple, "Bill Green", "Bill GrEeN" et "Bill Green" doivent tous être inclus dans le nouveau tableau. --' --
Étant donné la table Suspect,
créez la table résultante comme suit: la table doit avoir les colonnes id,
nom et nom_de_famille et ses valeurs doivent être ordonnées par les identifiants des suspects dans l 'ordre croissant.  --' Exemple Pour le tableau suivant de Suspect: -- enonce
-- sql creation
id nom nom_de_famille taille weight 1 John Doe 165 60 2 Bill Green 170 67 3 Baelfire Grehn 172 70 4 Bill Gretan 185 55 5 Brendon Grewn 180 50 6 bill Green 172 50 create table Suspect(id int primary key,) -- sql depart
select
from
where
    -- id not in (
    --     select
    --         id
    --     from
    --         Suspect
    --     where
    --         taille > 170
    --         and nom like "B%"
    --         and nom_de_famille like "Gre_n"
    -- )
;

-- sql reponse
select
    id,
    nom,
    nom_de_famille
from
    Suspect
where
    id not in (
        select
            id
        from
            Suspect
        where
            taille > 170
            and nom like "B%"
            and nom_de_famille like "Gre_n"
    );

---------------------------
-- Exercice 8 E13
-- titre
securityBreach -- contenu
Vous gérez un grand site Web qui utilise un algorithme spécial pour l 'identification des utilisateurs, en particulier, il génère un attribut unique pour chaque personne en fonction uniquement de son prénom et de son nom et de certaines métadonnées supplémentaires.

Aujourd' hui,
après avoir analysé les journaux du serveur,
vous avez découvert que la sécurité du site Web avait été violée et que les données de certains de vos utilisateurs pouvaient avoir été compromises.Les informations des utilisateurs sont stockées dans la table des utilisateurs avec la structure suivante: --
--
prenom: prénom de l 'utilisateur;
prenom: nom de famille de l' utilisateur;

attribut: une chaîne d 'attribut unique de cet utilisateur.' --
--
Il semble que seuls les utilisateurs dont l ' attribut a été généré par l ' ancienne version de votre algorithme spécial ont été affectés.> % < zéro ou plusieurs caractères arbitraires >.Il est maintenant de votre devoir d ' avertir' les utilisateurs qui ont ces attributs des risques possibles.Compte tenu de la table des utilisateurs,
composez la table résultante composée uniquement des lignes qui contiennent les informations des utilisateurs concernés.Le résultat doit être trié par les attributs dans l 'ordre croissant.' -- enonce
-- sql creation
--
--
nom prenom attribut Mikel Cover % Mikel_Cover % Vicenta Kravitz 0 % Vicenta_Kravitz % Tosha Cover 02VO1aJ767GF7L186lpIfBR0fQ5406Q02YcpG42LDF4Bv26 Shayne Dahlquist 0R0V331K8Q7ypBi4Az3B6Nm0jCqUk % Shayne_Dahlquist % 46E3O0u7t7 Carrol Llanes 2mDIb1SdJne5wfH1Al32BE92r7j1d60PJ263b2vyPn3zxQ2P7sVOM26J11UT6W0Np Lizabeth Cover d1gM87S0NEHp386jXOk0aDc7w8bx4u8q7D82ff2Z4YT43iLyZ39xYbEDXMk Mack Chace fAnU49nMrmGu308627J7ne3qqqSPJDnq6dwW607lahNB5DinTR2Rkp549G7 Vicenta Marchese kUJ3N67vLB07mQL9Ai7p18cXGzjdT32r8283ZQi Mikel Kravitz PBX86iw1Ied87Z9OarE6sdSLdt % Mikel_Kravitz % W73XOY9YaOgi060r2x12D2EmD7 Deirdre Chace PBX86iw1Ied87Z9OarE6sdSLdtDeirdrelChaceW73XOY9YaOgi060r2x12D2EmD7 Josphine Arzate PwWD95BCKVYn5YD7iHLMa3HjP9tH % josphine_arzate % d2hNHNd3RpqfUREN47 Deirdre Chace ryCE5FIyS8q54A5036luzVS91j6C7P76E9X0O58htzgthuX24LG % DEirdre_Chace % --
--
create table users(
    id int primary key,
    nom varchar(50),
    prenom varchar(50),
    attribut varchar(255)
)
insert into
    users(nom, prenom, attribut)
values
    ('Mikel', 'Cover', '%Mikel_Cover%'),
    ('Vicenta', 'Kravitz', '0%Vicenta_Kravitz%'),
    (
        'Tosha',
        'Cover',
        '02VO1aJ767GF7L186lpIfBR0fQ5406Q02YcpG42LDF4Bv26'
    ),
    (
        'Shayne',
        'Dahlquist',
        '0R0V331K8Q7ypBi4Az3B6Nm0jCqUk%Shayne_Dahlquist%46E3O0u7t7'
    ),
    (
        'Carrol',
        'Llanes',
        '2mDIb1SdJne5wfH1Al32BE92r7j1d60PJ263b2vyPn3zxQ2P7sVOM26J11UT6W0Np'
    ),
    (
        'Lizabeth',
        'Cover',
        'd1gM87S0NEHp386jXOk0aDc7w8bx4u8q7D82ff2Z4YT43iLyZ39xYbEDXMk'
    ),
    (
        'Mack',
        'Chace',
        'fAnU49nMrmGu308627J7ne3qqqSPJDnq6dwW607lahNB5DinTR2Rkp549G7',
        'Vicenta',
        'Marchese',
        'kUJ3N67vLB07mQL9Ai7p18cXGzjdT32r8283ZQi'
    ),
    (
        'Mikel',
        'Kravitz',
        'PBX86iw1Ied87Z9OarE6sdSLdt%Mikel_Kravitz%W73XOY9YaOgi060r2x12D2EmD7'
    ),
    (
        'Deirdre',
        'Chace',
        'PBX86iw1Ied87Z9OarE6sdSLdtDeirdrelChaceW73XOY9YaOgi060r2x12D2EmD7'
    ),
    (
        'Josphine',
        'Arzate',
        'PwWD95BCKVYn5YD7iHLMa3HjP9tH%josphine_arzate%d2hNHNd3RpqfUREN47'
    ),
    (
        'Deirdre',
        'Chace',
        'ryCE5FIyS8q54A5036luzVS91j6C7P76E9X0O58htzgthuX24LG%DEirdre_Chace%'
    );

-- sql depart
select
from
where
order by
;

-- sql reponse
select
    nom,
    prenom,
    attribut
from
    users
where
    attribut REGEXP CONCAT(
        '.%',
        BINARY(nom),
        '_',
        BINARY(prenom),
        '%'
    )
order by
    attribut;

---------------------------
-- Exercice 9 E14
-- titre
testCheck --
-- contenu
Implémentez le code manquant,
indiqué par des points de suspension.Vous ne pouvez pas modifier le code préexistant.Votre professeur a donné à la classe une tâche supplémentaire: Écrivez un programme qui vérifiera les réponses pour le dernier test.Le programme recevra un tableau de réponses avec les colonnes suivantes: --
--
id: l '' identifiant unique de la question;

reponse_correcte :la bonne réponse à la question,
donnée sous forme de chaîne;

reponse_donnee :la réponse donnée à la question,
qui peut être NULL.--
--
--
---
---
---
Votre tâche consiste à renvoyer le tableau avec un identifiant de colonne et une colonne vérifie,
où pour chaque identifiant de réponse,
la chaîne suivante doit être renvoyée: "pas de réponse" si la réponse donnée est vide;

"correct" si la réponse donnée est la même que la réponse correcte;

"incorrect" si la donnée donnée n 'est pas vide et est incorrecte.Triez les enregistrements dans le tableau de réponses par identifiant. --' -- enonce
-- sql creation
id reponse_correcte reponse_donnee 1 a a 2 b NULL 3 c --
--
create table reponses(
    id int primary key,
    reponse_correcte varchar(1),
    reponse_donnee varchar(1)
);

insert into
    reponses(id, reponse_correcte, reponse_donnee)
values
    (1, 'a', 'a'),
    (2, 'b', NULL);

insert into
    reponses(id, reponse_correcte)
values
    (3, 'c');

-- sql depart
SELECT
    id,
    IF (...) AS checks
FROM
    reponses
ORDER BY
    id;

-- sql reponse
CREATE PROCEDURE testCheck()
SELECT
    id,
    IF (
        reponse_donnee is null,
        'no answer',
        if(
            reponse_donnee = reponse_correcte,
            'correct',
            'incorrect'
        )
    ) AS checks
FROM
    reponses
ORDER BY
    id;

---------------------------
-- Exercice 10 E15
-- titre
-- contenu
-- enonce
-- sql creation
-- sql depart
-- sql reponse
---------------------------
-- titre
-- contenu
-- enonce
-- sql creation
-- sql depart
-- sql reponse
---------------------------
-- titre
-- contenu
-- enonce
-- sql creation
-- sql depart
-- sql reponse
---------------------------
-- titre
-- contenu
-- enonce
-- sql creation
-- sql depart
-- sql reponse
---------------------------
-- titre
-- contenu
-- enonce
-- sql creation
-- sql depart
-- sql reponse
== == == = ## Tim Add Exercice
Exercice1: Titre: Liste des projets 
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


### Exercice 3: 
Titre: Bourse d' etude mensuelle Enoncé: Les étudiants de votre université reçoivent des bourses qui sont versées tout au long de l 'année.

Les informations sur les bourses sont stockées dans le tableau des bourses, qui a la structure:

id: l' identifiant unique de l 'élève;
bourse: le montant de la bourse annuelle accordée à l' étudiant.Question: Vous devez maintenant calculer le montant que chaque étudiant devrait recevoir par mois.Compte tenu des bourses de la table,
créez la table résultante comme suit: La table doit avoir les mêmes colonnes que la table initiale,
mais la colonne des bourses doit contenir le montant du versement mensuel de la bourse de l 'étudiant. Les rangées doivent être classées selon les identifiants des élèves.

Exemple: Voici le contenu de la table bourses

		id		bourse
		1		12000
		2		18000
		3		24000	
		4		15000
		5		21000
		6		13000

	--sql creation
	CREATE TABLE bourses(
		id INTEGER,
		bourse INTEGER
	);

	insert into bourses values(1,12000),
		(2,12000),
		(3,18000),
		(4,24000),
		(5,15000),
		(6,21000),
		(7,13000);

Sqldepart:
    SELECT 
        
    FROM 
       
    ORDER BY ;
        

Sqlreponse:
    SELECT 
        id, bourse / 12 as bourse
    FROM 
       bourses
    ORDER BY 
        id;
      
      
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

### Exercice 4: 
Titre: Equipes de projets -- Enoncé :
Vous avez été promu et affecté à un nouveau projet.Le problème est que vous ne savez pas avec qui vous travaillez et que votre prédécesseur a disparu sans laisser de trace ! Heureusement,
chaque projet de votre entreprise conserve sa propre base de données d 'activités que vous allez utiliser pour connaître les noms de vos nouveaux collègues.

Les informations sur l' activité du projet sont stockées dans la table projectLog,
qui a la structure suivante: id: identifiant d 'action unique;
nom: le nom de la personne qui a effectué l' action;

description: la description de l 'action;
horodatage: l' horodatage de l 'action.
Vous n' avez accès qu 'à l' historique le plus récent du projet,
mais cela devrait vous suffire.Vous avez décidé que trouver la meilleure personne pour interagir avec le projet pendant cette période était la meilleure façon de commencer.-- Question :
Étant donné la table projectLog,
créez une nouvelle table de résultats avec une seule colonne de nom qui contient les noms des contributeurs du projet triés par ordre croissant.-- Exemple: 
Voici le contenue de la table projetLog id nom description 1 James Smith ajouter un nouveau logo 2 John Johnson mettre à jour la licence 3 John Johnson corriger les fautes de frappe 4 James Smith mettre à jour le logo 5 James Smith supprimer l ancien logo 6 Michael Williams réparer la construction 7 Mary Troppins ajouter une nouvelle fonctionnalité 8 James Smith corriger les polices 9 Richard Young supprimer les fichiers inutiles 10 Michael Williams ajouter des tests --sql creation
create table projectLog (
    id INTEGER primary key auto_increment,
    nom varchar(200),
    description varchar(250),
    date date
);

insert into
    projectLog
values
    (1, "James Smith", "ajouter un nouveau logo","2019-09-01"),
    (2, "John Johnson", "mettre à jour la licence", "2019-10-01"),
    (
        3,
        "John Johnson",
        "corriger les fautes de frappe",
        "2019-11-01"
    ),
    (4, "James Smith", "mettre à jour le logo", "2019-11-25"),
    (5, "James Smith", "supprimer l ancien logo", "2019-11-25"),
    (6, "Michael Williams", "réparer la construction", "2019-11-26"),
    (
        7,
        "Mary Troppins",
        "ajouter une nouvelle fonctionnalité", "2019-11-29"
    ),
    (8, "James Smith", "corriger les polices", "2019-12-03"),
    (
        9,
        "Richard Young",
        "supprimer les fichiers inutiles", "2019-12-03"
    ),
    (10, "Michael Williams", "ajouter des tests", "2019-12-16"),
    (11, "Amane Hosanna", "composer vos exercices sql", "2019-12-19"),
    (12, "Timoté Akanji", "ajouter plus d'exercices sql", "2019-12-19");

-- Sqldepart:
SELECT
    DISTINCT
FROM
ORDER BY
;

-- Sqlreponse:
SELECT
    DISTINCT nom
FROM
    projectLog
ORDER BY
    nom;