/* USER DB Vers. 1 */

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
    ("Josi", "Moe", "josi", SHA1(MD5("1234"))),
    ("Josh", "Foe", "josh", SHA1(MD5("#7xR3"))),
    ("John", "Doe", "john", SHA1(MD5("qwert")))
;
/* show Table */
SELECT * FROM sandro.users;

/* change Table / Structur */
ALTER TABLE sandro.users ADD userPLZ INT(5) NOT NULL DEFAULT 00000;

/* Struktur */
DESCRIBE sandro.users;