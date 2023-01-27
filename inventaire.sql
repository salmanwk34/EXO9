CREATE DATABASE IF NOT EXISTS bdd_inventaire CHARACTER SET utf8;
CREATE USER 'test'@'localhost' IDENTIFIED BY 'test';
GRANT ALL PRIVILEGES ON bdd_inventaire.* TO 'test'@'localhost';
USE bdd_inventaire ;
CREATE TABLE IF NOT EXISTS unique_table (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    materiel VARCHAR(100) NOT NULL,
    proprietaire VARCHAR(100) NOT NULL,
	date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    observations TEXT NULL,
	ip VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO unique_table (materiel,proprietaire,ip,observations) VALUES 
('FORTIGATE', 'CLIENT1', '1.0.0.1', 'marche bien'),
('Apple book', 'CLIENT2', '10.0.0.1', 'jetez le!'),
('TP-LINK', 'CLIENT3', '1.9.0.1', 'arreter dacheter du matos pourri'),
('Cisco ip phone', 'CLIENT1', '192.0.0.1', 'marche pas trop mal'),
('PALO ALTO', 'CLIENT3', '27.0.0.1', 'marche bien mais dur aconfigurer'),
('IPHONE', 'CLIENT2', 'inconnue', 'a remplacer par un android');
