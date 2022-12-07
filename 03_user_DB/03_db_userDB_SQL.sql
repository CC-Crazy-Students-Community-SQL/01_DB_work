/* USER DB Vers. 1 */

/* 	 
	erstellen einer User DB
*/

/* DB  Bei mir nur auskommentiert, da ich eine eigene Datenabnk nutze */
    DROP DATABASE IF EXISTS sandro;
    CREATE DATABASE IF NOT EXISTS sandro;

/* show DBs */
    SHOW DATABASES;

/* TABLE */
    DROP TABLE IF EXISTS sandro.users;
    CREATE TABLE IF NOT EXISTS sandro.users(
        id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
        userName VARCHAR(30) NOT NULL UNIQUE,
        lastName VARCHAR(30) NOT NULL,
        firstName VARCHAR(30) NOT NULL
    );

/* Struktur */
    DESCRIBE sandro.users;

/* Daten */
    INSERT INTO sandro.users(firstName, lastName, userName) VALUES ("Josi", "Moe", "josi");
    INSERT INTO sandro.users(firstName, lastName, userName) VALUES ("Josh", "Foe", "josh");
    INSERT INTO sandro.users(firstName, lastName, userName) VALUES ("John", "Doe", "john");

/* show Tables */
    SELECT * FROM sandro.users;