/* ------  User Datenbank erstellen  ----- */

/* Datenbanken löschen wenn vorhanden */
    DROP DATABASE IF EXISTS test03;

/* Datenbanken erzeugen wenn noch nicht vorhanden */
    CREATE DATABASE IF NOT EXISTS test03;

/* Tabelle user anlegen */
    CREATE TABLE IF NOT EXISTS users(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        firstName VARCHAR(30) NOT NULL,
		lastName VARCHAR(30) NOT NULL,
		age INT NOT NULL DEFAULT '0',
    );