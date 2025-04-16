# SQLiteManager Dump
# Version: 1.2.0
# http://www.sqlitemanager.org/
# 
# Serveur: 127.0.0.1
# Généré le: Wednesday 16th 2025f April 2025 10:40 pm
# SQLite Version: 3.3.7undefined
# PHP Version: 5.2.0
# Base de données: test.sqlite3
# --------------------------------------------------------

#
# Structure de la table: accueil
#
CREATE TABLE accueil (
email VARCHAR NOT NULL,
mot_de_passe VARCHAR(15) NOT NULL
);

#
# Contenu de la table: accueil
#
# --------------------------------------------------------


#
# Structure de la table: conges
#
CREATE TABLE conges (
id INT NOT NULL PRIMARY KEY,
id_employeur INT(15) NOT NULL,
type_conges VARCHAR(15) ,
jours_acquis INT(20) ,
jours_pris INT(20) 
);
CREATE INDEX conges_id_employeur ON conges(id_employeur);

#
# Contenu de la table: conges
#
# --------------------------------------------------------


#
# Structure de la table: employes
#
CREATE TABLE employes (
id_employeur INT(15) NOT NULL PRIMARY KEY DEFAULT "0",
nom_et_prenom VARCHAR(15) NOT NULL,
email VARCHAR NOT NULL,
date_de_naissance DATE,
numero_de_telephone INT(8),
poste VARCHAR(15),
departement VARCHAR(15),
mot_de_passe VARCHAR(15) NOT NULL,
confirm_mot_de_passe VARCHAR(15) NOT NULL
);

#
# Contenu de la table: employes
#
# --------------------------------------------------------


#
# Structure de la table: paie
#
CREATE TABLE paie (
salaire_base DECIMAL(10,2),
prime DECIMAL(10,2),
heures_supp DECIMAL(10,2),
retenue_sociale DECIMAL(10,2),
id_employeur INT(15) NOT NULL DEFAULT "0"
);
CREATE INDEX paie_id_employeur ON paie(id_employeur);

#
# Contenu de la table: paie
#
# --------------------------------------------------------


#
# Structure de la table: pointage
#
CREATE TABLE pointage (
nom_et_prenom VARCHAR(15),
poste VARCHAR(15),
email VARCHAR NOT NULL,
telephone INT(8),
date DATE(10,2),
heure DECIMAL,
photo  NOT NULL,
scanne  NOT NULL,
id_employeur VARCHAR(15) NOT NULL DEFAULT ""
);
CREATE INDEX pointage_id_employeur ON pointage(id_employeur);

#
# Contenu de la table: pointage
#
# --------------------------------------------------------

