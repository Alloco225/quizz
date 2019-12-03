

Insert into quizz VALUES (1,'Requetes simple');
Insert into exercices VALUES (1,'Ecrire une requete pour selectionner toutes les specialités', 5, 'SELECT * FROM specialite', 1 );

Insert into exercices VALUES (2,'Ecrire une requete pour selectionner les spécialités dont le dégré est supérieur à 10', 5, 'SELECT * FROM specialite WHERE degree > 10', 1 );

Insert into tests VALUES (1,'CREATE TABLE specialite (id integer primary key auto_increment, nom_specialite varchar(100), degree integer)',1);


## CORRECTION AKANJI

Insert into quizz (nom) 
  VALUES ('Requètes simples');


Insert into exercices (enonce, note, sql_reponse, id_quizz) 
  VALUES ('Ecrire une requete pour selectionner toutes les specialités', 5, 'SELECT * FROM specialite;', 1 );

Insert into exercices (enonce, note, sql_reponse, id_quizz) 
  VALUES ('Ecrire une requete pour selectionner les spécialités dont le dégré (Colone "degree") est supérieur à 10', 5, 'SELECT * FROM specialite WHERE degree > 10;', 1 );


Insert into tests (table_sql, id_exercice) 
  VALUES ('CREATE TABLE specialite (id integer primary key auto_increment, nom_specialite varchar(100), degree integer);',1);

## VRAI SIDIK

INSERT INTO quizz(nom) VALUES ("Clients et Commandes");

INSERT INTO exercices (enonce, note, sql_reponse,id_quizz) VALUES ("Obtenir l’utilisateur ayant le prénom Muriel et le mot de passe test11, sachant que l’encodage du mot de passe est effectué avec l’algorithme Sha1",1, "SELECT * FROM client WHERE prenom = Muriel AND password = SHA1('test11');", 1);
  
INSERT INTO tests(table_sql, id_exercice) VALUES (
  "CREATE TABLE IF NOT EXISTS `client` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `prenom` varchar(255) NOT NULL,
  `nom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8; 
INSERT INTO `client` (`id`, `prenom`, `nom`, `email`, `ville`, `password`) 
VALUES
(1, 'Flavie', 'Da costa', 'f.da.costa@example.com', 'Pomoy', 'b444ac06613fc8d63795be9ad0beaf55011936ac'),
(2, 'Valentin', 'Vespasien', 'valentin@example.com', 'Buvilly', '109f4b3c50d7b0df729d299bc6f8e9ef9066971f'),
(3, 'Gustave', 'Collin', 'gust@example.com', 'Marseille', '3ebfa301dc59196f18593c45e519287a23297589'),
(4, 'Emilien', 'Camus', 'emilien@example.com', 'Toulouse', '1ff2b3704aede04eecb51e50ca698efd50a1379b'),
(5, 'Firmin', 'Marais', 'firmin.marais@example.com', 'Lyon', '911ddc3b8f9a13b5499b6bc4638a2b4f3f68bf23'),
(6, 'Muriel', 'Dupuis', 'muriel@example.com', 'Paris', '100c4e57374fc998e57164d4c0453bd3a4876a58'),
;", 1);
