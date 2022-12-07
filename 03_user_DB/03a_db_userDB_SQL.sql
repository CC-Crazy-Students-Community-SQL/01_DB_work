/* USER DB Vers. 1 */

/* 	 
    Passwörter werden hinzugefügt
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
    firstName VARCHAR(30) NOT NULL,
    userPass VARCHAR(40) NOT NULL
);

/* Struktur */
DESCRIBE sandro.users;

/* Daten */
INSERT INTO sandro.users(firstName, lastName, userName, userPass) VALUES 
    ("Josi", "Moe", "josi", "1234"),
    ("Josh", "Foe", "josh", "#7xR3"),
    ("John", "Doe", "john", "qwert")
;

/* show Table */
SELECT * FROM sandro.users;